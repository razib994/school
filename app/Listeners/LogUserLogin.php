<?php

namespace App\Listeners;

use App\Models\UserLog;
use Illuminate\Auth\Events\Login;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Session;

class LogUserLogin
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
     * @param  Login  $event
     * @return void
     */
    public function handle(Login $event)
    {
        $userlog = new UserLog();
        $userlog->session_id = Session::getId();
        $userlog->user_id = $event->user->id;
        $userlog->login_time = date('Y-m-d H:i:s');
        $userlog->save();
    }
}
