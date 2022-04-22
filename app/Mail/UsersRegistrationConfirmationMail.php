<?php

namespace App\Mail;
use App\Models\School;
use App\Models\Student;
use App\Models\Teacher;
use http\Client\Curl\User;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Log;

class UsersRegistrationConfirmationMail extends Mailable
{
    use Queueable, SerializesModels;
    public $userID, $schoolID;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($userID, $schoolID)
    {
        $this->userID    = $userID;
        $this->schoolID  = $schoolID;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $user       = \App\Models\User::find($this->userID);
        $school     = School::find($this->schoolID);

        if($user->type=="School") {
            $school = School::with(['user' => function ($query) {
                $query->where('type', 'School');
            }])->find($user->school_id);
            return $this->subject($school['name'].' Confirmation Users Registration as School Admin')
                ->markdown('mails.users-school-email-confirmation')
                ->with([
                    'schooladmin'   => $school,
                    'school'        => $school,
                ]);

        }
        elseif($user->type=="Teacher") {
            $teacher  = Teacher::with(['user' => function ($query) {
                $query->where('type', 'Teacher');
            }])->findOrFail($user->typable_id);
            return $this->subject($school['name'].' Confirmation Users Registration as Teacher')
                ->markdown('mails.users-teacher-email-confirmation')
                ->with([
                    'teacher'   => $teacher,
                    'school'    => $school,
                ]);

        }
        elseif ($user->type=="Admin") {
            $super_admin = \App\Models\User::where('type', 'Admin')->findOrFail($user->id);
            return $this->subject(' Confirmation Users Registration as Super Admin')
                ->markdown('mails.users-email-super-admin-confirmation')
                ->with([
                    'super_admin'   => $super_admin,
                ]);
        }
        else {
            $student = Student::with('classes.KeyStages','classes.student_classes.student_subjects.class_subjects.subjects','user')->findOrFail($user->typable_id);
            return $this->subject($school['name'].' Confirmation Users Registration as Student')
                ->markdown('mails.users-email-confirmation')
                ->with([
                    'student'   => $student,
                    'school'    => $school,
                ]);
        }
    }
}
