@extends('layout.master')
@section('content')
    <div class="app-main__outer">
        <div class="app-main__inner">
            <div class="app-page-title">
                <div class="page-title-wrapper">
                    <div class="page-title-heading">
                        <div>
                            <div class="page-title-head center-elem">
							<span class="d-inline-block pr-2">
								<i class="pe-7s-users icon-gradient bg-mean-fruit"></i>
							</span>
                                <span class="d-inline-block">Report Dashboard</span>
                            </div>
                            <div class="page-title-subheading opacity-10">
                                <nav class="" aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a>
                                                <i aria-hidden="true" class="fa fa-home"></i>&nbsp;ABP
                                            </a>
                                        </li>

                                        <li class="active breadcrumb-item" aria-current="page">
                                            <a href="{{\Request::url()}}">
                                                {{isset($page_title) ? $page_title : ''}}
                                            </a>
                                        </li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <div class="page-title-actions">
                        @if(\Illuminate\Support\Facades\Auth::user()->type == 'School')
                            <div class="bg-info p-2 text-white">
                                <b>{{$userschool->school->name}}</b>
                                    <input type="hidden" value="{{ \Illuminate\Support\Facades\Session::get('report_school_id') }}" id="school_id" onchange="setSchool()" >
                            </div>
                            @endif
                            @if(\Illuminate\Support\Facades\Auth::user()->type == "Admin")
                            <form action="" method="post">
                                @csrf
                                <select class="form-control" id="school_id" onchange="setSchool()" >
                                    <option value="0"> All Schools </option>
                                    @foreach($schools as $school)
                                    <option value="{{ $school->id }}">{{ $school->name }}</option>
                                    @endforeach

                                </select>
                            </form>

                            @endif


                    </div>
                </div>
            </div>
            <div class="main-card mb-2 card" >
                <div class="card-body">
                    <div class="fade active show" id="report_overview" role="tabpanel"></div>
                </div>
            </div>
        </div>
    </div>
    </div>
@endsection
@section('JScript')
    <script type="text/javascript" src="{{ asset('assets/js/page-js/report/report.js')}}"></script>
@endsection


