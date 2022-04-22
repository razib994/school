<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $fillable = [
        'school_id','class_id','student_no', 'address', 'email', 'contact_no', 'first_name', 'middle_name', 'last_name', 'dob', 'gender', 'parent_name', 'parent_contact_no', 'parent_email', 'remarks', 'status'
    ];

    public function users(){
        return $this->hasMany(User::class,'typable_id');
    }
    public function student_classes(){
        return $this->hasMany(StudentClass::class,'id','student_id');
    }
    public function classes(){
        return $this->belongsToMany(Classe::class,'student_classes','student_id','class_id')->withPivot('status');
    }
    public function student_subjects(){
        return $this->belongsToMany('App\Models\ClassSubject','student_subjects','student_id', 'class_subject_id')->withPivot('class_subject_id');
    }

    public function user(){
        return $this->hasOne(User::class,'typable_id');
    }
    public function student_subjectes(){
        return $this->hasMany(StudentSubject::class, 'student_id','id')->where('status','Active');;
    }
    public function classe(){
        return $this->hasOne(Classe::class,'id','class_id');
    }
    public function school(){
        return $this->belongsTo(School::class,'school_id','id');
    }
    public function quiz(){
        return $this->belongsTo(Quiz::class);
    }
    public function quiz_students(){
        return $this->hasMany(QuizStudent::class, 'student_id','id')->where('status','Active');
    }
}
