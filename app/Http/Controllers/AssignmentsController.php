<?php

namespace App\Http\Controllers;

use App\Models\AssignmentQuiz;
use App\Models\AssignmentStudent;
use App\Models\QuizStudent;
use App\Models\StudentSubject;
use App\Traits\HasPermission;
use App\Traits\QuizQuestionTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AssignmentsController extends Controller
{
    use HasPermission;
    use QuizQuestionTrait;
    public function __construct(Request $request)
    {
        $this->page_title       = $request->route()->getName();
        $description            = \Request::route()->getAction();
        $this->page_desc        = isset($description['desc']) ? $description['desc'] : $this->page_title;
    }

    public function index()
    
    {
        $page_title             = $this->page_title;
        $data['module_name']    = "Assignments";
        $studentId              = \Auth::user()->typable_id;
        $total                  = 0;
        $quizStudentCount       = QuizStudent::where('student_id',$studentId)->where('quiz_id', 0)->where('assignment_id','!=', NULL)->count();
        $quizStudentPending     = QuizStudent::where('student_id',$studentId)->where('assignment_id','!=', NULL)->where('attempt',0)->count();
        $quizStudentScore       = QuizStudent::where('student_id',$studentId)->where('assignment_id','!=', NULL)->sum('score');

        if($quizStudentCount-$quizStudentPending == 0){
            if($quizStudentCount == 0) {
                $calculateScore     = number_format((($quizStudentScore/1)),2);
            } else {
                $calculateScore     = number_format((($quizStudentScore/$quizStudentCount)),2);
            }
        } else {
            $calculateScore     = number_format((($quizStudentScore/($quizStudentCount-$quizStudentPending))),2);
        }
        $studentSubjects        = StudentSubject::with('class_subjects.subjects')->where('status','Active')->where('student_id',$studentId)->get();
        return view('student-portal.assignment-list',['studentSubjects' => $studentSubjects, 'count'=>$quizStudentCount, 'pendding'=>$quizStudentPending, 'calculateScore'=>$calculateScore], array('page_title'=>$page_title,$data));
    }

    public function indexExamList(){
        $page_title             = $this->page_title;
        $data['module_name']    = "Exam List";
        $studentId              = \Auth::user()->typable_id;
        $total                  = 0;
        $quizStudentCount       = QuizStudent::where('student_id',$studentId)->where('quiz_id', 0)->where('assignment_id','!=', NULL)->count();
        $quizStudentPending     = QuizStudent::where('student_id',$studentId)->where('assignment_id','!=', NULL)->where('attempt',0)->count();
        $quizStudentScore       = QuizStudent::where('student_id',$studentId)->where('assignment_id','!=', NULL)->sum('score');

        if($quizStudentCount-$quizStudentPending == 0){
            if($quizStudentCount == 0) {
                $calculateScore     = number_format((($quizStudentScore/1)),2);
            } else {
                $calculateScore     = number_format((($quizStudentScore/$quizStudentCount)),2);
            }
        } else {
            $calculateScore     = number_format((($quizStudentScore/($quizStudentCount-$quizStudentPending))),2);
        }
        $studentSubjects        = StudentSubject::with('class_subjects.subjects')->where('status','Active')->where('student_id',$studentId)->get();
        return view('student-portal.exam-list',['studentSubjects' => $studentSubjects, 'count'=>$quizStudentCount, 'pendding'=>$quizStudentPending, 'calculateScore'=>$calculateScore], array('page_title'=>$page_title,$data));
    }
    public function quizzesSubjectAssignment(){
            $studentId              = \Auth::user()->typable_id;
      //  $quizStudent = QuizStudent::where('student_id',$studentId)->where('assignment_id','!=',NULL)->where('is_taken','Yes')->count();
        $sql = "SELECT   ass.id AS assignment_id, ass.title,deadline,available_from, is_exam, completed_status, asss.student_id, count(qs.id) AS quiz_numbers, AVG(qs.score) AS score,
                sum(case is_taken when 'Yes' then 1 else 0 END) total_attend
                FROM  assignment_students asss
                LEFT  JOIN assignments ass ON ass.id = asss.assignment_id
                LEFT JOIN quiz_students qs ON qs.student_id = asss.student_id AND qs.assignment_id=asss.assignment_id
                WHERE asss.student_id = $studentId AND ass.is_exam='No'
                GROUP BY qs.assignment_id";

        $studentAssignments =DB::select($sql);

        return json_encode(array('quizStudentassignment'=>$studentAssignments));
    }

    public function examListData(){
        $studentId              = \Auth::user()->typable_id;
        //  $quizStudent = QuizStudent::where('student_id',$studentId)->where('assignment_id','!=',NULL)->where('is_taken','Yes')->count();
        $sql = "SELECT   ass.id AS assignment_id, ass.title,deadline,available_from, is_exam, completed_status, asss.student_id, count(qs.id) AS quiz_numbers, AVG(qs.score) AS score,
                sum(case is_taken when 'Yes' then 1 else 0 END) total_attend
                FROM  assignment_students asss
                LEFT  JOIN assignments ass ON ass.id = asss.assignment_id
                LEFT JOIN quiz_students qs ON qs.student_id = asss.student_id AND qs.assignment_id=asss.assignment_id
                WHERE asss.student_id = $studentId AND ass.is_exam='Yes'
                GROUP BY qs.assignment_id";
        $studentAssignments =DB::select($sql);
        return json_encode(array('quizStudentassignment'=>$studentAssignments));
    }

    public function assignmentQuizzes($id) {

        $page_title             = $this->page_title;
        $data['module_name']    = "Assignments";
        $studentId              = \Auth::user()->typable_id;
        return view('student-portal.assignment-quizzes',['id'=>$id],  array('page_title'=>$page_title,$data));
    }

    public function quizAssignments($id){
        $studentId              = \Auth::user()->typable_id;

        $quizAssignments        = QuizStudent::with('quiz')->where('student_id',$studentId)->where('assignment_id',$id)->get();
        $quizAttentCount        = QuizStudent::where('is_taken','No')->where('student_id',$studentId)->where('assignment_id',$id)->count();
        return json_encode(array('quizAssignments'=>$quizAssignments, 'quizAttentCount'=>$quizAttentCount));
    }



}
