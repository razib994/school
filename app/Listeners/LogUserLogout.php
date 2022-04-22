<?php

namespace App\Listeners;

use App\Models\User;
use App\Models\UserLog;
use Illuminate\Auth\Events\Logout;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Session;

class LogUserLogout
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  Logout  $event
     * @return void
     */
    public function handle(Logout $event)
    {
        $sessiont_id = Session::getId();
        $userlog = UserLog::where('session_id', $sessiont_id)->first();
        $t_time = strtotime(date('Y-m-d H:i:s')) - strtotime($userlog->login_time);
        $f_time = date('Y-m-d').' '.date('H:i:s',$t_time);
        $userlog->logout_time = date('Y-m-d H:i:s');
        $userlog->total_time  = $f_time;
        $userlog->update();

    }
}
