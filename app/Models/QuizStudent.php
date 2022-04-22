<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class QuizStudent extends Model
{
    protected $fillable = ['student_id','quiz_id', 'assignment_id', 'assign_date', 'is_taken', 'attempt', 'score', 'taken_date', 'retake', 'quiz_take_duration'];

    public function student(){
        return $this->belongsTo(Student::class,'student_id','id');
    }
    public function quiz(){
        return $this->belongsTo(Quiz::class,'quiz_id','id');
    }
    public function quiz_answers(){
        return $this->hasMany(QuizAnswer::class,'quiz_student_id','id');
    }
    public function assignment(){
        return $this->belongsTo(Assignment::class,'assignment_id','id');
    }

}
