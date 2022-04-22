<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AssignmentQuiz extends Model
{
    protected $fillable = ['quiz_id','assignment_id'];

    public function quiz(){
        return $this->belongsTo(Quiz::class,'quiz_id','id');
    }
    public function quiz_student() {
        return $this->belongsTo(QuizStudent::class,'quiz_id','quiz_id');
    }
}
