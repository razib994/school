<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class QuizAnswer extends Model
{
    protected $fillable = ['quiz_student_id','question_id', 'answer_date', 'answered', 'answer', 'mark', 'Retake', 'time_duration'];

    public function question(){
        return $this->belongsTo(Question::class, 'question_id', 'id');
    }
    public function quiz_answer_options(){
        return $this->hasMany(QuizAnswerOption::class, 'quiz_answer_id', 'id');
    }
}
