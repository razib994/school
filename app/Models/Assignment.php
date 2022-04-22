<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Assignment extends Model
{
    protected $fillable = ['title','available_from', 'deadline', 'quiz_time_limit', 'question_time_limit', 'multiple_attampt'];

    public function assignmentQuizes(){
        return $this->hasMany(AssignmentQuiz::class,'assignment_id','id');
    }

    public function assignmentStudents(){
        return $this->hasMany(AssignmentStudent::class,'assignment_id','id');
    }

    public function studentsQuizes(){
        return $this->hasMany(QuizStudent::class,'assignment_id','id');
    }

}
