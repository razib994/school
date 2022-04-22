<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\UserLog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;

class SessionController extends Controller
{
    public function autoLogout(){
        //Log::debug("into auto Logout Function");
        $sessions       = \App\Models\Session::all();
        foreach ($sessions as $session){
            //Log::debug("into auto Logout Function".$session->last_activity);
            $session_last_activity  = $session->last_activity;
            $session_u_i            = $session->user_id;
            $time = time() - $session_last_activity;
        if($time > 300) {
            $sessiont_id = Session::getId();
            $userlog = UserLog::where('session_id', $sessiont_id)->first();
            $t_time = strtotime(date('Y-m-d H:i:s')) - strtotime($userlog->login_time);
            $f_time = date('Y-m-d').' '.date('H:i:s',$t_time);
            $userlog->logout_time = date('Y-m-d H:i:s');
            $userlog->total_time  = $f_time;
            $userlog->update();
            Session::flush();
        }
        }
    }
}
