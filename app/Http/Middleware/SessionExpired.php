<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Session\Store;

class SessionExpired
{
    protected $session;
    protected $timeout =5;

    public function __construct(Store $session){
        $this->session = $session;
    }

    public function handle($request, Closure $next){
        $isLoggedIn = $request->path() != 'dashboard/logout';
        if(! session('last_activity'))
            $this->session->put('last_activity', time());
        elseif(time() - $this->session->get('last_activity') > $this->timeout){
            $this->session->forget('last_activity');
            $cookie = cookie('intend', $isLoggedIn ? url()->current() : 'dashboard');
            auth()->logout();
        }
        $isLoggedIn ? $this->session->put('last_activity', time()) : $this->session->forget('last_activity');
        return $next($request);
    }
}
