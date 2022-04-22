<?php

namespace App\Jobs;

use App\Mail\UsersRegistrationConfirmationMail;
use App\Models\Student;
use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;

class UsersRegistrationConfirmationMailJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
    public $userID, $schoolID;
//    protected $user;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($userID, $schoolID)
    {
//        $this->user = $user;
        $this->userID   = $userID;
        $this->schoolID = $schoolID;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $user     = User::find($this->userID);
        if($user->type == 'School'){
            $userEmail = $user->email;
        }elseif($user->type == 'Teacher'){
            $userEmail = $user->email;
        }else {
            $student    = Student::find($user->typable_id);
            $userEmail  = [(isset($student['email']))?$student['email']: $student['parent_email'], $student['parent_email']];
        }
        Mail::to($userEmail)->send( new UsersRegistrationConfirmationMail($this->userID, $this->schoolID));

//     $student = Student::find($this->studentID);
//        $userEmail = [(isset($student['email']))?$student['email']: $student['parent_email'], $student['parent_email']];
//        Mail::to($userEmail)->send( new UsersRegistrationConfirmationMail($this->studentID, $this->schoolID));
//
    }
}
