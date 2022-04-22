<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    protected $fillable = [
        'message_id','message','message_from','message_to','attachment','is_seen','status'
    ];
    public function messagefrom_user()
    {
        return $this->belongsTo('App\Models\User', 'message_from', 'id' );
    }
}
