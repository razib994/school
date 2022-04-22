<?php

namespace App\Traits;

use App\Mail\studentRegistrationConfirmMail;
use App\Models\Assignment;
use App\Models\Classe;
use App\Models\Notice;
use App\Models\Quiz;
use App\Models\Student;
use App\Models\User;
use App\Notification\newStudentCreated;
use App\Notifications\AssignmentsNotification;
use App\Notifications\MessageNotification;
use App\Notifications\NotifiyNotification;
use App\Notifications\QuizzesNotification;
use App\Notifications\studentClassImprovedNotification;
use App\Notifications\TestNotification;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Notification;

trait StudentNotification
{
    public function studentRegistrationNotificationConfirm($studentId){
        $notifyUsers = User::where('typable_id',$studentId)->where('type','Student')->get();
        $student = Student::find($studentId);
        Notification::send($notifyUsers, new TestNotification(array('type'=>'Success', 'studentName'=>$student->first_name, 'studentId'=>$studentId)));
    }

    public function quizzesNotificationConfirm($studentId, $quizID){
        $notifyUsers = User::where('typable_id',$studentId)->where('type','Student')->get();
        $quiz = Quiz::find($quizID);
        Notification::send($notifyUsers, new QuizzesNotification(array('type'=>'Success', 'quizTile'=>$quiz->title, 'studentId'=>$studentId)));
    }

    public function assignmentNotificationConfirm($assignmentID, $studentId){
        $notifyUsers = User::where('typable_id',$studentId)->where('type','Student')->get();
        $assignment = Assignment::find($assignmentID);
        Notification::send($notifyUsers, new AssignmentsNotification(array('type'=>'Success', 'assignmentTitle'=>$assignment->title, 'studentId'=>$studentId)));
    }

    public function studentPassedImprovedNextClass($studentId, $classID){
        $notifyUsers = User::where('typable_id',$studentId)->where('type','Student')->get();
        $class = Classe::find($classID);
        Notification::send($notifyUsers, new studentClassImprovedNotification(array('type'=>'Success', 'className'=>$class->name, 'studentId'=>$studentId)));
    }

    public function messageNotificationConfirm($messageTo, $messageForm){
        $notifyUsers = User::where('id',$messageTo)->get();
        $user = User::find($messageForm);
        Notification::send($notifyUsers, new MessageNotification(array('type'=>'Success', 'user_name'=>$user->first_name, 'messageTo'=>$messageTo)));
    }

    public function notifyNotificationConfirm($notify_id){


        if(Auth::user()->type == 'Admin'){
            $notifyUsers = User::where('type','School')->get();
        }else {
            $notifyUsers = User::where('school_id', Auth::user()->school_id)->where('type','!=','Admin')->where('type','!=','School')->get();
        }
        $notice = Notice::find($notify_id);
        Notification::send($notifyUsers, new NotifiyNotification(array('type'=>'Success', 'notice_title'=>$notice->title, 'notice_id'=>$notice->id)));
    }


}
