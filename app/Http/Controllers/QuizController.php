<?php

namespace App\Http\Controllers;

use App\Jobs\questionAudioUploaderJob;
use App\Jobs\questionImageUploaderJob;
use App\Jobs\quizAttachmentUploaderJob;
use App\Models\Classe;
use App\Models\ClassSubject;
use App\Models\KeyStage;
use App\Models\Option;
use App\Models\Question;
use App\Models\Quiz;
use App\Models\QuizStudent;
use App\Models\Student;
use App\Models\Topic;
use App\Traits\HasPermission;
use App\Traits\StudentNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class QuizController extends Controller
{
    use HasPermission;
    use StudentNotification;

    public function __construct(Request $request)
    {
        $this->page_title   = $request->route()->getName();
        $description        = \Request::route()->getAction();
        $this->page_desc    = isset($description['desc']) ? $description['desc'] : $this->page_title;
    }

    public function index(){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Quiz";
        $data['sub_module']		= "Quizes";

        $keyStage               = KeyStage::where('status','Active')->get();

        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 132;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id );
        $data['actions']['add_permission']= $add_permission;
        return view('quiz.index',['keyStages' => $keyStage,],$data);
    }

    public function showList(Request $request){
        $admin_user_id 		= Auth::user()->id;
        $school_id 		    = Auth::user()->school_id;
        $edit_action_id 	= 133;
        $delete_action_id 	= 134;
        $edit_permission 	= $this->PermissionHasOrNot($admin_user_id,$edit_action_id);
        $delete_permission 	= $this->PermissionHasOrNot($admin_user_id,$delete_action_id);

            /*
            $quizSQL = Quiz::where('school_id',$school_id)->with('subjects','classes.keyStages','topic');

                    if($request->year_name != "default"){
                        $year_name = $request->year_name;
                        $quizSQL->whereHas("year", function($query) use($year_name) {
                            $query->where('id',$year_name);
                        });
                    }
            */


        $quiz = Quiz::where('school_id',$school_id)->with('subjects','classes.keyStages','topic');
        if($request->year_name != "")
            $quiz->where('year_id','=',$request->year_name);
        if($request->class_name != "")
            $quiz->where('class_id','=', $request->class_name);
        if($request->subject_name != "")
            $quiz->where('subject_id','=',$request->subject_name);
//        if($request->topic_title != "")
//            $quiz->where('topic_id','=',$request->topic_title);
        $quizes = $quiz->orderBy('id','desc')->get();
//        key_stage year_name subject_name topic_title
//        $quizes
        $return_arr = array();
        foreach($quizes as $quiz){
            $data['status'] 	    = ($quiz->status == 'Active')?"<button class='btn btn-xs btn-success' disabled>Active</button>":"<button class='btn btn-xs btn-danger' disabled>Inactive</button>";
            $data['title'] 		    = $quiz->title;
            $data['year_name'] 		= $quiz->classes->keyStages->name;
            $data['class_name']     = $quiz->classes->name;
            $data['subject_name'] 	= $quiz->subjects->subject_name;
//            $data['topic_name']     = "bd";
            $data['total_mark']     = $quiz->total_marks;
            $data['total_question'] = $quiz->total_question;
            $data['actions'] =" <button title='View' onclick='quizView(".$quiz->id.")' id='view_" . $quiz->id . "' class='btn btn-xs btn-info admin-user-view'><i class='lnr-eye'></i></button>&nbsp;";
            if($edit_permission>0){
                $data['actions'] .="<button onclick='quizEdit(".$quiz->id.")' id=edit_" . $quiz->id . "  class='btn btn-xs btn-primary module-edit'><i class='lnr-pencil'></i></button>";
                $data['actions'] .="<button onclick='questionAdd(".$quiz->id.")' id=add_" . $quiz->id . "  class='btn btn-xs btn-success module-add ml-1'><i class='fa fa-plus'></i></button>";
            }
            if ($delete_permission>0) {
                $data['actions'] .=" <button onclick='quizDelete(".$quiz->id.")' id='delete_" . $quiz->id . "' class='btn btn-xs btn-danger'><i class='fa fa-trash'></i></button>";
            }
            $return_arr[] = $data;
        }
        return json_encode(array('data'=>$return_arr));
    }

    public function quizCreateOrEdit(Request $request){
        $admin_user_id      = Auth::user()->id;
        $add_permission     = $this->PermissionHasOrNot($admin_user_id, 132);
        $update_permission  = $this->PermissionHasOrNot($admin_user_id, 133);

        if(!is_null($request->input('edit_id')) && $request->input('edit_id') != "" && $update_permission){
            $response_data  = $this->editQuiz($request->all(), $request->input('edit_id'));
        }
        else if($add_permission) {
            $response_data = $this->createQuiz($request->all()); // new entry
        } else {
            $return['result'] = 0;
            $return['errors'] = "You are not authorized to insert a Admin";
            $response_data = json_encode($return);
        }
        return $response_data;
    }

    private function createQuiz ($request) {

        $schoolID = Auth::user()->school_id;
        try {
            $rule = [
                'title'             => 'Required',
                'year_id'           => 'Required',
                'class_id'          => 'Required|max:18',
                'subject_id'        => 'Required|string',
            ];
            $validation = Validator::make($request, $rule);
            if ($validation->fails()) {
                $return['result'] = 0;
                $return['message'] = "Failed to save !";
                return json_encode($return);
            } else {
                DB::beginTransaction();
                $topicId = (isset($request['topic_id'])) ? $request['topic_id']:0;
                $quiz = new Quiz();
                $quiz->school_id        = $schoolID;
                $quiz->year_id          = $request['year_id'];
                $quiz->class_id         = $request['class_id'];
                $quiz->subject_id       = $request['subject_id'];
                $quiz->topic_id         = $topicId;
                $quiz->title            = $request['title'];
                $quiz->instruction      = $request['instruction'];
                $quiz->total_question   = 0;
                $quiz->total_marks      = 0;
                $quiz->created_by       = Auth::user()->id;
                $quiz->remote_media_file_link = $request['remote_media_file_link'];
                $quiz->publisher        = (isset($request['is_checked'])) ? 'Published' : 'Unpublished';
                $quiz->status           = (isset($request['is_active'])) ? 'Active' : 'Inactive';
                $quiz->save();


               $attach = (isset($request['attachment']) && $request['attachment']!= "")?$request['attachment']:"";
                if ($attach!="") {
                    $ext                    = $attach->getClientOriginalExtension();
                    $pathFullName           = time().$attach->getClientOriginalName();
                    $uploadPath             = 'assets/images/quiz/';
                    $success                = $attach->move($uploadPath, $pathFullName);
                    dispatch(new quizAttachmentUploaderJob($pathFullName, $quiz->id));
                }
                DB::commit();
                $return['result']    = 1;
                $return['message']   = "Quiz saved successfully";
                $return['id']        = $quiz->id;
                return json_encode($return);
            }

        } catch (\Exception $e) {
            DB::rollback();
            $return['result'] = 0;
            $return['message'] = "Failed to save !" . $e->getMessage();
            return json_encode($return);
        }
    }

    private function editQuiz($request, $id){
        try {
            if ($id == "") {
                throw new \Exception('Invalid request!');
            }
            $quiz = Quiz::findOrFail($id);
            $rule = [
                'title'             => 'Required',
                'year_id'           => 'Required',
                'class_id'          => 'Required|max:18',
                'subject_id'        => 'Required|string',
                'topic_id'          => 'Required',
            ];
            $validation = Validator::make($request, $rule);
            if ($validation->fails()) {
                $return['result'] = 0;
                $return['message'] = "Failed to save !";
                return json_encode($return);
            } else {
                DB::beginTransaction();
                $quiz->school_id                = Auth::user()->school_id;
                $quiz->year_id                  = $request['year_id'];
                $quiz->class_id                 = $request['class_id'];
                $quiz->subject_id               = $request['subject_id'];
                $quiz->topic_id                 = $request['topic_id'];
                $quiz->title                    = $request['title'];
                $quiz->instruction              = $request['instruction'];
                $quiz->created_by               = Auth::user()->id;
                $quiz->remote_media_file_link   = $request['remote_media_file_link'];
                $quiz->status                   = (isset($request['is_active'])) ? 'Active' : 'Inactive';
                $quiz->publisher                = (isset($request['is_checked'])) ? 'Published' : 'Unpublished';
                $quiz->update();

                $attach = (isset($request['attachment']) && $request['attachment']!= "")?$request['attachment']:"";
                if ($attach!="") {
                    $ext                    = $attach->getClientOriginalExtension();
                    $pathFullName           = time().$attach->getClientOriginalName();
                    $uploadPath             = 'assets/images/quiz/';
                    $success                = $attach->move($uploadPath, $pathFullName);
                    $oldPath = $quiz->attachment;
                    if ( $oldPath != "") {
                        $deletePath      = $uploadPath . $oldPath;
                        unlink($deletePath);
                    }
                    $quiz->attachment   = $pathFullName;
                    $quiz->update();
                }

                DB::commit();
                $return['result']       = 1;
                $return['message']      = "Quiz Update successfully";
                return json_encode($return);
            }

        } catch (\Exception $e) {
            DB::rollback();
            $return['result']   = 0;
            $return['message']  = "Failed to save !" . $e->getMessage();
            return json_encode($return);
        }
    }

    public function showQuizOrQuestion($id)
    {
        $school_id = Auth::user()->school_id;
        if ($id == "") return 0;

        $quiz   = Quiz::where('school_id',$school_id)->with('subjects','classes','classes.keyStages','topic','questions','questions.options','quiz_students.student','quiz_students.quiz')
//                      ->whereHas('students', function($q) use ($school_id) {
//                      $q->where('school_id', $school_id);
//                      })
            ->with(['students' => function ($q) use ($school_id) {
                            $q->where('school_id', $school_id);
                        }])->find($id);



        $years      = Classe::where('key_stage_id',$quiz->year_id)->get();      // all years of the quize's keystage =1
        $subjects   = ClassSubject::with('subjects')->where('class_id',$quiz->class_id)->get();
        $topics     = Topic::where('subject_id',$quiz->subject_id)->get();
        return json_encode(array('quiz' => $quiz, 'years' => $years, 'subjects' => $subjects, 'topics' => $topics));
    }

    public function destroy($id){
        if ($id == "") { return json_encode(array('result' => 0, 'message' => "Invalid Request! ")); }
        $quiz       = Quiz::findOrFail($id);
        $question   = Question::where('quiz_id',$quiz->id)->count();
        try {
            DB::beginTransaction();
            if($question>0){
                $return['message'] = "Deletation is not possible, but Active the Question";
            }else {
                $quiz->delete();
                $return['message'] = "Delete the Quiz";
            }
            DB::commit();
            $return['result']   = 1;
            return json_encode($return);

        } catch (\Exception $e) {
            DB::rollback();
            $return['result']   = 0;
            $return['message']  = "Failed to delete !" . $e->getMessage();
            return json_encode($return);
        }
    }

    public function getClassSubjectTopic(Request $request){
        if($request['class_subject_topic_id']){
            $topics     = Topic::where('subject_id',$request['class_subject_topic_id'])->get();
            $quizes     = Quiz::where('subject_id',$request['class_subject_topic_id'])->with('subjects','classes.keyStages','topic')->where('status','Active')->get();
        }
        return json_encode(array('topics' => $topics, 'quizes'=>$quizes));
    }

    public function questionCreateOrEdit(Request $request){
        $admin_user_id      = Auth::user()->id;
        $add_permission     = $this->PermissionHasOrNot($admin_user_id, 132);
        $update_permission  = $this->PermissionHasOrNot($admin_user_id, 133);

        if(!is_null($request->input('edit_question_id')) && $request->input('edit_question_id') != "" && $update_permission){
            $response_data = $this->editQuestion($request->all(), $request->input('edit_question_id'));
        }
        else if($add_permission) {
            $response_data = $this->createQuestion($request->all()); // new entry
        } else {
            $return['result'] = 0;
            $return['errors'] = "You are not authorized to insert a Admin";
            $response_data = json_encode($return);
        }
        return $response_data;
    }

    private function createQuestion ($request) {

        $question = Question::where('quiz_id',$request['quiz_id'])->latest('serial')->first();
        if($question){
            $serial = ($question->serial =='' || $question->serial ==null) ? 1 : ($question->serial + 1);
        }else {
            $serial = 1;
        }
        try {
            $rule = [
                'question_detail'   => 'required',
                'mark'              => 'required',
            ];
            $validation = Validator::make($request, $rule);
            if ($validation->fails()) {
                $return['result'] = 0;
                $return['message'] = "Failed to save !";
                return json_encode($return);
            } else {

//                if($request['type'] == 'Match pair image'){
//                    $type = 'Match pair';
//                }else {
//                    $type = $request['type'];
//                }
                DB::beginTransaction();
                $question = Question::create([
                    'quiz_id'               => $request['quiz_id'],
                    'question_detail'       => $request['question_detail'],
                    'mark'                  => $request['mark'],
                    'type'                  => $request['type'],
                    'serial'                => $serial,
                    'status'                => (isset($request['is_active'])) ? 'Active' : 'Inactive'
                ]);

                $photo = (isset($request['image']) && $request['image']!= "")?$request['image']:"";
                if ($photo!="") {
                    $ext                    = $photo->getClientOriginalExtension();
                    $photoFullName          = time().$photo->getClientOriginalName();
                    $uploadPath             = 'assets/images/question/';
                    $success                = $photo->move($uploadPath, $photoFullName);
                    $question = Question::where('id', $question->id)->first();
                    $question->image = $photoFullName;
                    $question->save();
                }

                $audio = (isset($request['audio']) && $request['audio']!= "")?$request['audio']:"";
                if ($audio!="") {
                    $ext                    = $audio->getClientOriginalExtension();
                    $audioFullName          = time().$audio->getClientOriginalName();
                    $uploadPath             = 'assets/images/audio/';
                    $success                = $audio->move($uploadPath, $audioFullName);
                    $question = Question::where('id',$question->id)->first();
                    $question->audio = $audioFullName;
                    $question->save();
                }

                $totalMarkQuestion = Quiz::where('id', $request['quiz_id'])->first();
                    $mark           = $totalMarkQuestion->total_marks;
                    $totalmark      = $mark + $question->mark;
                    $totalquestion  = $totalMarkQuestion->total_question;
                    $finaltotalquestion = $totalquestion + 1;
                    $totalMarkQuestion->total_marks     = $totalmark;
                    $totalMarkQuestion->total_question  = $finaltotalquestion;
                    $totalMarkQuestion->update();
                if($question->id) {
                    $option = Option::createquestionOptions($request, $question->id);
                    if($option == false){
                        throw new \Exception('Question Option Create Fail!');
                    }
                } else {
                    throw new \Exception('Question information Not Found!');
                }
                DB::commit();
                $return['id']        = $request['quiz_id'];
                $return['result']    = 1;
                $return['message']   = "Question saved successfully";
                return json_encode($return);
            }
        } catch (\Exception $e) {
            DB::rollback();
            $return['result']   = 0;
            $return['message']  = "Failed to save !" . $e->getMessage();
            return json_encode($return);
        }
    }

    private function editQuestion($request, $id){
        try {
            if ($id == "") {
                throw new \Exception('Invalid request!');
            }
            $question = Question::findOrFail($id);
            $serial = $question->serial;
            $rule = [
                'question_detail'   => 'Required',
                'mark'              => 'Required',
            ];

            $validation = Validator::make($request, $rule);
            if ($validation->fails()) {
                $return['result'] = 0;
                $return['message'] = "Failed to save !";
                return json_encode($return);
            } else {

                DB::beginTransaction();
                $question->quiz_id            = $request['quiz_id'];
                $question->question_detail    = $request['question_detail'];
                $question->mark               = $request['mark'];
                $question->type               = $request['type'];
                $question->serial             = $serial;
                $question->status             = (isset($request['is_active'])) ? 'Active' : 'Inactive';
                $question->update();

                $photo = (isset($request['image']) && $request['image']!= "")?$request['image']:"";
                if ($photo!="") {
                    $ext                    = $photo->getClientOriginalExtension();
                    $photoFullName          = time().$photo->getClientOriginalName();
                    $uploadPath             = 'assets/images/question/';
                    $success                = $photo->move($uploadPath, $photoFullName);

                    $oldImage = $question->image;
                    if ( $oldImage != "") {
                        $deleteImg = $uploadPath . $oldImage;
                        unlink($deleteImg);
                    }
                    $question->image        = $photoFullName;
                    $question->update();
                }
                $audio = (isset($request['audio']) && $request['audio']!= "")?$request['audio']:"";
                if ($audio!="") {
                    $ext                    = $audio->getClientOriginalExtension();
                    $audioFullName          = time().$audio->getClientOriginalName();
                    $uploadPath             = 'assets/images/audio/';
                    $success                = $audio->move($uploadPath, $audioFullName);

                    $oldAudio       = $question->audio;
                    if ( $oldAudio  != "") {
                        $deleteAudio = $uploadPath . $oldAudio;
                        unlink($deleteAudio);
                    }
                    $question->audio = $audioFullName;
                    $question->update();
                }
                if($question->id) {
                    $option = Option::editquestionOptions($request, $question->id);
                    if($option == false){
                        throw new \Exception('Question Option Create Fail!');
                    }
                } else { throw new \Exception('Question information Not Found!'); }

                DB::commit();
                $return['id']           = $request['quiz_id'];
                $return['result']       = 1;
                $return['message']      = "Question Update successfully";
                return json_encode($return);
            }

        } catch (\Exception $e) {
            DB::rollback();
            $return['result']   = 0;
            $return['message']  = "Failed to save !" . $e->getMessage();
            return json_encode($return);
        }
    }

    public function showQuestionList($id) {
        if ($id == "") return 0;
        $question   = Question::with('options')->Orderby('serial', 'ASC')->findOrFail($id);
        return json_encode(array('questions' => $question));
    }

    public function questionDestroy($id){
        if ($id == "") { return json_encode(array('result' => 0, 'message' => "Invalid Request! ")); }

        $question = Question::findOrFail($id);
        try {
            DB::beginTransaction();
            if($question){
                $question->delete();
                Option::where('question_id', $question->id)->delete();
            }
            DB::commit();
            $return['result'] = 1;
            return json_encode($return);

        } catch (\Exception $e) {
            DB::rollback();
            $return['result'] = 0;
            $return['message'] = "Failed to delete !" . $e->getMessage();
            return json_encode($return);
        }
    }

    public function studentAssignCreateOrEdit(Request $request){
        $admin_user_id      = Auth::user()->id;
        $add_permission     = $this->PermissionHasOrNot($admin_user_id, 132);
        $update_permission  = $this->PermissionHasOrNot($admin_user_id, 133);

        if(!is_null($request->input('edit_question_id')) && $request->input('edit_question_id') != "" && $update_permission){
            $response_data = $this->editStudentAssign($request->all(), $request->input('edit_question_id'));
        }
        else if($add_permission) {
            $response_data = $this->createStudentAssign($request->all());
        } else {
            $return['result'] = 0;
            $return['errors'] = "You are not authorized to insert a Admin";
            $response_data = json_encode($return);
        }
        return $response_data;
    }

    private function createStudentAssign($request){
        try {
            $rule = [
                'quiz_id'   => 'Required',
            ];
            $validation = Validator::make($request, $rule);
            if ($validation->fails()) {
                $return['result'] = 0;
                $return['message'] = "Failed to save !";
                return json_encode($return);
            } else {
                DB::beginTransaction();
                foreach ($request['student_id'] as $key => $studentId) {

                     QuizStudent::create([
                        'quiz_id'               => $request['quiz_id'],
                        'student_id'            => $studentId,
                        'assign_date'           => date("Y-m-d h:i:sa"),
                        'score'                 => '0',
                    ]);
                $this->quizzesNotificationConfirm($studentId, $request['quiz_id']);
                }
                DB::commit();
                $return['id']        = $request['quiz_id'];
                $return['result']    = 1;
                $return['message']   = "Question saved successfully";
                return json_encode($return);
            }
        } catch (\Exception $e) {
            DB::rollback();
            $return['result']   = 0;
            $return['message']  = "Failed to save !" . $e->getMessage();
            return json_encode($return);
        }
    }

    public function assignmentQuizDetails($id){
            $data['page_title'] 	= $this->page_title;
            $data['module_name']	= "Quiz";
            $data['sub_module']		= "Quizes";

            $keyStage               = KeyStage::where('status','Active')->get();

            $admin_user_id  		= Auth::user()->id;
            $add_action_id  		= 132;
            $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id );
            $data['actions']['add_permission']= $add_permission;
            return view('quiz.index',['keyStages' => $keyStage,'id_quiz'=>$id],$data);

    }
}
