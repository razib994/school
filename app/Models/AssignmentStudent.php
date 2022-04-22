<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AssignmentStudent extends Model
{
    protected $fillable = ['student_id','assignment_id'];

    public function student(){
        return $this->belongsTo(Student::class,'student_id','id');
    }
    public function assignments(){
        return $this->hasMany(Assignment::class,'id','assignment_id');
    }

    public function assignment(){
        return $this->belongsTo(Assignment::class,'assignment_id','id');
    }
}
