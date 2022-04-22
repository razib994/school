@extends('auth.layout.login-master')
@section('login-content')
<div class="app-container">
    <div class="h-100">
        <div class="h-100 no-gutters row">
            <div class="h-100 d-flex bg-white justify-content-center align-items-center col-md-12 col-lg-12"
            style="background-image: url('../assets/theme/assets/images/sidebar/login.jpg'); background-size: cover;"  
            >
                <div class="mx-auto app-login-box col-sm-12 col-md-10 col-lg-6"  style=" padding-left:10% !important;  " >                    
                    <h4>
                        <div>Forgot your Password?</div>
                        <span>Use the form below to recover it.</span></h4>
                    <h6 class="mt-3">&nbsp;</h6>
                        
                    <div class="app-logo text-center"><img src="{{ asset('assets/images/logo.png')}}" /> </div>
                    <div>
                        <form class="form-forgot" action="{{url('auth/forget/password')}}" style="background: #f7eddf; padding: 10px; border-radius: 8px; opacity: .9" method="post">
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
                                <div class="col-md-12">
                                    <div class="position-relative form-group"><label for="exampleEmail" class="">Email</label><input name="email" id="exampleEmail" placeholder="Email here..." type="email" class="form-control"></div>
                                </div>
                            </div>
                            <div class="mt-4 d-flex align-items-center"><h6 class="mb-0"><a href="{{url('/auth/login')}}" class="text-primary" style="color: #591a0b !important">Sign in existing account</a></h6>
                                <div class="ml-auto">
                                    <button class="btn btn-primary btn-lg"  style="background-color: #591a0b; border-color: #792d16;">Recover Password</button>
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
