<?php
namespace App\Traits;
use App\Models\Assignment;
use App\Models\Question;
use App\Models\QuizAnswer;
use App\Models\QuizStudent;

trait QuizQuestionTrait
{
    public function quizStudentUpdate($studentQuizId){
        $quizStudent                = QuizStudent::where('id',$studentQuizId)->first();
        $quizStudent->is_taken      = ($quizStudent->is_taken=='No') ? 'Yes':'Yes';
        $quizStudent->attempt       = 1;
        $quizStudent->taken_date    = date("Y-m-d h:i:sa");
        $quizStudent->status        = 'Running';
        $quizStudent->update();
        return $quizStudent->id;
    }

    public function quizStudentCreate($studentQuizId){
        $studentQuiz                = QuizStudent::where('id',$studentQuizId)->first();

        $quizStudent                = new QuizStudent();
        $quizStudent->student_id    = $studentQuiz->student_id;
        $quizStudent->quiz_id       = $studentQuiz->quiz_id;
        $quizStudent->is_taken      = 'Yes';
        $quizStudent->attempt       = 1;
        $quizStudent->taken_date    = date("Y-m-d h:i:sa");
        $quizStudent->retake        = 'Yes';
        $quizStudent->score         = 0;
        $quizStudent->count         = 'Yes';
        $quizStudent->status        = 'Running';
        $quizStudent->save();
        return $quizStudent->id;
    }

    public function quizAnswerFieldCreate($studentQuizId){
    $quizStudent                    = QuizStudent::where('id',$studentQuizId)->first();
    $questions                      = Question::where('quiz_id',$quizStudent->quiz_id)->get();
    foreach ($questions as $question){
    $quizattened = new QuizAnswer();
    $quizattened->quiz_student_id   = $studentQuizId;
    $quizattened->question_id       = $question->id;
    $quizattened->answered          = "No";
    $quizattened->answer            = "No Answer";
    $quizattened->mark              = 0.00;
    $quizattened->Retake            = "No";
    $quizattened->save();
        }
    }

    public function calculateScore($quizQuestionsId, $quizStudentId){
        $question = Question::where('id',$quizQuestionsId)->first();
        $total = 0;
        $quizAnswertotal = 0;

        $quizAnswers = QuizAnswer::with('question')->where('quiz_student_id',$quizStudentId)->get();

        foreach ($quizAnswers as $quizAnswer){
            $quizAnswersubtotal     = $quizAnswer->mark;
            $quizAnswertotal        = $quizAnswertotal + $quizAnswersubtotal;
            $subtotal               = $quizAnswer->question->mark;
            $total                  = $total + $subtotal;
        }
        $calculate = ($quizAnswertotal/$total)*100;
        $quizStudent                = QuizStudent::where('id',$quizStudentId)->first();
        $quizStudent->score         = $calculate;
        $quizStudent->update();

    }

    public function loadCurrentQuestionId($studentQuizId)
    {
        $quizAnswer         = QuizAnswer::where('quiz_student_id', $studentQuizId)->where('answered','No')->Orderby('id','ASC')->first();
        $currentQuestionId  = (!empty($quizAnswer)) ? $quizAnswer->question_id : 'Finished';
        return $currentQuestionId;
    }

    public function skippedQuizAnswer($quizStudentId, $currentQuestionId){
            $quizAnswer = QuizAnswer::where('quiz_student_id',$quizStudentId)->where('question_id',$currentQuestionId)->first();
            if($quizAnswer->answer == 'No Answer'){
                $quizAnswer->answered      = 'Yes';
                $quizAnswer->answer        = 'Skipped';
                $quizAnswer->mark          =  0.00;
                $quizAnswer->update();

                $quizStudent    = QuizStudent::where('id',$quizStudentId)->first();
                if($quizStudent->assignment_id){
                    $assignment             = Assignment::where('id',$quizStudent->assignment_id)->where('is_exam','Yes')->first();
                    $assignment->taken_time = date('H:i:s',strtotime($assignment->taken_time) + 0);
                    $assignment->final_score = ($assignment->final_score + 0);
                    $quizStudents = QuizStudent::where('assignment_id',$quizStudent->assignment_id)->where('status','!=','Finished')->first();
                    dd($quizStudents);
                    if($quizStudent->is_taken == 'Yes'){
                        $quizStudents->completed_status = 'Yes';
                    }
                    $assignment->update();
                }

            }
    }

