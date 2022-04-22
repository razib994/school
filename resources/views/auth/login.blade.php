@extends('auth.layout.login-master')
@section('login-content')
    <style>
        .app-login-box .app-logo {
            margin-top: 2.6rem;
        }
    </style>
<div class="app-container">
    <div class="h-100">
        <div class="h-100 no-gutters row">
            <div class="h-100 d-flex bg-white justify-content-center align-items-center col-md-12 col-lg-12"
            style="background-image: url('../assets/theme/assets/images/sidebar/login.jpg'); background-size: cover;"
            >
                <div class="mx-auto app-login-box col-sm-12 col-md-10 col-lg-6"  style="padding-left:10% !important;" >
                    <h4 class="mb-0">
						<br>
                        <span class="d-block"><b>&nbsp;</b></span>
                        <span class="d-block"><b>&nbsp;</b></span>
                        <span class="d-block"><b>&nbsp;</b></span>
                        <span>&nbsp;</span></h4>
                    <h6 class="mt-3">&nbsp;</h6>
                    <div class="app-logo text-center"><img src="{{ asset('assets/images/logo.png')}}" /> </div>
                    <div>
                        <form class="form-login" action="{{ url('auth/post/login') }}" method="post" style="background: #f7eddf; padding: 10px; border-radius: 8px; opacity: .9">
                            <input type="hidden" name="_token" value="{{csrf_token()}}">
                            <div class="form-row">
                                @if(Session::has('message'))
                                <div class="alert alert-success btn-squared col-md-12" role="alert">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    {{ Session::get('message') }}
                                </div>
                                @endif
                                @if(Session::has('errormessage'))
                                <div class="alert alert-danger btn-squared  col-md-12" role="alert">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    {{ Session::get('errormessage') }}
                                </div>
                                @endif
                            </div>
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="position-relative form-group"><label for="exampleEmail" class="">Username</label><input name="user_name" id="exampleEmail" placeholder="Username here..." type="text" class="form-control"></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="position-relative form-group"><label for="examplePassword" class="">Password</label><input name="password" id="examplePassword" placeholder="Password here..." type="password" class="form-control"></div>
                                </div>
                            </div>

                            <div class="d-flex align-items-center">
                                <div class="ml-auto">
                                    <a href="{{url('/auth/forget/password')}}" class="btn-lg btn btn-link"  style="color: #591a0b;" >Recover Password</a>
                                    <button class="btn btn-primary btn-lg" style="background-color: #591a0b; border-color: #792d16;">Login to Dashboard</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
