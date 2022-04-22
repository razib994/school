<?php

namespace App\Http\Controllers;

use App\Models\Assignment;
use App\Models\AssignmentQuiz;
use App\Models\AssignmentStudent;
use App\Models\Classe;
use App\Models\ClassSubject;
use App\Models\Department;
use App\Models\KeyStage;
use App\Models\Quiz;
use App\Models\QuizStudent;
use App\Models\School;
use App\Models\Student;
use App\Models\Subject;
use App\Models\Teacher;
use App\Models\User;
use App\Models\UserLog;
use App\Traits\HasPermission;
use App\Traits\ReportTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Date;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class ReportController extends Controller
{
    use HasPermission;
    use ReportTrait;

    public function __construct(Request $request)
    {
        $this->page_title   = $request->route()->getName();
        $description        = \Request::route()->getAction();
        $this->page_desc    = isset($description['desc']) ? $description['desc'] : $this->page_title;
    }

    public function index(){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Report";
        $data['sub_module']		= "Subject Report";

        $keyStage               = KeyStage::where('status','Active')->get();
        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 144;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission'] = $add_permission;
        return view('report.subject-report',['keyStages' => $keyStage], $data);
    }

    public function reportIndex(){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Report Dashboard";
        $data['sub_module']		= "Report Dashboard";
        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 144;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission'] = $add_permission;
        $userschool             = User::with('school')->where('id',Auth::user()->id)->first();
        $school                 = School::all();
        return view('report.report', ['userschool'=>$userschool, 'schools'=> $school], $data);
    }

    public function subjectReportList(Request $request){
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

        $sql = "SELECT  avg(score) AS score, SUM(total_time) AS total_time,  first_name, last_name, A.id, student_id,
                subject_id, subject_name, updated_at, quiz_id, COUNT(quiz_id) AS total_students
                FROM
                (
                    SELECT score, SUM(TIME_TO_SEC(quiz_take_duration)) AS total_time,
                    st.first_name,
                    st.last_name, q.id, q.student_id, subject_id, subject_name, u.updated_at, quiz_id
                    FROM quiz_students q
                    LEFT JOIN students st ON st.id = q.student_id
                    LEFT JOIN quizzes qz ON qz.id=q.quiz_id
                    LEFT JOIN  subjects sj on sj.id=qz.subject_id
                    LEFT JOIN classes c ON c.id=  qz.class_id
                    LEFT JOIN key_stages k ON k.id = qz.year_id
                    LEFT JOIN users u ON u.typable_id=q.student_id
                    WHERE
                    /*q.student_id=2	AND*/
                    assignment_id IS NULL $reportcondition
                    GROUP BY subject_id, student_id
                    ORDER BY quiz_id DESC
                )A
                WHERE total_time>0  AND total_time IS NOT null
                GROUP BY subject_id";
        $quizsubjects = DB::select($sql);

        $return_arr = array();
        foreach ($quizsubjects as $quizsubject) {
            $total_time = $this->timeHoureMinitesSec($quizsubject->total_time);
            $data['name']                 ='<a href="'.url('quiz-report/'.$quizsubject->subject_id).'" >'.$quizsubject->subject_name.'</a>';
            $data['total_student']        = $quizsubject->total_students;
            $data['total_time']           = $total_time;
            if($quizsubject->score < 40)
            {
                $scorehtml = 'danger';
            } else if ($quizsubject->score < 60) {
                $scorehtml = 'warning';
            } else if($quizsubject->score <= 100) {
                $scorehtml = 'success';
            }
            $data['avg_score']            = '<div class=" progress">
                                                <div class="progress-bar progress-bar-animated progress-bar-striped bg-'.$scorehtml.'" role="progressbar" aria-valuenow="'.number_format($quizsubject->score,2).'" aria-valuemin="0" aria-valuemax="100" style="width: '.number_format($quizsubject->score,2).'%;">'.number_format($quizsubject->score,2).'%</div>
                                            </div>';

            $return_arr[] = $data;
        }
        $date  = [
            'from_date'=>$request->from_date,
            'to_date'=>$request->to_date,
        ];
        return json_encode(array('data' => $return_arr, 'dates'=>$date));
    }

    public function quizSubjectReport($id){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Report";
        $data['sub_module']		= "Quiz Subject Report";

        $keyStage               = KeyStage::where('status','Active')->get();

        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 145;
        $Subject_name = Subject::where('id',$id)->first();
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission']= $add_permission;
        return view('report.quizzes-subject-report',['keyStages' => $keyStage, 'Subject_name'=>$Subject_name, 'id'=>$id], $data);
    }

    public function quizSubjectReportList(Request $request, $id){
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
            $reportcondition .= " And qz.subject_id <='".$request->subject_name."'";


        $sql = "SELECT score, SUM(TIME_TO_SEC(quiz_take_duration)) AS total_time, st.first_name,
                st.last_name, q.id, q.student_id, subject_id, subject_name, u.updated_at, quiz_id, qz.title
                FROM quiz_students q
                LEFT JOIN students st ON st.id = q.student_id
                LEFT JOIN quizzes qz ON qz.id=q.quiz_id
                LEFT JOIN  subjects sj on sj.id=qz.subject_id
                LEFT JOIN classes c ON c.id=  qz.class_id
                LEFT JOIN key_stages k ON k.id = qz.year_id
                LEFT JOIN users u ON u.typable_id=q.student_id
                WHERE subject_id='$id' AND
                assignment_id IS NULL $reportcondition
                GROUP BY quiz_id
                ORDER BY quiz_id DESC";
        $quizSqls = DB::select($sql);

        $return_arr = array();
        foreach ($quizSqls as $quiz) {
            $total_time =$this->timeHoureMinitesSec($quiz->total_time);
            $data['name']                 = '<a href="'.url('quiz-report-student' , [ 'id' => $quiz->quiz_id]).'">'.$quiz->title.'</a>';
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

    public function quizReport($id,  $student_id){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Report";
        $data['sub_module']		= "Quiz Report";

        $student_name =User::where('typable_id',$student_id)->where('type','Student')->first();
        $subject_name = Subject::where('id',$id)->first();

        $keyStage               = KeyStage::where('status','Active')->get();
        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 145;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission']= $add_permission;
        return view('report.quizzes-report',['keyStages' => $keyStage, 'subject_name'=>$subject_name, 'student_name'=>$student_name, 'student_id'=>$student_id, 'id'=>$id], $data);
    }

    public function quizReportList(Request $request, $id, $student_id){
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
                assignment_id IS NULL $reportcondition AND score>0
                GROUP BY quiz_id
                ORDER BY quiz_id DESC";
        $quizSqls = DB::select($sql);
        $return_arr = array();
        foreach ($quizSqls as $quiz) {
            $total_time =$this->timeHoureMinitesSec($quiz->total_time);
            $data['name']                 = '<a href="'.url('quiz-and-student-wise-details' , [ 'id' => $quiz->quiz_id, 'student_id'=>$quiz->student_id ]).'">'.$quiz->title.'</a>';
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

    public function subjectQuizStudentReport($id){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Report";
        $data['sub_module']		= "Quiz Student Report";

        $keyStage               = KeyStage::where('status','Active')->get();
        $quiz                   = Quiz::where('id',$id)->first();
        $subject_name           = Subject::where('id',$quiz->subject_id)->first();

        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 145;
        $subject_id             = Quiz::select('subject_id')->where('id',$id)->first();

        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission']= $add_permission;
        return view('report.quiz-report-student',['keyStages' => $keyStage, 'quiz' => $quiz, 'subject_name' => $subject_name, 'subject_id' => $subject_id, 'id'=>$id], $data);
    }

    public function subjectQuizStudentReportList(Request $request, $id){
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
        if($request->quiz_name != "")
            $reportcondition .= " And qz.subject_id >='".$request->quiz_name."'";

        $sql = "SELECT AVG(score) AS avg_score , A.first_name, A.last_name, A.id AS quiz_student_id,  student_id,
                SUM(TIME_TO_SEC(ul.total_time)) AS total_time,  u.updated_at AS last_access_time
                FROM
                (
                    SELECT score, st.first_name, st.last_name, q.id, q.student_id
                    FROM quiz_students q
                    LEFT JOIN students st ON st.id = q.student_id
                    LEFT JOIN quizzes qz ON qz.id=q.quiz_id
                    LEFT JOIN  subjects sj on sj.id=qz.subject_id
                    LEFT JOIN classes c ON c.id=  qz.class_id
                    LEFT JOIN key_stages k ON k.id = qz.year_id
                    WHERE
                    /*qs.student_id=2	AND*/
                          q.quiz_id= '$id' AND
                    assignment_id IS NULL $reportcondition  AND score>0
                    GROUP BY student_id, quiz_id
                    ORDER BY quiz_id DESC
                )A
                LEFT JOIN users u ON  u.typable_id = A.student_id
                LEFT JOIN  user_logs ul ON ul.user_id=u.id
                WHERE u.type='Student'  AND score>0
                GROUP BY  student_id";
        $students = DB::select($sql);

        $return_arr = array();
        foreach ($students as $student) {
            $total_time = $this->timeHoureMinitesSec($student->total_time);
            $data['first_name']     = '<a href="'.url('quiz-and-student-wise-details' , ['id' => $id,  'student_id' => $student->student_id ]).'" >'.$student->first_name.'</a>';
            $data['last_name']      = '<a href="'.url('quiz-and-student-wise-details' , [ 'id' => $id,  'student_id' => $student->student_id ]).'" >'.$student->last_name.'</a>';
            $data['total_time']     = $total_time;
            if($student->avg_score < 40)
            {
                $scorehtml = 'danger';
            } else if ($student->avg_score < 60) {
                $scorehtml = 'warning';
            } else if($student->avg_score <= 100) {
                $scorehtml = 'success';
            }
            $data['avg_score']            = '<div class=" progress">
                                                <div class="progress-bar progress-bar-animated progress-bar-striped bg-'.$scorehtml.'" role="progressbar" aria-valuenow="'.number_format($student->avg_score,2).'" aria-valuemin="0" aria-valuemax="100" style="width: '.number_format($student->avg_score,2).'%;">'.number_format($student->avg_score,2).'%</div>
                                            </div>';
            $data['last_access']    = $student->last_access_time;
            $return_arr[] = $data;
        }
        return json_encode(array('data' => $return_arr));
    }

    public function quizWiseReportIndex($id){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Quiz Attend Report";
        $data['sub_module']		= "Quiz Attend Report";

        $keyStage               = KeyStage::where('status','Active')->get();
        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 145;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission']= $add_permission;
        return view('report.quiz-wise-attend-details',['keyStages' => $keyStage, 'id'=>$id], $data);
    }

    public function quizWiseReportList(Request $request, $id){
        $report_school_id = Session::get('report_school_id');
        $quizSQL  = Quiz::with('quiz_students');
        if($request->from_date != "")
            $quizSQL->where('created_at','>=',$request->from_date);
        if($request->to_date != "")
            $quizSQL->where('created_at','<=',$request->to_date);
        if($request->year_name != "default")
            $quizSQL->where('year_id','=',$request->year_name);
        if($request->class_name != "default")
            $quizSQL->where('class_id','=',$request->class_name);
        if($request->class_name != "default")
            $quizSQL->where('subject_id','=',$request->subject_name);
        if($request->quiz_name != "default")
            $quizSQL->where('id','=',$request->quiz_name);
        if($report_school_id != "")
            $quizSQL->where('school_id','=',$report_school_id);

        $quizzes = $quizSQL->where('id',$id)->get();
        $return_arr = array();
        foreach ($quizzes as $quiz){
            $quizStudent = QuizStudent::with('student')->where('quiz_id', $quiz->id)->where('assignment_id', NULL)->where('retake', 'No')->get();
            foreach ($quizStudent as $s){
                $attemps                    = QuizStudent::where('student_id',$s->student->id)->where('assignment_id',NULL)->count();
                $max                        = QuizStudent::where('student_id',$s->student->id)->where('assignment_id',NULL)->max('score');
                $avg                        = QuizStudent::where('student_id',$s->student->id)->where('assignment_id',NULL)->avg('score');
                $first_score                = QuizStudent::where('student_id',$s->student->id)->where('assignment_id',NULL)->first();
                $last_score                 = QuizStudent::where('student_id',$s->student->id)->where('assignment_id',NULL)->latest()->first();
                $time                       = QuizStudent::where('student_id',$s->student->id)->where('assignment_id',NULL)->sum(DB::raw("TIME_TO_SEC(quiz_take_duration)"));

                $secs                       = $time % 60;
                $hrs                        = $time / 60;
                $mins                       = $hrs % 60;
                $hrs                        = $hrs / 60;

                $data['name']               = '<a href="'.url("quiz-and-student-wise-details",$s->student->id).'" >'.$s->student->first_name.'</a>';
                $data['time']               = sprintf('%02d:%02d:%02d',$hrs , $mins , $secs);
                $data['attempts']           = $attemps;
                $data['max_score']          = $max."%";
                $data['first_score']        = $first_score->score."%";
                $data['last_score']         = $last_score->score.'%';
                $data['avg_score']          = number_format($avg,2)."%";
                $return_arr[] = $data;
            }
        }
        $date  = [
            'from_date'=>$request->from_date,
            'to_date'=>$request->to_date,
        ];

        return json_encode(array('data' => $return_arr,'dates'=>$date));
    }

    public function quizStudentReport($id, $student_id){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Quiz Student Report";
        $data['sub_module']		= "Quiz Student Report";

        $quiz_name =Quiz::where('id',$id)->first();
        $student_name = User::where('typable_id',$student_id)->where('type','Student')->first();
        $subject_name =Subject::where('id',$quiz_name->subject_id)->first();

        $keyStage               = KeyStage::where('status','Active')->get();
        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 145;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission'] = $add_permission;
        return view('report.quiz-student-report', ['keyStages' => $keyStage,'student_name'=>$student_name,'quiz_name'=>$quiz_name, 'subject_name'=>$subject_name, 'id'=>$id, 'student_id'=>$student_id], $data);
    }

    public function quizStudentReportList($id, $student_id){
        $quizSQLs  = "SELECT qs.created_at, qs.quiz_take_duration, ROUND(score,2) as score, qs.id  quiz_student_id
                        FROM  quiz_students qs
                        LEFT JOIN quizzes q ON q.id = qs.quiz_id
                        WHERE qs.student_id ='$student_id' AND qs.quiz_id =$id AND assignment_id IS NULL ORDER BY qs.id DESC";
        $quizstudentReport = DB::select($quizSQLs);
        return json_encode(array('quizstudentreport' => $quizstudentReport));
    }

    public function studentUsages(){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Student Usage";
        $data['sub_module']		= "Student Usage";

        $keyStage               = KeyStage::where('status','Active')->get();
        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 148;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);

        $data['actions']['view_permission'] = $add_permission;
        return view('report.student-usage-report',['keyStages' => $keyStage], $data);
    }

    public function studentUsagesList(Request $request){
        $report_school_id = Session::get('report_school_id');

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
        if($request->quiz_name != "")
            $reportcondition .= " And qz.id <='".$request->quiz_name."'";

        $sql = "SELECT AVG(score) AS avg_score , A.first_name, A.last_name, A.id AS quiz_student_id,  student_id,
                    SUM(total_time) AS total_time,  u.updated_at AS last_access_time
                    FROM
                    (
                        SELECT score, st.first_name, st.last_name, q.id, q.student_id, SUM(TIME_TO_SEC(ifnull(quiz_take_duration,0))) AS  total_time
                        FROM quiz_students q
                        LEFT JOIN students st ON st.id = q.student_id
                        LEFT JOIN quizzes qz ON qz.id=q.quiz_id
                        LEFT JOIN  subjects sj on sj.id=qz.subject_id
                        LEFT JOIN classes c ON c.id=  qz.class_id
                        LEFT JOIN key_stages k ON k.id = qz.year_id
                        WHERE
                        /*qs.student_id=2	AND*/
                        assignment_id IS NULL $reportcondition AND score>0

                        GROUP BY student_id, quiz_id
                        ORDER BY quiz_id DESC
                    )A
                    LEFT JOIN users u ON  u.typable_id = A.student_id
                    WHERE u.type='Student'  AND score>0 AND total_time>0
                    GROUP BY  student_id";
        $students = DB::select($sql);

        $return_arr = array();
        foreach ($students as $student) {
            $total_time = $this->timeHoureMinitesSec($student->total_time);
            $data['first_name']     = '<a href="'.url('student-subject-report' , [ 'id' => $student->student_id ]).'" >'.$student->first_name.'</a>';
            $data['last_name']      = '<a href="'.url('student-subject-report' , [ 'id' => $student->student_id ]).'" >'.$student->last_name.'</a>';
            $data['total_time']     = $total_time;
            if($student->avg_score < 40)
            {
                $scorehtml = 'danger';
            } else if ($student->avg_score < 60) {
                $scorehtml = 'warning';
            } else if($student->avg_score <= 100) {
                $scorehtml = 'success';
            }
            $data['avg_score']            ='<div class=" progress">
                                                <div class="progress-bar progress-bar-animated progress-bar-striped bg-'.$scorehtml.'" role="progressbar" aria-valuenow="'.number_format($student->avg_score,2).'" aria-valuemin="0" aria-valuemax="100" style="width: '.number_format($student->avg_score,2).'%;">'.number_format($student->avg_score,2).'%</div>
                                            </div>';
            $data['last_access']    = $student->last_access_time;
            $return_arr[] = $data;
        }
        return json_encode(array('data' => $return_arr));
    }

    public function studentSubject($id){

        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Student Subject Report";
        $data['sub_module']		= "Student Subject Report";

        $keyStage               = KeyStage::where('status','Active')->get();
        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 149;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $student_name = User::where('typable_id', $id)->where('type', 'Student')->first();
        $data['actions']['view_permission'] = $add_permission;
        return view('report.student-wise-subject-report',['keyStages' => $keyStage, 'id'=>$id, 'student_name'=>$student_name], $data);
    }

    public function studentSubjectList(Request $request, $id){
        $report_school_id = Session::get('report_school_id');
        $reportcondition ='';
        if($report_school_id != "")
            $reportcondition .= " And st.school_id = '".$report_school_id."'";
        if($request->form_date != "")
            $reportcondition .= " And q.created_at >='".$request->form_date."'";
        if($request->to_date != "")
            $reportcondition .= " And q.created_at <='".$request->to_date."'";
        if($request->year_name != "")
            $reportcondition .= " And qz.year_id >='".$request->year_name."'";

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
                    assignment_id IS NULL $reportcondition  AND score>0
                    GROUP BY subject_id, quiz_id
                    ORDER BY quiz_id DESC
                )A
                LEFT JOIN users u ON  u.typable_id = A.student_id
                WHERE student_id='$id' AND score>0 AND total_time>0
                GROUP BY  subject_id";
        $students = DB::select($sqls);
        $return_arr = array();
        foreach ($students as $student) {
            $total_time = $this->timeHoureMinitesSec($student->total_time);
                $data['subject']            = '<a href="'.url("quiz-report",['id' => $student->subject_id, 'student_id' => $student->student_id]).'" >'.$student->subject_name.'</a>';
                $data['users']              = $student->total_quiz;
                $data['total_time']         = $total_time;
                $scorehtml                  = ($student->score < 50) ? 'danger':'success';
                $data['avg_score']          = '<div class=" progress">
                                                <div class="progress-bar progress-bar-animated progress-bar-striped bg-'.$scorehtml.'" role="progressbar" aria-valuenow="'.$student->score.'" aria-valuemin="0" aria-valuemax="100" style="width: '.$student->score.'%;">'.$student->score.'%</div>
                                            </div>';
                $return_arr[] = $data;
        }

        return json_encode(array('data' => $return_arr));
    }

    public function assignmentIndex(){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Assignment Report";
        $data['sub_module']		= "Assignment Report";

        $keyStage               = KeyStage::where('status','Active')->get();
        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 149;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);

        $data['actions']['view_permission'] = $add_permission;
        return view('report.assignment-report',['keyStages' => $keyStage], $data);
    }

    public function assignmentList(Request $request){
        $report_school_id   = Session::get('report_school_id');
        $assignmentSql = Assignment::where('is_exam','No')->with('studentsQuizes');
        if($report_school_id != "")
            $assignmentSql->where('school_id','=',$report_school_id);
//        if($request->from_date != "")
//            $assignmentSql->where('created_at','>=',$request->from_date);
//        if($request->to_date != "")
//            $assignmentSql->where('created_at','=<',$request->to_date);
//        if($request->year_name != "")
//            $assignmentSql->where('school_id','=',$request->year_name);
//        if($request->class_name != "")
//            $assignmentSql->where('school_id','=',$request->class_name);
//        if($request->subject_name != "")
//            $assignmentSql->where('school_id','=',$request->subject_name);
//        if($request->quiz_name != "")
//            $assignmentSql->where('school_id','=',$request->quiz_name);
        $assignments =$assignmentSql->get();

        $return_arr = array();
        foreach ($assignments as $assignment) {
            $totalQuizzes = AssignmentQuiz::where('assignment_id',$assignment->id)->count();
            $totalcomplate= QuizStudent::where('assignment_id',$assignment->id)->where('attempt',1)->count();
            $dateTime = strtotime($assignment->available_from);
            $deadline = strtotime($assignment->deadline);
            $data['name']            = $assignment->title;
            $data['completed']       = $totalcomplate."/".$totalQuizzes;
            $data['quizzes']         = $totalQuizzes;
            $data['from']            = date("F j, Y, g:i a", $dateTime);
            $data['to']              = date("F j, Y, g:i a",$deadline);
            $data['button']          = '<a href="assignments-students-details-report/'.$assignment->id.'" class="btn btn-info">View</a>';
            $return_arr[] = $data;
        }
        return json_encode(array('data' => $return_arr));

    }

    public function assignmentAttemptsIndex(){

        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Assignment Exam  Report";
        $data['sub_module']		= "Assignment Exam Report";

        $keyStage               = KeyStage::where('status','Active')->get();
        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 149;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);

        $data['actions']['view_permission'] = $add_permission;
        return view('report.assignment-attempts-report',['keyStages' => $keyStage], $data);
    }

    public function assignmentAttemptsList(Request $request){

        $report_school_id   = Session::get('report_school_id');
        $assignmentSql = Assignment::where('is_exam','Yes')->with('studentsQuizes');
        if($report_school_id != "")
            $assignmentSql->where('school_id','=',$report_school_id);
//        if($request->from_date != "")
//            $assignmentSql->where('created_at','>=',$request->from_date);
//        if($request->to_date != "")
//            $assignmentSql->where('created_at','=<',$request->to_date);
//        if($request->year_name != "")
//            $assignmentSql->where('school_id','=',$request->year_name);
//        if($request->class_name != "")
//            $assignmentSql->where('school_id','=',$request->class_name);
//        if($request->subject_name != "")
//            $assignmentSql->where('school_id','=',$request->subject_name);
//        if($request->quiz_name != "")
//            $assignmentSql->where('school_id','=',$request->quiz_name);
        $assignments =$assignmentSql->get();

        $return_arr = array();
        foreach ($assignments as $assignment) {
            $totalQuizzes = AssignmentQuiz::where('assignment_id',$assignment->id)->count();
            $totalcomplate= QuizStudent::where('assignment_id',$assignment->id)->where('attempt',1)->count();
            $dateTime = strtotime($assignment->available_from);
            $deadline = strtotime($assignment->deadline);
            $data['name']            = $assignment->title;
            $data['completed']       = $totalcomplate."/".$totalQuizzes;
            $data['quizzes']         = $totalQuizzes;
            $data['from']            = date("F j, Y, g:i a", $dateTime);
            $data['to']              = date("F j, Y, g:i a",$deadline);
            $data['button']          = '<a href="assignments-students-details-report/'.$assignment->id.'" class="btn btn-info">View</a>';
            $return_arr[] = $data;
        }
        return json_encode(array('data' => $return_arr));
    }

    public function assignmentAttemptsMatrixIndex(){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Assignment Attempts Matrix Report";
        $data['sub_module']		= "Assignment Attempts Matrix Report";

        $keyStage               = KeyStage::where('status','Active')->get();
        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 149;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);

        $data['actions']['view_permission'] = $add_permission;
        return view('report.assignment-matrix-report',['keyStages' => $keyStage], $data);
    }

    public function assignmentAttemptsMatrixList(Request $request){}

    public function assignmentStudentsDetailsIndex($id){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Assignment Students Report";
        $data['sub_module']		= "Assignment Students Report";

        $assignments            = Assignment::all();
        $assignment_name        = Assignment::where('id',$id)->first();
        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 149;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission'] = $add_permission;
        return view('report.assignment-students-report',['assignments' => $assignments, 'assignment_name'=>$assignment_name, 'id'=>$id], $data);
    }

    public function assignmentStudentsDetailsList(Request $request, $id){
        $return_arr = array();
        $quizStudents = QuizStudent::with('student')->where('assignment_id',$id)->get();
        foreach ($quizStudents as $quizStudent) {
            $attempt = QuizStudent::where('student_id',$quizStudent->student->id)->where('assignment_id',$quizStudent->assignment_id)->count();
            $avg = QuizStudent::where('student_id',$quizStudent->student->id)->where('assignment_id',$quizStudent->assignment_id)->avg('score');
            $time = QuizStudent::where('student_id',$quizStudent->student->id)->where('assignment_id',$quizStudent->assignment_id)->sum('quiz_take_duration');
            $best = QuizStudent::where('student_id',$quizStudent->student->id)->where('assignment_id',$quizStudent->assignment_id)->max('score');
            $first = QuizStudent::where('student_id',$quizStudent->student->id)->where('assignment_id',$quizStudent->assignment_id)->first('score');
            $last = QuizStudent::where('student_id',$quizStudent->student->id)->where('assignment_id',$quizStudent->assignment_id)->latest()->first('score');
            $data['first_name']   = '<a href="'.url("quiz-and-student-wise-details", $quizStudent->student->id).'">'.$quizStudent->student->first_name.'</a>';
            $data['last_name']    = '<a href="'.url("quiz-and-student-wise-details", $quizStudent->student->id).'">'.$quizStudent->student->middle_name.'</a>';
            $data['time']         = date("H:i:s", strtotime($time)) ;
            $data['attempts']     = $attempt;
            $data['first']        = number_format($first->score,2)."%";
            $data['last']         = number_format($last->score,2)."%";
            $data['avg']          = number_format($avg,2)."%";
            $data['best']         = number_format($best,2)."%";
            $return_arr[] = $data;
        }
        return json_encode(array('data' => $return_arr));
    }

    public function weeklyReportIndex(){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Weekly Report";
        $data['sub_module']		= "Weekly Report";
        $keyStage               = KeyStage::where('status','Active')->get();
        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 149;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission'] = $add_permission;
        return view('report.weekly-report',['keyStages' => $keyStage], $data);
    }

    public function weeklyReportList(Request $request){
        $report_school_id   = Session::get('report_school_id');
        $reportcondition ='';
        if($report_school_id != "")
            $reportcondition .= " And s.school_id = '".$report_school_id."'";
//        if($request->form_date != "")
//            $reportcondition .= " And q.created_at >='".$request->form_date."'";
//        if($request->to_date != "")
//            $reportcondition .= " And q.created_at <='".$request->to_date."'";
//        if($request->year_name != "")
//            $reportcondition .= " And qz.year_id >='".$request->year_name."'";

        $date = new \DateTime(); //defaults to the current date/time
        $dateThreeWeek = $date->modify("-3 week")->format("Y-m-d");
        $datetwoWeek = $date->modify("-2 week")->format("Y-m-d");
        $dateOneWeek = $date->modify("-1 week")->format("Y-m-d");
        $year = date('Y-m-d', strtotime('first day of january this year'));

        $sql = "SELECT  avg(score) AS score, first_name, last_name, student_id,
             COUNT(student_id) AS total_students, SUM(total_time_1) AS total_time_1, SUM(total_time_2) AS total_time_2, SUM(total_time_3) AS total_time_3
            FROM
            (
                SELECT s.id AS student_id, first_name, last_name,  ifnull(score,0) score, taken_date, quiz_id
                ,SUM(case when DATE_FORMAT(taken_date,'%Y-%m-%d') > '$dateOneWeek' then TIME_TO_SEC(ifnull(quiz_take_duration,0)) ELSE 0  END) AS total_time_1
                ,SUM(case when (DATE_FORMAT(taken_date,'%Y-%m-%d') < '$datetwoWeek' AND DATE_FORMAT(taken_date,'%Y-%m-%d') > '2022-02-07') then TIME_TO_SEC(ifnull(quiz_take_duration,0)) ELSE 0  END) AS total_time_2
                ,SUM(case when (DATE_FORMAT(taken_date,'%Y-%m-%d') < '$dateThreeWeek' AND DATE_FORMAT(taken_date,'%Y-%m-%d') > '2022-02-01') then TIME_TO_SEC(ifnull(quiz_take_duration,0)) ELSE 0  END) AS total_time_3

                FROM students s
                LEFT JOIN  quiz_students q ON q.student_id=s.id
                LEFT JOIN quizzes qz 	ON qz.id=q.quiz_id
                LEFT JOIN  subjects sj 	on sj.id=qz.subject_id
                LEFT JOIN classes c 	ON c.id=  qz.class_id
                LEFT JOIN key_stages k ON k.id = qz.year_id
                WHERE
                DATE_FORMAT(taken_date,'%Y-%m-%d') > '$year' AND
                assignment_id IS NULL $reportcondition
                GROUP BY s.id , quiz_id
                ORDER BY q.id DESC
            )A
            WHERE score>0
            GROUP BY student_id";
        $students = DB::select($sql);
        $return_arr = array();
        foreach ($students as $student){
            $three_week = $this->timeHoureMinitesSec($student->total_time_3);
            $two_week = $this->timeHoureMinitesSec($student->total_time_2);
            $last_week= $this->timeHoureMinitesSec($student->total_time_1);
            $data['first_name']   = $student->first_name;
            $data['last_name']    = $student->last_name;
            $data['three_week']   = $three_week;
            $data['two_week']     = $two_week;
            $data['last_week']    = $last_week;
            $data['this_week']    = $student->total_students;
            $return_arr[] = $data;
        }
        return json_encode(array('data' => $return_arr));
    }

    public function monthlyReportIndex(){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Monthly Report";
        $data['sub_module']		= "Monthly Report";
        $keyStage               = KeyStage::where('status','Active')->get();
        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 149;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission'] = $add_permission;
        $useractive = User::where('status',1)->count();
        $avgmark = QuizStudent::where('attempt',1)->avg('score');
        $usertime = User::where('status',1)->sum('total_login_time');
        return view('report.monthly-report',['keyStages' => $keyStage,'useractive' => $useractive,'avgmark' => $avgmark,'usertime' => $usertime], $data);
    }

    public function monthlyReportList(Request $request){
        $report_school_id   = Session::get('report_school_id');
        $reportcondition ='';
        if($report_school_id != "")
            $reportcondition .= " And qz.school_id = '".$report_school_id."'";

        $sql = "SELECT AVG(score) AS avg_score , A.id AS quiz_student_id,  count(student_id) total_student_no,
    SUM(total_time) AS total_time,  DATE_FORMAT(taken_date,'%m') AS month_no
    FROM
    (
        SELECT score, taken_date, q.id, q.student_id, SUM(TIME_TO_SEC(ifnull(quiz_take_duration,0))) AS  total_time
        FROM quiz_students q
        LEFT JOIN students st ON st.id = q.student_id
        LEFT JOIN quizzes qz ON qz.id=q.quiz_id
        LEFT JOIN  subjects sj on sj.id=qz.subject_id
        LEFT JOIN classes c ON c.id=  qz.class_id
        LEFT JOIN key_stages k ON k.id = qz.year_id
        WHERE
       	DATE_FORMAT(taken_date,'%Y-%m-%d') > '2022-01-01' AND
        assignment_id IS NULL $reportcondition  AND score>0
        GROUP BY student_id, quiz_id, DATE_FORMAT(taken_date,'%m')
        ORDER BY q.id DESC
    )A
    WHERE score>0 AND total_time>0
    GROUP BY DATE_FORMAT(taken_date,'%m')";
        $monthly_reports = DB::select($sql);

        $return_arr = array();
        foreach ($monthly_reports as $monthly_report){
            $total_time = $this->timeHoureMinitesSec($monthly_report->total_time);
            if($monthly_report->month_no == 01) {
                $month_name = "January";
            }else if($monthly_report->month_no == 02) {
                $month_name = "February";
            }else if($monthly_report->month_no == 03) {
                $month_name = "March";
            }else if($monthly_report->month_no == 04) {
                $month_name = "April";
            }else if($monthly_report->month_no == 05) {
                $month_name = "May";
            }else if($monthly_report->month_no == 06) {
                $month_name = "June";
            }else if($monthly_report->month_no == 07) {
                $month_name = "July";
            }else if($monthly_report->month_no == 8) {
                $month_name = "August";
            }else if($monthly_report->month_no == 9) {
                $month_name = "September";
            }else if($monthly_report->month_no == 10) {
                $month_name = "October";
            }else if($monthly_report->month_no == 11) {
                $month_name = "November";
            }else if($monthly_report->month_no == 12) {
                $month_name = "December";
            }
            $data['month']          = $month_name;
            $data['total_time']     = $total_time;
            $data['avg_score']      = number_format($monthly_report->avg_score,2)."%";
            $data['active_user']    = $monthly_report->total_student_no;
            $return_arr[] = $data;
        }
        return json_encode(array('data' => $return_arr));
    }

    public function quizStudentReportDetails($id) {

        $quizStudents = QuizStudent::with('quiz','quiz_answers','quiz_answers.question')->where('id',$id)->first();
        foreach ($quizStudents->quiz_answers as $quizanswerCount){
            $quizNoAnswer   = $quizanswerCount->where('quiz_student_id',$id)->where('answer','No Answer')->count();
            $quizWrong      = $quizanswerCount->where('quiz_student_id',$id)->where('answer','Wrong')->count();
            $quizSkipped    = $quizanswerCount->where('quiz_student_id',$id)->where('answer','Skipped')->count();
            $quizRight      = $quizanswerCount->where('quiz_student_id',$id)->where('answer','Right')->count();
        }
        return json_encode(['quizstudents' => $quizStudents, 'noAnswer'=>$quizNoAnswer,'wrong'=>$quizWrong,'skipped'=>$quizSkipped,'right'=>$quizRight]);
    }

    public function getQuizTitle(Request $request){
        if($request['subject_id']){
            $quizzes     = Quiz::where('school_id', Session::get('report_school_id'))->where('subject_id',$request['subject_id'])->where('status','Active')->get();
        }
        return json_encode(array( 'quizzes'=>$quizzes));
    }

    public function getQuizReportStudent(Request $request){
        if($request['quiz_id']){
            $quizStudents     = QuizStudent::with('student')->where('quiz_id',$request['quiz_id'])->where('assignment_id',NULL)->where('retake','NO')->get();
        }
        return json_encode(array( 'quizstudents'=>$quizStudents));
    }

    public function schoolOverView(){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "School Over View";
        $data['sub_module']		= "School Over View";

        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 149;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission'] = $add_permission;

        $id         = Session::get('report_school_id');
        $userschool = User::with('school')->first();

        $school_name = School::select('name')->where('id',Auth::user()->typable_id)->first();


        return view('report.school-overview',['id'=>$id,'userschool'=>$userschool,'school_name'=>$school_name], $data);
    }

    public function adminSchoolWiseOverviewReport($id){
        $data['page_title'] 	            = $this->page_title;
        $data['module_name']	            = "School Over View";
        $data['sub_module']		            = "School Over View";

        $admin_user_id  		            = Auth::user()->id;
        $add_action_id  		            = 149;
        $add_permission 		            = $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission'] = $add_permission;

        $di =  Session::put( 'report_school_id', $id);
        $userschool = User::with('school')->first();
        return view('report.school-overview',['id'=>$di,'userschool'=>$userschool], $data);
    }

    public function topStudentReport(){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Top Student Report";
        $data['sub_module']		= "Top Student Report";
        $keyStage               = KeyStage::where('status','Active')->get();
        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 158;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission'] = $add_permission;
        return view('report.top-student-report',['keyStages' => $keyStage], $data);
    }

    public function topStudentReportList(Request $request){
        $report_school_id   = Session::get('report_school_id');
        $reportcondition ='';
        if($report_school_id != "")
            $reportcondition .= " And st.school_id = '".$report_school_id."'";
        if($request->from_date != "")
            $reportcondition .= " And q.created_at >='".$request->from_date."'";
        if($request->to_date != "")
            $reportcondition .= " And q.created_at <='".$request->to_date."'";
        if($request->year_id != "")
            $reportcondition .= " And qz.year_id >='".$request->year_id."'";
        if($request->class_id != "")
            $reportcondition .= " And qz.class_id <='".$request->class_id."'";

        $sql = "SELECT AVG(score) AS avg_score , A.first_name, A.last_name, A.id AS quiz_student_id,  student_id,
                SUM(TIME_TO_SEC(ul.total_time)) AS total_time,  u.updated_at AS last_access_time
                FROM
                (
                    SELECT score, st.first_name, st.last_name, q.id, q.student_id
                    FROM quiz_students q
                    LEFT JOIN students st ON st.id = q.student_id
                    LEFT JOIN quizzes qz ON qz.id=q.quiz_id
                    LEFT JOIN  subjects sj on sj.id=qz.subject_id
                    LEFT JOIN classes c ON c.id=  qz.class_id
                    LEFT JOIN key_stages k ON k.id = qz.year_id
                    WHERE
                    /*qs.student_id=2	AND*/
                    assignment_id IS NULL $reportcondition AND score>0
                    GROUP BY student_id, quiz_id
                    ORDER BY quiz_id DESC
                )A
                LEFT JOIN users u ON  u.typable_id = A.student_id
                LEFT JOIN  user_logs ul ON ul.user_id=u.id
                WHERE u.type='Student'
                GROUP BY student_id ORDER BY avg_score DESC";
          $students = DB::select($sql);
        $return_arr = array();
        foreach ($students as $student) {
            $total_time = $this->timeHoureMinitesSec($student->total_time);
            $data['first_name']     = '<a href="'.url('student-subject-report' , [ 'id' => $student->student_id ]).'" >'.$student->first_name.'</a>';
            $data['last_name']      = '<a href="'.url('student-subject-report' , [ 'id' => $student->student_id ]).'" >'.$student->last_name.'</a>';
            $data['total_time']     = $total_time;
            if($student->avg_score < 40)
            {
                $scorehtml = 'danger';
            } else if ($student->avg_score < 60) {
                $scorehtml = 'warning';
            } else if($student->avg_score <= 100) {
                $scorehtml = 'success';
            }
            $data['total_mark']            = '<div class=" progress">
                                                <div class="progress-bar progress-bar-animated progress-bar-striped bg-'.$scorehtml.'" role="progressbar" aria-valuenow="'.number_format($student->avg_score,2).'" aria-valuemin="0" aria-valuemax="100" style="width: '.number_format($student->avg_score,2).'%;">'.number_format($student->avg_score,2).'%</div>
                                            </div>';
            $data['total_question']    = $student->last_access_time;
            $return_arr[] = $data;
        }
        return json_encode(array('data' => $return_arr));

//        $students = Student::with('user')->get();
//        $return_arr = array();
//        foreach ($students as $student){
//            $quizStudent = QuizStudent::where('student_id',$student->id)->sum('score');
//            $quizStudentquestion = QuizStudent::where('student_id',$student->id)->whereHas('quiz_answers', function($q) {
//                $q->select(DB::raw('SUM(mark) as total'))
//                    ->havingRaw('total < 0');
//            });
//
//            $data['first_name']         = '<a href="'.url("quiz-and-student-wise-details",$student->id).'">'.$student->first_name.'</a>';
//            $data['last_name']          = '<a href="'.url("quiz-and-student-wise-details",$student->id).'">'.$student->middle_name.'</a>';
//            $data['total_time']         = $student->user->total_login_time;
//            $data['total_mark']         = number_format($quizStudent,0);
//            $data['total_question']     = number_format($quizStudent,0);
//            $return_arr[] = $data;
//        }
//        return json_encode(array('data' => $return_arr));
    }

    public function schoolDashboardContent($period)
    {
        $admin_user_id      = Auth::user()->id;
        $returnArr          = array();
        $report_school_id   = Session::get('report_school_id');

        // Student Statistics
        $sql = "SELECT total_active_students,total_students, ((total_active_students/total_students)*100) AS avg_student_percent,
        total_time, (total_time/total_active_students) AS avg_total_time
        FROM
        (
            SELECT count(distinct ul.user_id) AS total_active_students,
            SUM(TIME_TO_SEC(ul.total_time)) AS total_time,
            u.school_id
            FROM user_logs ul
            LEFT JOIN users u ON u.id=ul.user_id
            WHERE  u.school_id='$report_school_id' AND type='Student'
            GROUP BY u.school_id
        ) A
        LEFT join
        (SELECT COUNT(id) AS total_students , s.id AS  school_id
        FROM students s WHERE school_id='$report_school_id')B
        ON A.school_id = B.school_id";

        $finalsql = DB::select($sql);
        foreach ($finalsql as $final) {
           $total_active_students = $final->total_active_students;
           $total_students = $final->total_students;
           $avg_student_percent = $final->avg_student_percent;
           $total_time = $final->total_time;
           $avg_total_time = $final->avg_total_time;
        }
        $avg_total_timefinal =  $this->timeHoureMinitesSec($avg_total_time);
        $total_timefinal     =  $this->timeHoureMinitesSec($total_time);

        $lastday    = date('Y-m-d', strtotime('today - 30 days'));
        $todayday   = date('Y-m-d');

        $sqllastMonths = "SELECT total_active_students,total_students, ((total_active_students/total_students)*100) AS avg_student_percent,
        total_time, (total_time/total_active_students) AS avg_total_time
        FROM
        (
            SELECT count(distinct ul.user_id) AS total_active_students,
            SUM(TIME_TO_SEC(ul.total_time)) AS total_time,
            u.school_id
            FROM user_logs ul
            LEFT JOIN users u ON u.id=ul.user_id
            WHERE  u.school_id=$report_school_id AND type='Student'
            GROUP BY u.school_id
        ) A
        LEFT join
        (SELECT COUNT(id) AS total_students , s.id AS  school_id
        FROM students s WHERE school_id=$report_school_id)B
        ON A.school_id = B.school_id";
        $lastMonths = DB::select($sqllastMonths);
        foreach ($lastMonths as $lastMonth){
            $total_active_students_last     = $lastMonth->total_active_students;
            $total_students_last            = $lastMonth->total_students;
            $avg_student_percent_last       = $lastMonth->avg_student_percent;
            $total_time_last                = $this->timeHoureMinitesSec($lastMonth->total_time);
            $avg_total_time_last            = $this->timeHoureMinitesSec($lastMonth->avg_total_time);
        }

        $lastYear= date("Y");
        $sqllastYearTime = "SELECT  ((total_active_students/total_students)*100) AS avg_student_percent,
        total_time
        FROM
        (
            SELECT count(distinct ul.user_id) AS total_active_students,
            SUM(TIME_TO_SEC(ul.total_time)) AS total_time,
            u.school_id
            FROM user_logs ul
            LEFT JOIN users u ON u.id=ul.user_id
            WHERE  u.school_id=$report_school_id AND type='Student' AND year(ul.created_at)=$lastYear
            GROUP BY u.school_id
        ) A
        LEFT join
        (SELECT COUNT(id) AS total_students , s.id AS  school_id
        FROM students s WHERE school_id=$report_school_id)B
        ON A.school_id = B.school_id";

        $lastYearTime = DB::select($sqllastYearTime);
        foreach ($lastYearTime as $lastyear){
            $total_time_last_year = $this->timeHoureMinitesSec($lastyear->total_time);

        }
        $return_array = [
            'thisyearlogin'      =>$total_active_students,
            'totalCount'         =>$total_students,
            'yearpercent'        =>number_format($avg_student_percent,2),
            'thisMonthlogin'     =>$total_students_last,
            'thisMonthCount'     =>$total_active_students_last,
            'monthpercent'       =>number_format($avg_student_percent_last,2),
            'lastyear'           =>$total_time_last_year,
            'total_time_year'    =>$total_time_last,
            'total_time_month'   =>$total_timefinal,
            'activetimePerStudentYear' =>$avg_total_timefinal,
            'activetimePerStudentLast' =>$avg_total_time_last,
        ];

        $returnArr['studentStatistics']    =  $return_array;

        // Teacher Statistics

        $thisYear= date("Y");
        $teacherStatistics = "SELECT total_active_teachers,total_teachers, ((total_active_teachers/total_teachers)*100) AS avg_teacher_percent,
         total_time, (total_time/total_active_teachers) AS avg_total_time,
         ifnull(total_quizzes, 0) AS total_quizzes, ifnull(total_assignments,0) AS total_assignments
        FROM
        (
            SELECT count(distinct ul.user_id) AS total_active_teachers,
            SUM(TIME_TO_SEC(ul.total_time)) AS total_time,
             u.school_id
            FROM user_logs ul
            LEFT JOIN users u ON u.id=ul.user_id
            WHERE  u.school_id=$report_school_id AND type='Teacher'  AND Year(login_time)=$thisYear
            GROUP BY u.school_id
        ) A
        LEFT join
        (SELECT COUNT(id) AS total_teachers , s.id AS  school_id
        FROM teachers s WHERE school_id=$report_school_id)B  ON A.school_id = B.school_id
        LEFT JOIN
        (SELECT COUNT(id) AS total_quizzes,school_id  FROM quizzes q
        WHERE Year(created_at) =$thisYear AND school_id = $report_school_id
        )C ON B.school_id=C.school_id
        LEFT JOIN (
        SELECT COUNT(id) AS total_assignments, school_id FROM assignments a
        WHERE Year(created_at) =$thisYear AND school_id = 1)D  ON B.school_id=C.school_id";
        $teacherstatistices = DB::select($teacherStatistics);
        foreach ($teacherstatistices as $teacherstatistice){
            $total_active_teachers =  $teacherstatistice->total_active_teachers;
            $total_teachers = $teacherstatistice->total_teachers;
            $avg_teacher_percent = $teacherstatistice->avg_teacher_percent;
            $total_quizzes = $teacherstatistice->total_quizzes;
            $total_assignments =  $teacherstatistice->total_assignments;
        }

        $lastday = date('Y-m-d', strtotime('today - 30 days'));
        $todayday = date('Y-m-d');
        $teacherStatisticslast = "SELECT total_active_teachers,total_teachers, ((total_active_teachers/total_teachers)*100) AS avg_teacher_percent,
         total_time, (total_time/total_active_teachers) AS avg_total_time,
         ifnull(total_quizzes, 0) AS total_quizzes, ifnull(total_assignments,0) AS total_assignments
        FROM
        (
            SELECT count(distinct ul.user_id) AS total_active_teachers,
            SUM(TIME_TO_SEC(ul.total_time)) AS total_time,
             u.school_id
            FROM user_logs ul
            LEFT JOIN users u ON u.id=ul.user_id
           WHERE u.school_id=1 AND TYPE='Teacher' AND DATE(ul.created_at) BETWEEN '$lastday' AND '$todayday'
	        GROUP BY u.school_id
        ) A
        LEFT join
        (SELECT COUNT(id) AS total_teachers , s.id AS  school_id
        FROM teachers s WHERE school_id=$report_school_id)B  ON A.school_id = B.school_id
        LEFT JOIN
        (SELECT COUNT(id) AS total_quizzes,school_id  FROM quizzes q
        WHERE Year(created_at) =$thisYear AND school_id = $report_school_id
        )C ON B.school_id=C.school_id
        LEFT JOIN (
        SELECT COUNT(id) AS total_assignments, school_id FROM assignments a
        WHERE Year(created_at) =$thisYear AND school_id = 1)D  ON B.school_id=C.school_id";

        $teacherStatisticslasts = DB::select($teacherStatisticslast);

        foreach ($teacherStatisticslasts as $teacherStatisticslast){
            $total_active_teachers_last =  $teacherStatisticslast->total_active_teachers;
            $total_teachers_last = $teacherStatisticslast->total_teachers;
            $avg_teacher_percent_last = $teacherStatisticslast->avg_teacher_percent;
            $total_quizzes_last = $teacherStatisticslast->total_quizzes;
            $total_assignments_last =  $teacherStatisticslast->total_assignments;
        }
        $return_teacherstatistics = [
            'thisyearlogin'     =>$total_active_teachers,
            'totalCount'        =>$total_teachers,
            'yearpercent'       =>number_format($avg_teacher_percent,2),
            'thisMonthlogin'    =>$total_active_teachers_last,
            'thisMonthCount'    =>$total_teachers_last,
            'monthpercent'      =>$avg_teacher_percent_last,
            'quizcreatethisyear'=>$total_quizzes,
            'quizcreatelastDays'=>$total_quizzes_last,
            'assignmentcreatethisYear'=>$total_assignments,
            'assignmentcreatelastDays'=>$total_assignments_last,
        ];
        $returnArr['teacherStatistics']    =  $return_teacherstatistics;


        // Year Statistics

        $yearStatistics = "SELECT c.name AS class_name,c.id AS class_id, ifnull(total_active_students,0) AS total_active_students, ifnull(total_time,0) AS total_time   FROM classes c
        LEFT JOIN
        (SELECT count(distinct ul.user_id) AS total_active_students,
        SUM(TIME_TO_SEC(ul.total_time)) AS total_time, c.name AS class_name, c.id AS class_id
        FROM user_logs ul
        LEFT JOIN users u ON u.id=ul.user_id
        LEFT JOIN students s ON (s.id=u.typable_id AND type='Student')
        LEFT JOIN classes c ON s.class_id=c.id
        WHERE  u.school_id=$report_school_id AND type='Student'
        GROUP BY c.id)A
        ON A.class_id = c.id";
//        AND Date(ul.login_time) BETWEEN '2021-01-01' AND '2022-12-31'
        $yearStatisticses = DB::select($yearStatistics);
        $return_arr = array();
            foreach ($yearStatisticses as $yearStatistics) {
                $data['student_count'] = Student::where('class_id',$yearStatistics->class_id)->count();
                $data ['name']              = $yearStatistics->class_name;
                $data ['total_time']        = $this->timeHoureMinitesSec($yearStatistics->total_time);
                $data ['total_time_year']   = $yearStatistics->total_active_students;
                $data ['total_time_month']  = $this->timeHoureMinitesSec($yearStatistics->total_time);
                $data['student_percent']    = ($data ['total_time_year'] == 0) ? '0' : number_format((($data ['total_time_year']/$data['student_count'])*100),2);
                $return_arr[] = $data;
            }
        $returnArr['yearStatistics']    =  $return_arr;

        // Main Contcepts
        $school = School::where('id',$report_school_id)->first();
        $returnArr['mainconcepts']    =  $school;

        // get the dept wise (subject) total quiz attend time data from db
       $department = "SELECT SUM(TIME_TO_SEC(q.quiz_take_duration)) AS duration, sj.subject_name, sj.dept_id, d.department_name, d.color  FROM quiz_students q
        LEFT JOIN students s ON s.id = q.student_id
        LEFT JOIN quizzes qz ON qz.id=q.quiz_id
        LEFT JOIN  subjects sj on sj.id=qz.subject_id
        LEFT JOIN departments d ON d.id= sj.dept_id
        WHERE s.school_id=1 AND retake='No'  AND q.quiz_take_duration IS NOT NULL
        GROUP BY sj.dept_id";
       $departments = DB::select($department);
        foreach ($departments as $department) {
            $deptName                      = $department->department_name;
            $totalDeptAttendTime           = $department->duration;
            $deptData[$deptName]['data']   = $totalDeptAttendTime;
            $deptData[$deptName]['color']  = $department->color;
        }
        $returnArr['deptChartData']    =  $deptData;

        // get the year wise  total quiz attend time data from db
        $classes = Classe::all();
        foreach ($classes as $classe){
            $yearName                       = $classe->name;
            $totalYearAttendTime            = '60.30.22';
            $yearData[$yearName]['data']    = $totalYearAttendTime;
            $yearData[$yearName]['color']   = $classe->color;
        }
        $returnArr['yearChartData']         =  $yearData;

        // get the month and year wise  total quiz attend time data from db
        $monthArr   = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
        // get years/class from db $yearArr

        /*
        SELECT SUM(TIME_TO_SEC(ul.total_time)) AS total_time, c.name AS class_name,
             c.id AS class_id, month(ul.login_time) AS MONTH
            FROM user_logs ul
            LEFT JOIN users u ON u.id=ul.user_id
            LEFT JOIN students s ON (s.id=u.typable_id AND type='Student')
            LEFT JOIN classes c ON s.class_id=c.id
            WHERE  u.school_id=1 AND type='Student'
            GROUP BY Month(ul.login_time), c.id
        */

        $yearArr    = ['Narsery','Year 1','Year 2','Year 3','Year 4','Year 5','Year 6','Year 7','Year 8','Year 9','Year 10'];
        //foreach($monthArr as $month){
        foreach($yearArr as $year){
            $monthsTimeData/*[$month]*/[$year] = ['44:55:45','40:55:45','54:55:45','34:55:45','24:55:45','64:55:45','44:55:45','74:55:45','54:55:45','24:55:45','14:55:45','04:55:45'];
        }
        //}
        $returnArr['indepenedentData']    =  array('monthsTimeData'=>$monthsTimeData,'monthArr'=>$monthArr);

        // return to dashboard blade
         return json_encode(array('data'=>$returnArr));
    }

    public function reportAllIndex($id){

            if($id == '0') {
                $sessionReportId = "";
            } else {
                $sessionReportId =  Session::put( 'report_school_id', $id);
            }

        return json_encode(array('data'=>$id));
    }

    //developed by momit
    public function dashboardContent($period)
    {
        $admin_user_id  = Auth::user()->id;
		$returnArr      = array();

        // get the total data from db
        if($period == 'this_year'){
            $dateYear = date("Y");
        } else {
            $dateYear = (date("Y")-1);
        }

        $totalSchool    = School::whereYear('created_at', '=', $dateYear)->count();
        $totalStudents  = Student::whereYear('created_at', '=', $dateYear)->count();
        $totalQuizzes   = Quiz::whereYear('created_at', '=', $dateYear)->count();
//        $sql = "SELECT AVG(user_logs.total_time) AS avg_times,
//                        SUM(TIME_TO_SEC(user_logs.total_time))
//                        FROM user_logs
//                        INNER JOIN users
//                        ON user_logs.user_id = users.id";
        //WHERE ( (users.id = "7") && (user_logs.activity_type_ID LIKE '8')
        $sql = "SELECT AVG(total_time) avg_time
                FROM (
                SELECT user_id, SUM(TIME_TO_SEC(total_time)) total_time
                FROM user_logs where year(created_at) = $dateYear
                GROUP BY user_id) AS a";
        $total_avg_time = DB::select($sql);
        foreach ($total_avg_time as $avg_times){
            $asb = $avg_times->avg_time;
        }
       $avg_timefinal =  $this->timeHoureMinitesSec($asb);
        $totalStatistics['total_school']   = $totalSchool;
        $totalStatistics['total_students'] = $totalStudents;
        $totalStatistics['total_avg_time'] = $avg_timefinal;
        $totalStatistics['total_quiz']     = $totalQuizzes;
        $returnArr['totalStatisticsData']  = $totalStatistics;

        // get data frgom db: month wise total time and avg time and organize data like below
        $data = array();
        for ($i = 12; $i >= 1; $i--) {
            $month      = Carbon::today()->subMonth($i);
            $year       = Carbon::today()->subMonth($i)->format($dateYear);
            $firstday   = date($dateYear.'-'.($i).'-01');
            $lastday    = date($dateYear.'-'.($i).'-t');
            $school_id  = Session::get('report_school_id');
            $time       = $this->calculateTotalTime($firstday, $lastday, $school_id);
            $timeavg    = $this->calculateAvgTime($firstday, $lastday, $school_id);

            $secs           = $time % 60;
            $hrs            = $time / 60;
            $mins           = $hrs % 60;
            $hrs            = $hrs / 60;
            // avg
            $avgsecs           = $timeavg % 60;
            $avghrs            = $timeavg / 60;
            $avgmins           = $avghrs % 60;
            $avghrs            = $avghrs / 60;

            $studentRegistrationBarchartdata[$month->shortMonthName.', '.substr( $year, -2)]  = sprintf('%02d',$hrs)."*".sprintf('%02d:%02d:%02d',$avghrs , $avgmins , $avgsecs);

        }
        $returnArr['barchartData']  = $studentRegistrationBarchartdata;

        $date = \Carbon\Carbon::now();
        $lastMonth =  $date->subMonth()->format('m'); // 11

        //get data from db: Active students and last month's active students
        $totalThisMonthStudents         = User::where('type', 'Student')->where('created_at','<',date('Y-m-d'))->count();
        $totalThisMonthStudentsActive   = User::where('type', 'Student')->whereMonth('updated_at','=',date('m'))->count();
        $thisMonthTotalStudents         = $totalThisMonthStudents;
        $thisMonthActiveStudents        = $totalThisMonthStudentsActive;
        if($thisMonthTotalStudents == 0){
            $thisMonthActiveStudentsPercent = 1;
        }else {
            $thisMonthActiveStudentsPercent = number_format(($thisMonthActiveStudents*100)/$thisMonthTotalStudents);
        }

        $totalLastMonthStudents         = User::where('type', 'Student')->where('created_at','<',date('Y-m-d', strtotime('last day of previous month')))->count();
        $totalLastMonthStudentsActive   = User::where('type', 'Student')->whereMonth('updated_at','=',$lastMonth)->count();
        $lastMonthTotalStudents         = $totalLastMonthStudents;
        $lastMonthActiveStudents        = $totalLastMonthStudentsActive;
        if($thisMonthTotalStudents == 0){
            $lastMonthActiveStudentsPercent = 0;
        }else {
            $lastMonthActiveStudentsPercent = ($lastMonthTotalStudents!=0)?number_format(($lastMonthActiveStudents * 100)/$lastMonthTotalStudents):0;
        }
        $activeStudents['this_month']   =  $thisMonthActiveStudentsPercent;
        $activeStudents['last_month']   =  $lastMonthActiveStudentsPercent;
        $returnArr['activeStudentsData']=  $activeStudents;


        //-------------------------------------- school status -----------------------------------------
        $schoolSql = "SELECT AVG(score) AS avg_score, count(student_id) AS student_count, count(quiz_id) AS quiz_conunt, school_name, school_id,school_logo
        FROM (
            SELECT qs.id, student_id,quiz_id,score,st.first_name, s.name as school_name, s.school_logo as school_logo, st.school_id AS school_id
            FROM quiz_students qs
           /* LEFT JOIN user_logs u on  u.id = ul.user_id
            LEFT JOIN users u on  u.id = ul.user_id */
            LEFT JOIN students st ON st.id = qs.student_id
            LEFT JOIN schools s ON s.id=st.school_id
            WHERE retake='No' /*AND Year(taken_date) = $dateYear */
        )A
        GROUP BY school_name
        ORDER BY avg_score DESC LIMIT 5";
        $sqlSchools = DB::select($schoolSql);

//        $totalTeachers  = Teacher::where('school_id',$school->id)->count();
//        $total_avg_time = User::where('type','Student')->where('school_id',$school->id)->avg(DB::raw("TIME_TO_SEC(total_login_time)"));
        $return_arr_school = array();
        foreach ($sqlSchools as $sqlSchool){
            $schoolData['logo']             =  $sqlSchool->school_logo;
            $schoolData['id']               =  $sqlSchool->school_id;
            $schoolData['name']             =  $sqlSchool->school_name;
            $schoolData['total_students']   =  $sqlSchool->student_count;
            $schoolData['total_teachers']   =  User::where('type','Teacher')->where('school_id',$sqlSchool->school_id)->count();
            $schoolData['total_quizes']     =  $sqlSchool->quiz_conunt;
            $schoolData['agv_time']         =  0;
            $schoolData['avg_score']        =  number_format($sqlSchool->avg_score,2);
            $return_arr_school[]            =  $schoolData;
        }
        $returnArr['schoolData']      =  $return_arr_school;
    //-------------------------------------- school status  end -----------------------------------------

     //-------------------------------------- Leaderboards  -----------------------------------------
        $leaderSchool = "SELECT SUM(TIME_TO_SEC(ul.total_time)) AS total_time,  u.school_id, s.name from user_logs ul
        LEFT JOIN users u on  u.id = ul.user_id
        LEFT JOIN schools s ON s.id=u.school_id
        WHERE ul.total_time IS NOT NULL AND  u.`type`='student' AND  YEAR(login_time)='$dateYear'
        GROUP BY s.id
        ORDER BY total_time DESC
        LIMIT 5";
        $leaderSchoolSqls = DB::select($leaderSchool);

        $return_arr = array();
        $counter=1;
        foreach ($leaderSchoolSqls as $leaderSchoolSql) {
            $total_time         = $this->timeHoureMinitesSec($leaderSchoolSql->total_time);
            $data['id']         = $leaderSchoolSql->school_id;
            $data['total_time'] = $total_time;
            $data['color_code']  = ($leaderSchoolSql->school_id == Auth::user()->school_id) ? 'bg-warning':'';
            $data['serial']     = $counter++;
            $data['name']       = $leaderSchoolSql->name;
            $return_arr[]       = $data;
        }
            $returnArr['leaderSchoolData'] = $return_arr;

        // return to dashboard blade
         return json_encode(array('data'=>$returnArr));
    }

    public function adminSchoolOverView(){
        $data['page_title'] 	= $this->page_title;
        $data['module_name']	= "Report";
        $data['sub_module']		= "Admin School Overview";

        $admin_user_id  		= Auth::user()->id;
        $add_action_id  		= 1;
        $add_permission 		= $this->PermissionHasOrNot($admin_user_id,$add_action_id);
        $data['actions']['view_permission'] = $add_permission;

        return view('report.admin-school-overview', $data);
    }

    public function adminSchoolOverviewAjax(){

        $schools        = School::where('status','Active')->orderBy('id','desc')->limit(5)->get();
        $schoolDatas    = $schools->map(function($school){
            $totalStudents  = Student::where('school_id',$school->id)->count();
            $totalTeachers  = Teacher::where('school_id',$school->id)->count();
            $totalQuizzes   = Quiz::where('school_id',$school->id)->count();

            $total_avg_time = User::where('type','Student')->where('school_id',$school->id)->avg(DB::raw("TIME_TO_SEC(total_login_time)"));
            $userscore = User::where('type','Student')->where('school_id',$school->id)->with('quiz_students')
                ->whereHas("quiz_students", function($query) {
                    $query->select(array(
                        "student_id",
                        DB::raw("AVG(quiz_students.score) AS average_score"),
                    ))->groupBy("quiz_students.student_id","users.typable_id");
                });

            $secs           = $total_avg_time % 60;
            $hrs            = $total_avg_time / 60;
            $mins           = $hrs % 60;
            $hrs            = $hrs / 60;

            $schoolData = array();
            $schoolData['logo']             =  ($school->school_logo==null)?"":$school->school_logo;
            $schoolData['id']               =  $school->id;
            $schoolData['name']             =  $school->name;
            $schoolData['total_students']   =  $totalStudents;
            $schoolData['total_teachers']   =  $totalTeachers;
            $schoolData['total_quizes']     =  $totalQuizzes;
            $schoolData['agv_time']         =  sprintf('%02d:%02d:%02d',$hrs , $mins , $secs);
            $schoolData['avg_score']        =  '75';
            return $schoolData;
        });
        return json_encode(['schoolData'=>$schoolDatas]);
    }

    public function topList(){
        $colors = array("red", "green", "blue", "yellow");

        foreach ($colors as $color){

            echo $color.'<br>';

        }

    }

}
