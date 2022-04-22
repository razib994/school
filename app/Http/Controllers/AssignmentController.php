<?php

namespace App\Http\Controllers;

use App\Models\Assignment;
use App\Models\AssignmentQuiz;
use App\Models\AssignmentStudent;
use App\Models\Classe;
use App\Models\Quiz;
use App\Models\QuizStudent;
use App\Models\Student;
use App\Models\StudentSubject;
use App\Notification\newStudentCreated;
use App\Traits\HasPermission;
use App\Traits\StudentNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class AssignmentController extends Controller
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
        $data['module_name']	= "Assignment";
        $data['sub_module']		= "Assignment List";
        $classes                = Classe::where('status','Active')->get();

        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 140;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['add_permission']= $add_permission;
        return view('assignment.index', ['classes' => $classes], $data);
    }

    public function showList(){
        $admin_user_id 		= Auth::user()->id;
        $edit_action_id 	= 141;
        $delete_action_id 	= 142;
        $edit_permission 	= $this->PermissionHasOrNot($admin_user_id,$edit_action_id);
        $delete_permission 	= $this->PermissionHasOrNot($admin_user_id,$delete_action_id);

        $assignmetns = Assignment::where('school_id',Auth::user()->school_id)->get();
        $return_arr = array();
        foreach($assignmetns as $assignmetn){
            $exam = ($assignmetn->is_exam =='Yes') ? "<span class='badge badge-success'> Exam </span>":"";
            //$data['status'] 	    = ($quiz->status == 'Active')?"<button class='btn btn-xs btn-success' disabled>Active</button>":"<button class='btn btn-xs btn-danger' disabled>Inactive</button>";
            $data['title'] 		    = $assignmetn->title.' '.$exam;
            $data['available_from'] = $assignmetn->available_from;
            $data['deadline']       = $assignmetn->deadline;
            $data['quiz_time_limit']= $assignmetn->quiz_time_limit;
            $data['actions']        =" <button title='View' onclick='assignmentView(".$assignmetn->id.")' id='view_" . $assignmetn->id . "' class='btn btn-xs btn-info admin-user-view'><i class='lnr-eye'></i></button>&nbsp;";
            if($edit_permission>0){
                $data['actions']    .="<button onclick='assignmentEdit(".$assignmetn->id.")' id=edit_" . $assignmetn->id . "  class='btn btn-xs btn-primary module-edit'><i class='lnr-pencil'></i></button>";
            }
            if ($delete_permission>0) {
                $data['actions']    .=" <button onclick='assignmentDelete(".$assignmetn->id.")' id='delete_" . $assignmetn->id . "' class='btn btn-xs btn-danger'><i class='fa fa-trash'></i></button>";
            }
            $return_arr[] = $data;
        }
        return json_encode(array('data'=>$return_arr));
    }

    public function createOrEdit(Request $request){
        $admin_user_id      = Auth::user()->id;
        $add_permission     = $this->PermissionHasOrNot($admin_user_id, 140);
        $update_permission  = $this->PermissionHasOrNot($admin_user_id, 141);

        if(!is_null($request->input('edit_id')) && $request->input('edit_id') != "" && $update_permission){
            $response_data = $this->editAssignment($request->all(), $request->input('edit_id'));
        }
        else if($add_permission) {
            $response_data = $this->createAssignment($request->all()); // new entry
        } else {
            $return['result'] = 0;
            $return['errors'] = "You are not authorized to insert a Admin";
            $response_data = json_encode($return);
        }
        return $response_data;
    }

    private function createAssignment($request){
        $school_ids =Auth::user()->school_id;
        try {
            $rule = [
                'title'   => 'Required',
            ];
            $validation = Validator::make($request, $rule);
            if ($validation->fails()) {
                $return['result'] = 0;
                $return['message'] = "Failed to save !";
                return json_encode($return);
            } else {
                $is_exam = (isset($request['is_exam'])) ? 'Yes':'NO';
                DB::beginTransaction();
                 $assignment = new Assignment();
                 $assignment->title                 = $request['title'];
                 $assignment->available_from        = $request['available_from'];
                 $assignment->deadline              = $request['deadline'];
                 $assignment->quiz_time_limit       = $request['quiz_time_limit'];
                 $assignment->question_time_limit   = $request['question_time_limit'];
                 $assignment->is_exam               = $is_exam;
                 $assignment->final_score           = (isset($request['final_score'])) ? $request['final_score'] : 0;
                 $assignment->taken_time            = (isset($request['taken_time'])) ? $request['taken_time'] : '00:00:00'; ;
                 $assignment->completed_status      = (isset($request['completed_status'])) ? 'NO' : 'Yes';
                 $assignment->created_by            = Auth::user()->id;
                 $assignment->multiple_attampt      = (isset($request['multiple_attampt'])) ? 'Yes' : 'No';
                 $assignment->save();

                 if($assignment->id){
                     Assignment::findOrFail($assignment->id);
                     $assignment->school_id              = $school_ids;
                     $assignment->update();

                     foreach ($request['quiz_ids'] as $key => $quiz){
                         AssignmentQuiz::create([
                             'quiz_id'           => $quiz,
                             'assignment_id'     => $assignment->id,
                         ]);
                         foreach ($request['student_ids'] as $key => $studentId){
                             QuizStudent::create([
                                 'quiz_id'               => $quiz,
                                 'assignment_id'         => $assignment->id,
                                 'student_id'            => $studentId,
                                 'assign_date'           => date("Y-m-d h:i:sa"),
                                 'score'                 => '0',
                             ]);
                         }
                     }
                 }
                foreach ($request['student_ids'] as $key => $studentId){
                    AssignmentStudent::create([
                        'student_id'            => $studentId,
                        'assignment_id'         => $assignment->id,
                    ]);

                    $this->assignmentNotificationConfirm($assignment->id, $studentId);
                }
                DB::commit();
                $return['id']        = $assignment->id;
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

    private function editAssignment($request, $id){
        $school_ids =Auth::user()->school_id;
        try {
            if ($id == "") { throw new \Exception('Invalid request!'); }
            $assignment = Assignment::findOrFail($id);
            AssignmentQuiz::where('assignment_id', $id)->delete();
            AssignmentStudent::where('assignment_id', $id)->delete();
            $rule = [
                'title'             => 'Required',
                'available_from'    => 'Required',
                'deadline'          => 'Required|max:18',
                'quiz_time_limit'   => 'Required|string',
            ];
            $validation = Validator::make($request, $rule);
            if ($validation->fails()) {
                $return['result'] = 0;
                $return['message'] = "Failed to save !";
                return json_encode($return);
            } else {
                DB::beginTransaction();
                $assignment->title                  = $request['title'];
                $assignment->available_from         = $request['available_from'];
                $assignment->deadline               = $request['deadline'];
                $assignment->quiz_time_limit        = $request['quiz_time_limit'];
                $assignment->question_time_limit    = $request['question_time_limit'];
                $assignment->school_id              = $school_ids;
                $assignment->created_by             = Auth::user()->id;
                $assignment->is_exam                = (isset($request['is_exam'])) ? 'NO' : 'Yes';
                $assignment->final_score            = (isset($request['final_score'])) ? $request['final_score'] : 0;
                $assignment->taken_time             = (isset($request['taken_time'])) ? $request['taken_time'] : '00:00:00'; ;
                $assignment->completed_status       = (isset($request['completed_status'])) ? 'NO' : 'Yes';
                $assignment->multiple_attampt       = (isset($request['multiple_attampt'])) ? 'Yes' : 'No';
                $assignment->update();

                if($assignment->id){
                    foreach ($request['quiz_ids'] as $key => $quiz){
                        AssignmentQuiz::create([
                            'quiz_id'           => $quiz,
                            'assignment_id'     => $assignment->id,
                        ]);
                    }

                    foreach ($request['student_ids'] as $key => $studentId){
                        AssignmentStudent::create([
                            'student_id'            => $studentId,
                            'assignment_id'         => $assignment->id,
                        ]);

                    }

                }


                DB::commit();
                $return['result']       = 1;
                $return['message']      = "Assignment Update successfully";
                return json_encode($return);
            }
        } catch (\Exception $e) {
            DB::rollback();
            $return['result']   = 0;
            $return['message']  = "Failed to save !" . $e->getMessage();
            return json_encode($return);
        }

    }

    public function show($id){
        if ($id == "") return 0;
        $assignment   = Assignment::with('assignmentQuizes.quiz.subjects','assignmentQuizes.quiz.classes','assignmentQuizes.quiz.topic','assignmentQuizes.quiz.classes.keyStages','assignmentStudents.student')->findOrFail($id);
        return json_encode(array('assignments' => $assignment));
    }

    public function destroy($id){
        if ($id == "") { return json_encode(array('result' => 0, 'message' => "Invalid Request! ")); }

        $assignment = Assignment::findOrFail($id);
        try {
            DB::beginTransaction();
            if($assignment){
                $assignment->delete();
                AssignmentStudent::where('assignment_id', $assignment->id)->delete();
                AssignmentQuiz::where('assignment_id', $assignment->id)->delete();
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

    public function getTopicQuizes(Request $request){
        if($request['topic_id']){
            $quizes     = Quiz::where('topic_id',$request['topic_id'])->with('subjects','classes.keyStages','topic')->where('status','Active')->get();
        }
        return json_encode(array('quizes' => $quizes));
    }

    public function getStudentQuizesAssignment(Request $request){

        if($request['student_class_id']){
            $students     = Student::where('class_id', $request['student_class_id'])->where('status','Active')->get();
        }
        return json_encode(array('students' => $students));
    }

    public function adminIndex($id){
        $page_title             = $this->page_title;
        $data['module_name']    = "Assignments";
        $studentId              = $id;

        $total                  = 0;
        $quizStudentCount       = QuizStudent::where('student_id',$studentId)->where('quiz_id', 0)->where('assignment_id','!=', NULL)->count();
        $quizStudentPending     = QuizStudent::where('student_id',$studentId)->where('assignment_id','!=', NULL)->where('attempt',0)->count();
        $quizStudentScore       = QuizStudent::where('student_id',$studentId)->where('assignment_id','!=', NULL)->sum('score');

        if($quizStudentCount-$quizStudentPending == 0){
            $calculateScore     = number_format((($quizStudentScore/$quizStudentCount)),2);
        } else {
            $calculateScore     = number_format((($quizStudentScore/($quizStudentCount-$quizStudentPending))),2);
        }
        $studentSubjects        = StudentSubject::with('class_subjects.subjects')->where('status','Active')->where('student_id',$studentId)->get();
        return view('student-portal.assignment-list',['studentSubjects' => $studentSubjects, 'count'=>$quizStudentCount, 'pendding'=>$quizStudentPending, 'calculateScore'=>$calculateScore], array('page_title'=>$page_title,'studentId'=>$studentId,$data));

    }

    public function quizzesSubjectAssignment($id){
        $studentId              = $id;
        //  $quizStudent = QuizStudent::where('student_id',$studentId)->where('assignment_id','!=',NULL)->where('is_taken','Yes')->count();
        $sql = "SELECT   ass.id AS assignment_id, ass.title,deadline,available_from, asss.student_id, count(qs.id) AS quiz_numbers, AVG(qs.score) AS score,
                sum(case is_taken when 'Yes' then 1 else 0 END) total_attend
                FROM  assignment_students asss
                LEFT  JOIN assignments ass ON ass.id = asss.assignment_id
                LEFT JOIN quiz_students qs ON qs.student_id = asss.student_id AND qs.assignment_id=asss.assignment_id
                WHERE asss.student_id = $studentId
                GROUP BY qs.assignment_id";
        $studentAssignments =DB::select($sql);
        return json_encode(array('quizStudentassignment'=>$studentAssignments));
    }

}
