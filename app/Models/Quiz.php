<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Quiz extends Model
{
    protected $fillable = ['school_id','year_id', 'class_id', 'subject_id', 'topic_id', 'title', 'instruction', 'attachment', 'remote_media_file_link', 'total_question', 'status'];

    public function subjects(){
        return $this->belongsTo(Subject::class,'subject_id','id');
    }
    public function year(){
        return $this->belongsTo(Keystage::class,'year_id','id');
    }
    public function classes(){
        return $this->belongsTo(Classe::class,'class_id','id');
    }
    public function questions(){
        return $this->hasMany(Question::class, 'quiz_id', 'id');
    }
     public function students(){
            return $this->hasMany(Student::class, 'class_id', 'class_id');
        }
    public function topic(){
        return $this->belongsTo(Topic::class,'topic_id','id');
    }
    public function quiz_students(){
        return $this->hasMany(QuizStudent::class,'quiz_id','id');
    }
    


}

