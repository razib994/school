<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserLog extends Model
{
    protected $fillable = [
        'session_id', 'user_id', 'login_time', 'logout_time', 'total_time'
    ];

    public function user(){
        $this->belongsToMany('App\Models\User','userlogs');
    }
}
