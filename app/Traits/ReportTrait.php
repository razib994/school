<?php
namespace App\Traits;


use App\Models\Quiz;
use App\Models\QuizStudent;
use App\Models\User;
use App\Models\UserLog;
use Illuminate\Support\Facades\DB;

trait ReportTrait
{
public function totalTimeScore($id){
    $subjectTimeScores = Quiz::where('subject_id', $id)->get();
    $time = 0;
    $score = 0;
    foreach ($subjectTimeScores as $subjectTimeScore){
        $time   = QuizStudent::where('quiz_id', $subjectTimeScore->id)->sum(DB::raw("TIME_TO_SEC(quiz_take_duration)"));
        //$time   = $this->calculateTotalTime($subjectTimeScore->id);
        //sum(DB::raw("TIME_TO_SEC(quiz_take_duration"));
        $score  = QuizStudent::where('quiz_id',$subjectTimeScore->id)->avg('score');
    }
        $secs   = $time % 60;
        $hrs    = $time / 60;
        $mins   = $hrs % 60;
        $hrs    = $hrs / 60;
        $return['total_time']   = sprintf('%02d:%02d:%02d',$hrs , $mins , $secs);
        $return['score']        = $score;
    return $return;
}

    // Time Sum
    public function calculateTotalTime($from, $to, $school="", $class="", $subject="", $student="", $department=""){
        $from   = ($from!="")?$from:Date('Y-m-d'); // current years 1st date
        $to     = ($to!="")?$to:Date('Y-m-d'); // todays date

        $toalLogSQL = UserLog::whereBetween('login_time', [$from, $to]);

//        if($school!=""){
//            $toalLogSQL->whereHas('user', function($q) use ($school) {
//                $q->where('school_id',$school);
//            });
//        }

        if($student){
            $user = User::where('typable_id',$student)->where('type','Student');
            $userId = $user->id;
        }

        $totalTimeInSec = $toalLogSQL->sum(DB::raw("TIME_TO_SEC(total_time)"));
        return $totalTimeInSec;
    }

    // Time Avg
    public function calculateAvgTime($from, $to, $school="", $class="", $subject="", $student=""){
        $from   = ($from!="")?$from:Date('Y-m-d'); // current years 1st date
        $to     = ($to!="")?$to:Date('Y-m-d'); // todays date
        $toalLogSQL = UserLog::whereBetween('login_time', [$from, $to]);

//        if($school!=""){
//            $toalLogSQL->whereHas('user', function($q) use ($school) {
//                $q->where('school_id',$school);
//            });
//        }
        if($student){
            $user = User::where('typable_id',$student)->where('type','Student');
            $userId = $user->id;
        }
        // $toalLogSQL->where('user_id',$userId);
        $totalTimeInSec = $toalLogSQL->avg(DB::raw("TIME_TO_SEC(total_time)"));
        return $totalTimeInSec;
    }

    public function timeHoureMinitesSec($data){
        $secs           = $data % 60;
        $hrs            = $data / 60;
        $mins           = $hrs % 60;
        $hrs            = $hrs / 60;
        return  (sprintf('%02d:%02d:%02d',$hrs , $mins , $secs));
    }
}
