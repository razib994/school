<?php

namespace App\Http\Controllers;

use App\Models\Assignment;
use App\Models\ClassSubject;
use App\Models\KeyStage;
use App\Models\Notice;
use App\Models\Option;
use App\Models\Question;
use App\Models\Quiz;
use App\Models\QuizAnswer;
use App\Models\QuizAnswerOption;
use App\Models\QuizStudent;
use App\Models\Student;
use App\Models\StudentSubject;
use App\Models\Subject;
use App\Models\User;
use App\Traits\HasPermission;
use App\Traits\QuizQuestionTrait;
use App\Traits\ReportTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class StudentPortalController extends Controller
{
    use HasPermission;
    use QuizQuestionTrait;
    use ReportTrait;

    public function __construct(Request $request)
    {
        $this->page_title       = $request->route()->getName();
        $description            = \Request::route()->getAction();
        $this->page_desc        = isset($description['desc']) ? $description['desc'] : $this->page_title;
    }

    public function index()
    {
        $page_title             = $this->page_title;
        $data['module_name']    = "Dashboard";
        $studentId 		        = Auth::user()->typable_id;
        $student	  	        = Student::find($studentId);
        $data['student']        = $student;

        return view('student-portal.dashboard', array('page_title'=>$page_title,'student'=>$student));
    }

    public function profileIndex(){
        $data['page_title'] = $this->page_title;
        $id 				= Auth::user()->id;
        $user 				= User::find($id);

        $data['user']		= $user;
        /*if($user->student_id){
            $studentCourses = Student::with('courses')->findOrFail($user->student_id);
            $courses 		= $studentCourse->courses;
        }
        $data['courses'] =$courses;*/
        return view('student-portal.student-profile',$data);
    }

    public function profileInfo(){
        $id 			= Auth::user()->id;
        $profile_info 	= User::get()->where('id',$id);
        return  json_encode($profile_info);
    }

    public function updateProfile(Request $request){
        $rule = [
            'first_name' 		=> 'Required|max:220',
            'contact_no' 		=> 'Required|max:13',
            'email' 			=> 'Required|email',
            'user_profile_image'=> 'mimes:jpeg,jpg,png,svg'
        ];
        $validation = Validator::make($request->all(), $rule);
        if ($validation->fails()) {
            $return['result'] = "0";
            $return['message'] = $validation->errors();
            return json_encode($return);
        }
        else{
            if ($request->edit_profile_id != ''){
                #EmailCheck
                $email_verification = User::where([['email',$request->email],['id', '!=', $request->edit_profile_id]])->first();
                if(isset($email_verification->id)){
                    $return['result'] 	= "0";
                    $return['message'][] = $request->email." is already exists";
                    return json_encode($return);
                }
            }
            try{
                DB::beginTransaction();

                $data = [
                    'name'	=> $request->first_name,
                    'contact_no'	=> $request->contact_no,
                    'email'			=> $request->email,
                    'remarks'		=> $request->remarks,
                ];

                //if admin user Image provided
                $admin_image = $request->file('user_profile_image');
                if (isset($admin_image)){
                    $image_name 				= time();
                    $ext 						= $admin_image->getClientOriginalExtension();
                    $image_full_name 			= $image_name.'.'.$ext;
                    $upload_path 				= 'assets/images/user/admin/';
                    $success					= $admin_image->move($upload_path,$image_full_name);
                    $data['user_profile_image'] = $image_full_name;
                }

                $user 		= User::find($request->edit_profile_id);
                $old_image 	= $user->user_profile_image;
                if (isset($admin_image) && $old_image!="") {
                    $delete_img = $upload_path.$old_image;
                    unlink($delete_img);
                }

                $user->update($data);

                DB::commit();
                $return['result'] = "1";
                return json_encode($return);
            }
            catch (\Exception $e){
                DB::rollback();
                $return['result'] 	= "0";
                $return['message'][] ="Faild to save";
                return json_encode($return);
            }
        }
    }

    public function updatePassword(Request $request){
        $rule = [
            //  'current_password' => 'Required|max:255',
            'new_password' => 'Required|max:255',
            'confirm_password' => 'Required|max:255',
        ];
        $validation = Validator::make($request->all(), $rule);
        if ($validation->fails()) {
            $return['result'] = "0";
            $return['errors'] = $validation->errors();
            return json_encode($return);
        }
        else{
            try{
                DB::beginTransaction();
                $id = $request->change_pass_id;
                $user = User::find($id);
                if ($request->new_password == $request->confirm_password) {
                    $user->password = bcrypt($request->new_password);
                    $user->update();
                    DB::commit();
                    $return['result'] = "1";
                    return json_encode($return);
                }else{
                    $return['result'] = "0";
                    $return['errors'][] ="Wrong Password..!";
                    return json_encode($return);
                }
            }
            catch (\Exception $e){
                DB::rollback();
                $return['result'] = "0";
                $return['errors'][] =$e." Faild to save";
                return json_encode($return);
            }
        }
    }

    public function quizzesList(){
        $page_title             = $this->page_title;
        $data['module_name']    = "Quizzes";
        $studentId              = \Auth::user()->typable_id;
        $total                  = 0;
        $quizStudentCount       = QuizStudent::where('student_id',$studentId)->where('assignment_id', NULL)->count();
        $quizStudentPending     = QuizStudent::where('student_id',$studentId)->where('retake','No')->where('attempt',0)->where('assignment_id', NULL)->count();
        $quizStudentScore       = QuizStudent::where('student_id',$studentId)->where('assignment_id', NULL)->where('count', 'Yes')->sum('score');
        if($quizStudentCount-$quizStudentPending == 0){
            if($quizStudentCount==''){
                $calculateScore = 0;
            }else {
                $calculateScore = number_format((($quizStudentScore/$quizStudentCount)),2);
            }
        }else {

            $calculateScore = number_format((($quizStudentScore/($quizStudentCount-$quizStudentPending))),2);
        }
        $studentSubjects    = StudentSubject::with('class_subjects.subjects')->where('status','Active')->where('student_id',$studentId)->get();
        return view('student-portal.quiz-list',['studentSubjects' => $studentSubjects, 'count'=>$quizStudentCount, 'pendding'=>$quizStudentPending, 'calculateScore'=>$calculateScore], array('page_title'=>$page_title,$data));
    }

    public function subjectQuiz($id){
        $subjectId      = $id;
        $studentId      = Auth::user()->typable_id;

        $subjectQuezzes = QuizStudent::with('quiz', 'quiz.quiz_students','quiz.subjects')
                        ->whereHas('quiz', function($q) use($subjectId){
                            $q->where('subject_id', $subjectId);
                        })
                        ->where('student_id', $studentId)->where('assignment_id', NULL)
                        ->get();
        $total = 0;
        foreach ($subjectQuezzes as $subjectquiz){
            $quziStudentAssign = QuizStudent::where('quiz_id',$subjectquiz->quiz_id)->where('assignment_id', NULL)->count();
            $quziStudentAttend = QuizStudent::where('quiz_id',$subjectquiz->quiz_id)->where('assignment_id', NULL)->where('attempt',1)->count();
            $total = number_format((($quziStudentAttend/$quziStudentAssign) * 100),2);
        }
        return json_encode(array('quizSubjects'=>$subjectQuezzes, 'totalattend'=>$total));
    }

    public function quizzesDetails($id){
        $page_title             = $this->page_title;
        $data['module_name']    = "Quiz Attend";
        $currentQuestionId      = '';
        $quizStudent            = QuizStudent::with('quiz','quiz.subjects','quiz.classes','quiz.classes.keyStages','quiz.topic')->where('id',$id)->first();
        if(!is_null($quizStudent) && !empty($quizStudent)) {
            $quizAnswers = QuizAnswer::with('question')->where('quiz_student_id', $quizStudent->id)->get();
            return view('student-portal.quiz-details', ['current_question_id' => $currentQuestionId, 'quizStudent' => $quizStudent, 'quizAnswers' => $quizAnswers], array('page_title' => $page_title,'id' => $quizStudent->student_id, $data));
        } else {
            return redirect()->back();
        }
    }

    public function quizButton($id){
        $studentId              = Auth::user()->typable_id;
        $quizStudent            = QuizStudent::where('id',$id)->where('student_id',$studentId)->first();
        return json_encode(array('quizStudent'=>$quizStudent));
    }

    public function quizAttendDataInfo($id){
        if($id){
            $quizStudent        = QuizStudent::with('quiz_answers')->where('id',$id)->first();
        }else {
            $quizStudent        = QuizStudent::with('quiz_answers')->where('id',$id)->first();
        }
        $quizNoAnswer = 0;
        $quizWrong = 0;
        $quizSkipped = 0;
        $quizRight = 0;
        foreach ($quizStudent->quiz_answers as $quizanswerCount){
            $quizNoAnswer   = $quizanswerCount->where('quiz_student_id',$id)->where('answer','No Answer')->count();
            $quizWrong      = $quizanswerCount->where('quiz_student_id',$id)->where('answer','Wrong')->count();
            $quizSkipped    = $quizanswerCount->where('quiz_student_id',$id)->where('answer','Skipped')->count();
            $quizRight      = $quizanswerCount->where('quiz_student_id',$id)->where('answer','Right')->count();
        }

        return json_encode(array('quizStudent'=>$quizStudent,'noAnswer'=>$quizNoAnswer,'wrong'=>$quizWrong,'skipped'=>$quizSkipped,'right'=>$quizRight));
    }

    public function quizQuestionAnswerInfo($id){
        $studentId              = Auth::user()->typable_id;
        //$quizstudent = QuizStudent::where('id',$id)->where('student_id',$studentId)->first();
        $quizAnswers            = QuizAnswer::with('question')->where('answered','Yes')
                ->where('quiz_student_id',$id)
                ->orderBy('question_id', 'ASC')->get();
        return json_encode(array('quizAnswers'=>$quizAnswers));
    }

    public function startQuiz($studentQuizId)
    {
        $quizStudent = QuizStudent::where('id',$studentQuizId)->first();
        if($quizStudent->attempt <= 0){
            $this->quizStudentUpdate($studentQuizId);
            $this->quizAnswerFieldCreate($studentQuizId);
        }
        // check whatever the quiz started or not
        // start the quiz
        // insert all the question to answer table ( asc by serial wise)
        // load the 1st question id
        $currentQuestionId = $this->loadCurrentQuestionId($studentQuizId);
        $this->showQuestionInstanteUpdate($studentQuizId, $currentQuestionId);
        return json_encode(array('currentQuestionId'=>$currentQuestionId));
    }

    public function retakeQuiz($studentQuizId){
        $quizStudent        = QuizStudent::where('id',$studentQuizId)->first();
        if($quizStudent->attempt == 1){
            $quizStudent->count = 'No';
            $quizStudent->update();
            $quizStudentId  = $this->quizStudentCreate($studentQuizId);
            $this->quizAnswerFieldCreate($quizStudentId);
        }
            $currentQuestionId = $this->loadCurrentQuestionId($quizStudentId);


        return json_encode(array('currentQuestionId'=>$currentQuestionId, 'quizStudentId'=>$quizStudentId));
    }

    public function quizQuestionShow($currentQuestionId, $quizStudentId){
        $quiztype      = Question::find($currentQuestionId);
        if($quiztype->type =='Match pair' || $quiztype->type =='Match pair image'){
            $quizQuestion      = Question::with(['options'=> function ($query) {
                $query->orderBy(DB::raw('RAND()'));
            }])->find($currentQuestionId);
            $quizQuestionNotRandom   = Question::with('options')->find($currentQuestionId);
        }else if ($quiztype->type =='Ordering'){
            $quizQuestion      = Question::with(['options'=> function ($query) {
                    $query->orderBy(DB::raw('RAND()'));
                }])->find($currentQuestionId);
            $quizQuestionNotRandom = '';
        } else {
            $quizQuestion      = Question::with('options')->find($currentQuestionId);
            $quizQuestionNotRandom = '';
        }

        $quizAnswerCount   = QuizAnswer::where('quiz_student_id',$quizStudentId)->count();
        $this->calculateScore($quizQuestion->id, $quizStudentId);
        $this->showQuestionInstanteUpdate($quizStudentId, $currentQuestionId);
        return json_encode(array('quizQuestion'=>$quizQuestion, 'quizQuestionNotRandom'=>$quizQuestionNotRandom, 'quizAnswerCount'=>$quizAnswerCount));
    }

    public function quizFinishedInformation($quizStudentId){
        $quizStudent            = QuizStudent::with('quiz_answers','quiz')->where('id',$quizStudentId)->first();
        foreach ($quizStudent->quiz_answers as $quizanswerCount){
            $quizquestionNumber = $quizanswerCount->where('quiz_student_id',$quizStudentId)->where('retake','No')->count();
            $quizNoAnswer       = $quizanswerCount->where('quiz_student_id',$quizStudentId)->where('answer','No Answer')->count();
            $quizWrong          = $quizanswerCount->where('quiz_student_id',$quizStudentId)->where('answer','Wrong')->count();
            $quizSkipped        = $quizanswerCount->where('quiz_student_id',$quizStudentId)->where('answer','Skipped')->count();
            $quizRight          = $quizanswerCount->where('quiz_student_id',$quizStudentId)->where('answer','Right')->count();
            $retake             = $quizanswerCount->where('quiz_student_id',$quizStudentId)->where('retake','Yes')->count();
        }
        return json_encode(array('quizStudentInfo'=>$quizStudent, 'noAnswer'=>$quizNoAnswer, 'wrong'=>$quizWrong, 'skipped'=>$quizSkipped, 'right'=>$quizRight, 'retake'=>$retake, 'quizquestionNumber'=>$quizquestionNumber ));
    }

    public function quizAnswerSkipped($currentQuestionId, $quizStudentId){
        $this->skippedQuizAnswer($quizStudentId, $currentQuestionId);
        $quizAnswer         = QuizAnswer::where('quiz_student_id', $quizStudentId)->where('question_id', '>',$currentQuestionId)->first();
        $this->quizQuestionShow($quizAnswer->question_id,$quizStudentId);
        return json_encode(array('quizanswerquestion'=>$quizAnswer->question_id));
    }

    public function quizAnswerSubmit(Request $request, $currentQuestionId, $quizStudentId)
    {
        $quizAnswer             = QuizAnswer::where('quiz_student_id', $quizStudentId)->where('question_id', $currentQuestionId)->where('answer','No Answer')->first();
        if ($request['type'] == 'Multiple choice') {
            $studentQuizAnswers     = $request['question_option_id'];
            $questionOptionAnswers  = Option::select('id')->where('is_answer', 1)->where('question_id', $currentQuestionId)->get()->toArray();
            $answer = true;
            foreach ($studentQuizAnswers as $key => $studentQuizAnswerId) {
                $option = Option::where('id',$studentQuizAnswerId)->first();
                if (in_array($studentQuizAnswerId, $questionOptionAnswers[$key])) {
                    $quizAnswerOption                   = new QuizAnswerOption();
                    $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                    $quizAnswerOption->question_answer  = $option->question_option_title;
                    $quizAnswerOption->answer           = 'Right';
                    $quizAnswerOption->save();
                } else {
                    $quizAnswerOption                   = new QuizAnswerOption();
                    $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                    $quizAnswerOption->question_answer   = $option->question_option_title;
                    $quizAnswerOption->answer           = 'Wrong';
                    $quizAnswerOption->save();
                    $answer = false;
                }
            } if ($answer == 'true') {
                if (count($studentQuizAnswers) != count($questionOptionAnswers))
                    $answer = false;
            }
            $quizAnswerUpdateReturn = $this->quizAnswerUpdate($request, $answer, $currentQuestionId, $quizStudentId);
            $this->calculateScore($currentQuestionId, $quizStudentId);
        }
        else if ($request['type'] == 'Picture choice') {
            $studentQuizAnswers     = $request['question_option_id'];
            $questionOptionAnswers  = Option::select('id')->where('is_answer', 1)->where('question_id', $currentQuestionId)->get()->toArray();
            $answer = true;
            foreach ($studentQuizAnswers as $key => $studentQuizAnswerId) {
                $option = Option::where('id',$studentQuizAnswerId)->first();
                if (in_array($studentQuizAnswerId, $questionOptionAnswers[$key])) {
                    $quizAnswerOption                   = new QuizAnswerOption();
                    $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                    $quizAnswerOption->question_answer  = $option->question_option_title;
                    $quizAnswerOption->answer           = 'Right';
                    $quizAnswerOption->save();
                } else {
                    $quizAnswerOption                   = new QuizAnswerOption();
                    $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                    $quizAnswerOption->question_answer   = $option->question_option_title;
                    $quizAnswerOption->answer           = 'Wrong';
                    $quizAnswerOption->save();
                    $answer = false;
                }
            } if ($answer == 'true') {
                if (count($studentQuizAnswers) != count($questionOptionAnswers))
                    $answer = false;
            }
            $quizAnswerUpdateReturn = $this->quizAnswerUpdate($request, $answer, $currentQuestionId, $quizStudentId);
            $this->calculateScore($currentQuestionId, $quizStudentId);
        }
        else if ($request['type'] == 'Single Choice') {
            $studentQuizAnswers     = $request['question_option_id'];
            $questionOptionAnswers  = Option::select('id')->where('is_answer', 1)->where('question_id', $currentQuestionId)->get()->toArray();
            $answer = true;
            foreach ($studentQuizAnswers as $key => $studentQuizAnswerId) {
                $option = Option::where('id',$studentQuizAnswerId)->first();
                if (in_array($studentQuizAnswerId, $questionOptionAnswers[$key])) {

                    $quizAnswerOption = new QuizAnswerOption();
                    $quizAnswerOption->quiz_answer_id = $quizAnswer->id;
                    $quizAnswerOption->question_answer   = $option->question_option_title;
                    $quizAnswerOption->answer = 'Right';
                    $quizAnswerOption->save();
                } else {
                    $quizAnswerOption = new QuizAnswerOption();
                    $quizAnswerOption->quiz_answer_id = $quizAnswer->id;
                    $quizAnswerOption->question_answer   = $option->question_option_title;
                    $quizAnswerOption->answer = 'Wrong';
                    $quizAnswerOption->save();
                    $answer = false;
                }
            }
            if ($answer == 'true') {
                if (count($studentQuizAnswers) != count($questionOptionAnswers))
                    $answer = false;
            }
            $quizAnswerUpdateReturn = $this->quizAnswerUpdate($request, $answer, $currentQuestionId, $quizStudentId);
            $this->calculateScore($currentQuestionId, $quizStudentId);

        }
        else if ($request['type'] == 'True/false') {
                $studentQuizAnswer          = $request['question_option_id'];
                $questionOptionAnswer       = Option::where('id',$studentQuizAnswer)->where('question_id', $currentQuestionId)->first();
            $answer = true;
                if (($questionOptionAnswer->is_answer == 1 && $questionOptionAnswer->question_option_title == 'True') OR ($questionOptionAnswer->is_answer == 1 && $questionOptionAnswer->question_option_title == 'False')){
                $quizAnswerOption                   = new QuizAnswerOption();
                $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                $quizAnswerOption->question_answer   = $questionOptionAnswer->question_option_title;
                $quizAnswerOption->answer           = 'Right';
                $quizAnswerOption->save();
                $answer = true;
            } else {
                $quizAnswerOption                   = new QuizAnswerOption();
                $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                $quizAnswerOption->question_answer   = $questionOptionAnswer->question_option_title;
                $quizAnswerOption->answer           = 'Wrong';
                $quizAnswerOption->save();
                $answer = false;
            }
            $quizAnswerUpdateReturn =  $this->quizAnswerUpdate($request, $answer, $currentQuestionId, $quizStudentId);
                $this->calculateScore($currentQuestionId, $quizStudentId);
        }
        else if ($request['type'] == 'Free text') {
            $studentQuizAnswer          = $request['question_option_id'];
            $questionOptionAnswer       = Option::where('question_id', $currentQuestionId)->first();
            $answer = true;
            if ($studentQuizAnswer == $questionOptionAnswer->is_answer){
                $quizAnswerOption                   = new QuizAnswerOption();
                $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                $quizAnswerOption->question_answer   = $studentQuizAnswer;
                $quizAnswerOption->answer           = 'Right';
                $quizAnswerOption->save();
                $answer = true;
            } else {
                $quizAnswerOption                   = new QuizAnswerOption();
                $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                $quizAnswerOption->question_answer   = $studentQuizAnswer;
                $quizAnswerOption->answer           = 'Wrong';
                $quizAnswerOption->save();
                $answer = false;
            }
            $quizAnswerUpdateReturn = $this->quizAnswerUpdate($request, $answer, $currentQuestionId, $quizStudentId);
            $this->calculateScore($currentQuestionId, $quizStudentId);
        }
        else if ($request['type'] == 'Ordering') {
            $studentQuizAnswers     = $request['question_option_id'];
            $studentQuizAnswersImplode = implode(' ',$studentQuizAnswers);
            $questionOptionAnswers  = Option::select('question_option_title')->where('question_id', $currentQuestionId)->get();
            $sql_val = array();
            foreach ($questionOptionAnswers as $key => $value) {
                $sql_val[] = $value->question_option_title;
            }
            $questionOptionAnswersImplode = implode(' ',$sql_val);
            $answer = true;
            if($studentQuizAnswersImplode == $questionOptionAnswersImplode){
                foreach ($studentQuizAnswers as $key => $studentQuizAnswerId) {
                        $quizAnswerOption                   = new QuizAnswerOption();
                        $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                        $quizAnswerOption->question_answer  = $studentQuizAnswerId;
                        $quizAnswerOption->answer           = 'Right';
                        $quizAnswerOption->save();
                }
            } else {
                foreach ($studentQuizAnswers as $key => $studentQuizAnswerId) {
                    $quizAnswerOption                   = new QuizAnswerOption();
                    $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                    $quizAnswerOption->question_answer  = $studentQuizAnswerId;
                    $quizAnswerOption->answer           = 'Wrong';
                    $quizAnswerOption->save();
                    $answer = false;
                }
            }
//             if ($answer == 'true') {
//                if (count($studentQuizAnswers) != count($questionOptionAnswers))
//                    $answer = false;
//            }
            $quizAnswerUpdateReturn = $this->quizAnswerUpdate($request, $answer, $currentQuestionId, $quizStudentId);
            $this->calculateScore($currentQuestionId, $quizStudentId);
        }
        else if ($request['type'] == 'Match pair') {
            $studentQuizAnswers     = $request['is_answer'];
            $studentQuizAnswersImplode = implode(' ',$studentQuizAnswers);
            $questionOptionAnswers  = Option::select('is_answer')->where('question_id', $currentQuestionId)->get();
            $sql_val = array();
            foreach ($questionOptionAnswers as $key => $value) {
                $sql_val[] = $value->is_answer;
            }
            $questionOptionAnswersImplode = implode(' ',$sql_val);
            $answer = true;
            if($studentQuizAnswersImplode == $questionOptionAnswersImplode){
                foreach ($studentQuizAnswers as $key => $studentQuizAnswerId) {
                    $quizAnswerOption                   = new QuizAnswerOption();
                    $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                    $quizAnswerOption->question_answer  = $studentQuizAnswerId;
                    $quizAnswerOption->answer           = 'Right';
                    $quizAnswerOption->save();
                }
            } else {

                foreach ($studentQuizAnswers as $key => $studentQuizAnswerId) {
                    $quizAnswerOption                   = new QuizAnswerOption();
                    $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                    $quizAnswerOption->question_answer  = $studentQuizAnswerId;
                    $quizAnswerOption->answer           = 'Wrong';
                    $quizAnswerOption->save();
                    $answer = false;
                }
            }
//             if ($answer == 'true') {
//                if (count($studentQuizAnswers) != count($questionOptionAnswers))
//                    $answer = false;
//            }
            $quizAnswerUpdateReturn = $this->quizAnswerUpdate($request, $answer, $currentQuestionId, $quizStudentId);
            $this->calculateScore($currentQuestionId, $quizStudentId);
        }
        else if ($request['type'] == 'Graph') {
            $studentQuizAnswers     = $request['is_answer'];

            $studentQuizAnswersImplode = implode(' ',$studentQuizAnswers);
            $questionOptionAnswers  = Option::select('is_answer')->where('question_id', $currentQuestionId)->get();
            $sql_val = array();
            foreach ($questionOptionAnswers as $key => $value) {
                $sql_val[] = $value->is_answer;
            }
            $questionOptionAnswersImplode = implode(' ',$sql_val);

            $answer = true;
            if($studentQuizAnswersImplode == $questionOptionAnswersImplode){
                foreach ($studentQuizAnswers as $key => $studentQuizAnswerId) {
                    $quizAnswerOption                   = new QuizAnswerOption();
                    $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                    $quizAnswerOption->question_answer  = $studentQuizAnswerId;
                    $quizAnswerOption->answer           = 'Right';
                    $quizAnswerOption->save();
                }
            } else {
                foreach ($studentQuizAnswers as $key => $studentQuizAnswerId) {
                    $quizAnswerOption                   = new QuizAnswerOption();
                    $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                    $quizAnswerOption->question_answer  = $studentQuizAnswerId;
                    $quizAnswerOption->answer           = 'Wrong';
                    $quizAnswerOption->save();
                    $answer = false;
                }
            }
//             if ($answer == 'true') {
//                if (count($studentQuizAnswers) != count($questionOptionAnswers))
//                    $answer = false;
//            }
            $quizAnswerUpdateReturn =  $this->quizAnswerUpdate($request, $answer, $currentQuestionId, $quizStudentId);
            $this->calculateScore($currentQuestionId, $quizStudentId);
        }
        else if ($request['type'] == 'Match pair image') {
            $studentQuizAnswers     = $request['is_answer'];
            $studentQuizAnswersImplode = implode(' ',$studentQuizAnswers);
            $questionOptionAnswers  = Option::select('is_answer')->where('question_id', $currentQuestionId)->get();
            $sql_val = array();
            foreach ($questionOptionAnswers as $key => $value) {
                $sql_val[] = $value->is_answer;
            }
            $questionOptionAnswersImplode = implode(' ',$sql_val);
            $answer = true;
            if($studentQuizAnswersImplode == $questionOptionAnswersImplode){
                foreach ($studentQuizAnswers as $key => $studentQuizAnswerId) {
                    $quizAnswerOption                   = new QuizAnswerOption();
                    $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                    $quizAnswerOption->question_answer  = $studentQuizAnswerId;
                    $quizAnswerOption->answer           = 'Right';
                    $quizAnswerOption->save();
                }
            } else {

                foreach ($studentQuizAnswers as $key => $studentQuizAnswerId) {
                    $quizAnswerOption                   = new QuizAnswerOption();
                    $quizAnswerOption->quiz_answer_id   = $quizAnswer->id;
                    $quizAnswerOption->question_answer  = $studentQuizAnswerId;
                    $quizAnswerOption->answer           = 'Wrong';
                    $quizAnswerOption->save();
                    $answer = false;
                }
            }
//             if ($answer == 'true') {
//                if (count($studentQuizAnswers) != count($questionOptionAnswers))
//                    $answer = false;
//            }
            $quizAnswerUpdateReturn = $this->quizAnswerUpdate($request, $answer, $currentQuestionId, $quizStudentId);
            $this->calculateScore($currentQuestionId, $quizStudentId);
        }
        else if ($request['type'] == 'Fill in the blanks'){
                $studentQuizAnswers          = $request['question_option_id'];
                $questionOptionAnswers       = Option::where('question_id', $currentQuestionId)->get()->toArray();
                $answer = true;
                foreach ($studentQuizAnswers as $key => $studentQuizAnswerId) {
                    if (in_array($studentQuizAnswerId, $questionOptionAnswers[$key])) {
                        $quizAnswerOption = new QuizAnswerOption();
                        $quizAnswerOption->quiz_answer_id = $quizAnswer->id;
                        $quizAnswerOption->question_answer   = $studentQuizAnswerId;
                        $quizAnswerOption->answer = 'Right';
                        $quizAnswerOption->save();
                    } else {
                        $quizAnswerOption = new QuizAnswerOption();
                        $quizAnswerOption->quiz_answer_id = $quizAnswer->id;
                        $quizAnswerOption->question_answer   = $studentQuizAnswerId;
                        $quizAnswerOption->answer = 'Wrong';
                        $quizAnswerOption->save();
                        $answer = false;
                    }
                }
                if ($answer == 'true') {
                    if (count($studentQuizAnswers) != count($questionOptionAnswers))
                        $answer = false;
                }
                $quizAnswerUpdateReturn = $this->quizAnswerUpdate($request, $answer, $currentQuestionId, $quizStudentId);
                $this->calculateScore($currentQuestionId, $quizStudentId);
        }

         $quizFinishedorNot     = $this->quizFinishedOrNOt($quizStudentId, $request);
         $quizAnswerId          = QuizAnswer::where('quiz_student_id', $quizStudentId)->where('question_id', '>', $currentQuestionId)->first();
         if($quizFinishedorNot == 0){
             $return =0;
             $this->quizQuestionShow($quizAnswerId->question_id, $quizStudentId);
             $quizanswerquestionId =  $quizAnswerId->question_id;
         }
         else {
             $return    = 1;
             $quizAnswerIdFinish = QuizAnswer::where('quiz_student_id', $quizStudentId)->where('question_id', $currentQuestionId)->first();
             $quizanswerquestionId =  $quizAnswerIdFinish->question_id;

             // get assignment id
             if($quizAnswerUpdateReturn !=0 and $quizAnswerUpdateReturn!='Finished')
             {
                 $quizStudents   = QuizStudent::where('assignment_id',$quizAnswerUpdateReturn)->where('status','!=','Finished')->first();
                 if(empty($quizStudents)){
                     $assignment = Assignment::where('id',$quizAnswerUpdateReturn)->first();
                     $assignment->completed_status = 'Yes';
                     $assignment->update();
                 }
             }
         }
         if($quizAnswerUpdateReturn == 'Finished') {
             $this->quizFinishedOrNOt($quizStudentId);
         }
        return json_encode(array('quizanswerquestionId' =>$quizanswerquestionId, 'finish' => $return, 'answer'=>$answer));
    }

    public function quizAnswerReSubmit($currentQuestionId, $quizStudentId){
        $quizAnswer = new QuizAnswer();
        $quizAnswer->quiz_student_id     = $quizStudentId;
        $quizAnswer->question_id         = $currentQuestionId;
        $quizAnswer->answer_date         = date("Y-m-d h:i:sa");
        $quizAnswer->answered            = 'Yes';
        $quizAnswer->answer              = 'No Answer';
        $quizAnswer->mark                = 0;
        $quizAnswer->retake              = 'Yes';
        $quizAnswer->save();
        $quizanswerquestionId = $quizAnswer->question_id;
        return json_encode(array('quizanswerquestionId' =>$quizanswerquestionId,'quizAnswerId'=>$quizAnswer->id));
    }

    public function quizAllQuestionFinished($quizStudentId){
        $quizAnswers = QuizAnswer::where('quiz_student_id', $quizStudentId)->get();
        foreach ($quizAnswers as $quizAnswer) {
            $quizAnswer->answered  = 'Yes';
            $quizAnswer->update();
        }
        $quizStudent = QuizStudent::find($quizStudentId);
        $quizStudent->status = 'Finished';
        $quizStudent->update();
        $quizStudent    = QuizStudent::where('id',$quizStudentId)->first();
        if($quizStudent->assignment_id){
            $assignment             = Assignment::where('id',$quizStudent->assignment_id)->where('is_exam','Yes')->first();
            $assignment->taken_time = '00:00:00';
            $assignment->final_score = ($assignment->final_score + 0);
            $quizStudents = QuizStudent::where('assignment_id',$quizStudent->assignment_id)->get();
            foreach ($quizStudents as $quizStudent){
                if($quizStudent->is_taken == 'Yes' && $quizStudent->status == 'Finished'){
                    $quizStudents->completed_status = 'Yes';
                }
            }
            $assignment->update();
        }

        return json_encode(array('all'=>'all'));
    }

    public function quizQuestionResultShow($quizAnswerId){

        $quizAnswerQuestionResultShow = QuizAnswer::with('question.options','quiz_answer_options')->find($quizAnswerId);

        return json_encode(array('quizAnswerQuestionResultShow'=>$quizAnswerQuestionResultShow));
    }

    public function rankingIndex(){
        $page_title             = $this->page_title;
        $data['module_name']    = "Ranking";
        return view("ranking.index", array('page_title'=>$page_title,$data));
    }

    public function rankingList(){
        $students = Student::where('school_id', Auth::user()->school_id)->with('school','quiz_students')->get();
        $return_arr = array();
        $i = 1;
        foreach ($students as $student){
            $total = QuizStudent::where('student_id',$student->id)->where('retake','No')->avg('score');
            $data['number']  = $i++;
            $data['name']    = $student->first_name;
            $data['marks']   = ($total == null) ? 0:number_format($total,2);
            $data['school_name'] = $student->school->name;
            $return_arr[] = $data;
        }
        return json_encode(array('data' => $return_arr));
    }

    public function messageIndex(){
        $page_title             = $this->page_title;
        $data['module_name']    = "Message";
        return view("student-portal.message.message", array('page_title'=>$page_title,$data));
    }

    public function noticeIndex(){
        $page_title             = $this->page_title;
        $data['module_name']    = "Notice";
        return view("student-portal.notice.index", array('page_title'=>$page_title,$data));
    }

    public function reportsIndex(){
        $page_title             = $this->page_title;
        $data['module_name']    = "Report";
        $keyStage               = KeyStage::where('status','Active')->get();
        return view("student-portal.report.report",array('keyStages' => $keyStage,'page_title'=>$page_title,$data));
    }

    public function reportsShowlist(Request $request){
        $userid             = Auth::user()->id;
        $st_id = User::where('type','Student')->where('id',$userid)->first();
        $f_id =$st_id->typable_id;

        $report_school_id   = Session::get('report_school_id');
        $reportcondition    ='';
        if($report_school_id != "")
            $reportcondition .= " And st.school_id = '".$report_school_id."'";
        if($request->form_date != "")
            $reportcondition .= " And q.created_at >='".$request->form_date."'";
        if($request->to_date != "")
            $reportcondition .= " And q.created_at <='".$request->to_date."'";
        if($request->year_name != "")
            $reportcondition .= " And qz.year_id >='".$request->year_name."'";
        if($request->class_name != "")
            $reportcondition .= " And qz.class_id >='".$request->class_name."'";

        $sqls = "SELECT AVG(score) AS score , A.first_name, A.last_name, A.id AS quiz_student_id,  student_id,
                SUM(total_time) AS total_time,  u.updated_at AS last_access_time, subject_id, subject_name, 0 as total_quiz
                FROM
                (
                    SELECT score, st.first_name, st.last_name,subject_id,subject_name, q.id, q.student_id, SUM(TIME_TO_SEC(ifnull(quiz_take_duration,0))) AS  total_time
                    FROM quiz_students q
                    LEFT JOIN students st ON st.id = q.student_id
                    LEFT JOIN quizzes qz ON qz.id=q.quiz_id
                    LEFT JOIN  subjects sj on sj.id=qz.subject_id
                    LEFT JOIN classes c ON c.id=  qz.class_id
                    LEFT JOIN key_stages k ON k.id = qz.year_id
                    WHERE
                    /*qs.student_id=2	AND*/
                    assignment_id IS NULL   AND score>0
                    GROUP BY subject_id, quiz_id
                    ORDER BY quiz_id DESC
                )A
                LEFT JOIN users u ON  u.typable_id = A.student_id
                WHERE student_id='$f_id' AND score>0 AND total_time>0
                GROUP BY  subject_id";
        $students = DB::select($sqls);
        $return_arr = array();
        foreach ($students as $student) {
            $total_time = $this->timeHoureMinitesSec($student->total_time);
            $data['name']                 = '<a href="'.url("portal/quiz-report/".$student->subject_id).'">'.$student->subject_name.'</a>';
            $data['total_time']           = $total_time;
            $data['avg_score']            = $student->score."%";
            $return_arr[]                 = $data;
        }
        $date  = [
            'from_date'=>$request->from_date,
            'to_date'=>$request->to_date,
        ];
        return json_encode(array('data' => $return_arr, 'dates'=>$date));
    }

    public function noticeShowList(){
        $admin_user_id       = Auth::user()->id;
        $school_id           = Auth::user()->school_id;
        $edit_action_id      = 122; //  edit
        $delete_action_id    = 120; //  delete
        $edit_permission     = $this->PermissionHasOrNot($admin_user_id, $edit_action_id);
        $delete_permission   = $this->PermissionHasOrNot($admin_user_id, $delete_action_id);

        $notices     = Notice::where('school_id',$school_id)->orderBy('created_at', 'desc')->get();
        $return_arr = array();

        foreach ($notices as $notice) {
            $data['actions']                = "";
            $data['title']                  = $notice->title;
            $data['notice_category_id']     = $notice->notice_category->category_name;
            $data['notice_date']            = $notice->notice_date;
            $data['expire_date']            = $notice->expire_date;
            $data['actions']                = "<button title='View' onclick='noticeView(" . $notice->id . ")' id='view_" . $notice->id . "' class='btn btn-xs btn-info' ><i class='lnr-eye'></i></button>&nbsp;";

            $return_arr[] = $data;
        }

        return json_encode(array('data' => $return_arr));
    }

    public function noticeDetails($id){
        if ($id == "") return 0;
        $notice     = Notice::findOrFail($id);
        return json_encode(array('notice' => $notice));
    }

    public function quizReport($id){
        $page_title 	        = $this->page_title;
        $data['module_name']	= "Report";
        $data['sub_module']		= "Student Quiz Report";
        $keyStage               = KeyStage::where('status','Active')->get();
        return view('student-portal.report.quizzes-report',['keyStages' => $keyStage, 'id'=>$id,'page_title'=>$page_title,$data]);
        }

    public function quizReportList(Request $request, $id){
        $student_id = Auth::user()->typable_id;
        $report_school_id   = Session::get('report_school_id');
        $reportcondition ='';
        if($report_school_id != "")
            $reportcondition .= " And st.school_id = '".$report_school_id."'";
        if($request->from_date != "")
            $reportcondition .= " And q.created_at >='".$request->from_date."'";
        if($request->to_date != "")
            $reportcondition .= " And q.created_at <='".$request->to_date."'";
        if($request->year_name != "")
            $reportcondition .= " And qz.year_id >='".$request->year_name."'";
        if($request->class_name != "")
            $reportcondition .= " And qz.class_id <='".$request->class_name."'";
        if($request->subject_name != "")
            $reportcondition .= " And qz.subject_id >='".$request->subject_name."'";

        $sql = "SELECT score, SUM(TIME_TO_SEC(quiz_take_duration)) AS total_time, st.first_name,
                st.last_name, q.id, q.student_id, subject_id, subject_name, u.updated_at, quiz_id, qz.title
                FROM quiz_students q
                LEFT JOIN students st ON st.id = q.student_id
                LEFT JOIN quizzes qz ON qz.id=q.quiz_id
                LEFT JOIN  subjects sj on sj.id=qz.subject_id
                LEFT JOIN classes c ON c.id=  qz.class_id
                LEFT JOIN key_stages k ON k.id = qz.year_id
                LEFT JOIN users u ON u.typable_id=q.student_id
                WHERE
                q.student_id='$student_id' AND subject_id='$id' AND
                assignment_id IS NULL AND score>0
                GROUP BY quiz_id
                ORDER BY quiz_id DESC";
        $quizSqls = DB::select($sql);

        $return_arr = array();
        foreach ($quizSqls as $quiz) {
            $total_time =$this->timeHoureMinitesSec($quiz->total_time);
            $data['name']                 = '<a href="'.url('portal/quiz-and-student-wise-details', [ 'id' => $quiz->quiz_id]).'">'.$quiz->title.'</a>';
            $data['total_student']        = $quiz->updated_at;
            $data['total_time']           = $total_time;
            $scorehtml                    = ($quiz->score < 50) ? 'danger':'success';
            $data['avg_score']            = '<div class=" progress">
                                                <div class="progress-bar progress-bar-animated progress-bar-striped bg-'.$scorehtml.'" role="progressbar" aria-valuenow="'.$quiz->score.'" aria-valuemin="0" aria-valuemax="100" style="width: '.$quiz->score.'%;">'.$quiz->score.'%</div>
                                            </div>';
            $return_arr[] = $data;
        }
        $date  = [
            'from_date'=>$request->from_date,
            'to_date'=>$request->to_date,
        ];
        return json_encode(array('data' => $return_arr, 'dates'=>$date));
    }

    public function quizStudentReport($id){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Quiz Student Report";
        $data['sub_module']		= "Quiz Student Report";
        $user_id = Auth::user()->id;
        $st_id = User::where('id',$user_id)->where('type','Student')->first();
        $st_f_id = $st_id->typable_id;
        $quizSQLs  = "SELECT qs.created_at, qs.quiz_take_duration, ROUND(score,2) as score, qs.id  quiz_student_id
                        FROM  quiz_students qs
                        LEFT JOIN quizzes q ON q.id = qs.quiz_id
                        WHERE qs.student_id ='$st_f_id' AND qs.quiz_id =$id AND assignment_id IS NULL ORDER BY qs.id DESC";
        $quizstudentReport = DB::select($quizSQLs);

        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 145;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission']= $add_permission;
        return view('student-portal.report.quiz-student-report',['studentSubjectQuizStudents'=>$quizstudentReport], $data);
    }

    public function quizStudentReportShows($id){
        $quizStudents = QuizStudent::with('quiz','quiz_answers','quiz_answers.question')->where('id',$id)->first();
        foreach ($quizStudents->quiz_answers as $quizanswerCount){
            $quizNoAnswer   = $quizanswerCount->where('quiz_student_id',$id)->where('answer','No Answer')->count();
            $quizWrong      = $quizanswerCount->where('quiz_student_id',$id)->where('answer','Wrong')->count();
            $quizSkipped    = $quizanswerCount->where('quiz_student_id',$id)->where('answer','Skipped')->count();
            $quizRight      = $quizanswerCount->where('quiz_student_id',$id)->where('answer','Right')->count();
        }
        return json_encode(['quizstudents' => $quizStudents, 'noAnswer'=>$quizNoAnswer,'wrong'=>$quizWrong,'skipped'=>$quizSkipped,'right'=>$quizRight]);

    }

}