    public function quizAnswerUpdate($request, $answer, $currentQuestionId, $quizStudentId){
        $question                      = Question::where('id',$currentQuestionId)->first();
        $quizAnswer                    = QuizAnswer::where('quiz_student_id',$quizStudentId)->where('question_id',$currentQuestionId)->where('answer','No Answer')->first();
        if($answer == 'true'){
            $quizAnswer->answered      = 'Yes';
            $quizAnswer->answer        = 'Right';
            $quizAnswer->answer_date   =  date("Y-m-d h:i:sa");
            $quizAnswer->time_duration =  $request['time_duration'];
            $quizAnswer->mark          =  $question->mark;
            $quizAnswer->update();
        }else {
            $quizAnswer->answered      = 'Yes';
            $quizAnswer->answer        = 'Wrong';
            $quizAnswer->answer_date   =  date("Y-m-d h:i:sa");
            $quizAnswer->time_duration =  $request['time_duration'];
            $quizAnswer->mark          =  0.00;
            $quizAnswer->update();
        }
        $quizAnswersum  = QuizAnswer::where('quiz_student_id',$quizStudentId)->sum('time_duration');
        $quizStudent    = QuizStudent::where('id',$quizStudentId)->first();
        $assignment = Assignment::where('id',$quizStudent->assignment_id)->first();

        if(!(empty($quizStudent->assignment_id)) && $assignment->is_exam=='Yes'){
            $mark                   = (($answer == 'true') ? $question->mark:0);
            $assignment             = Assignment::where('id',$quizStudent->assignment_id)->where('is_exam','Yes')->first();
            $durationTime           = strtotime($request['time_duration']);
            $time                   = (strtotime($assignment->taken_time) + strtotime($request['time_duration']));
            if($assignment->question_time_limit >= date('H:i:s',$time)){
                $assignment->taken_time     = date('H:i:s',strtotime($assignment->taken_time) + strtotime($request['time_duration']));
                $assignment->final_score    = ($assignment->final_score + $mark);
                $assignment->update();
                return $assignment->id;
            } else {
                // Finished the Assignment Here
                return "Finished";
            }
        }
        $quizStudent->quiz_take_duration    = date('H:i:s',strtotime($quizStudent->quiz_take_duration) +strtotime($request['time_duration']));
        $quizStudent->update();

        return 0;

    }

    public function quizFinishedOrNOt($quizStudentId) {
        $quizAnswer                             = QuizAnswer::where('quiz_student_id',$quizStudentId)->where('answered','No')->first();
        $quizAnswersum                          = QuizAnswer::where('quiz_student_id',$quizStudentId)->sum('time_duration');
        if(empty($quizAnswer)){
            $quizStudent                        = QuizStudent::find($quizStudentId);
            $quizStudent->status                = 'Finished';
            $quizStudent->quiz_take_duration    = $quizAnswersum;
            $quizStudent->update();
            return 1;
        }
        return 0;
    }

    public function showQuestionInstanteUpdate($quizStudentId, $currentQuestionId){
        $quizAnswer                 = QuizAnswer::where('quiz_student_id', $quizStudentId)->where('question_id', $currentQuestionId)->where('answer','No Answer')->first();
        if($quizAnswer == null){
            $quizStudent = QuizStudent::find($quizStudentId);
            $quizStudent->status = 'Finished';
            $quizStudent->update();
        }else {
            $quizAnswer->answered       = 'Yes';
            $quizAnswer->answer_date    = date("Y-m-d h:i:sa");
            $quizAnswer->time_duration  = '00:02:00';
            $quizAnswer->update();
        }
        $quizAnswersum  = QuizAnswer::where('quiz_student_id',$quizStudentId)->sum('time_duration');
        $quizStudent    = QuizStudent::where('id',$quizStudentId)->first();
        $quizStudent->quiz_take_duration    = $quizAnswersum;
        $quizStudent->update();
    }

}
