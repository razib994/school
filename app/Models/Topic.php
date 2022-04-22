<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Topic extends Model
{
    protected $fillable = [
        'topic_name','topic_details','subject_id', 'status'
    ];
    public function subject(){
        return $this->belongsTo(Subject::class,'subject_id');
    }
    public function quizes(){
        return $this->hasMany(Quiz::class,'topic_id','id');
    }
}
