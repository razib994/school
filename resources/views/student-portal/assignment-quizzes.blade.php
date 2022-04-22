@extends('student-portal.layout.master')
@section('style')
    <style type="text/css" media="screen">
        hr {
            margin: 0;
        }

        .icon-fonts i {
            font-size: 30px;
            padding: 15%;
        }

        .quiz-subject .nav-item {
            width: 100% !important;
            text-align: center !important;
        }

    </style>
@endsection
@section('content')
<div class="app-main__outer" style="background-image: url({{ asset('assets/theme/assets/images/sidebar/stdbackground.jpg')}}); background-size: cover;">
        <div class="app-main__inner">
            <div class="app-page-title margin-bottom-0">
                <div class="page-title-wrapper">
                    <div class="page-title-heading">
                        <div>
                            <div class="page-title-head center-elem">
                            <span class="d-inline-block pr-2">
                                <i class="pe-7s-users icon-gradient bg-mean-fruit"></i>
                            </span>
                                <span class="d-inline-block">Assignments Quizzes</span>
                            </div>
                            <div class="page-title-subheading opacity-10">
                                <nav class="" aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a>
                                                <i aria-hidden="true" class="fa fa-home"></i>&nbsp;Ace Learning
                                            </a>
                                        </li>
                                        <li class="breadcrumb-item">
                                            <a href="{{url('dashboard')}}">Dashboards</a>
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
                </div>
            </div>
            <div class="row  card-border bg-warm-flame" style="border-radius: 0.25rem; background-color: #fff;
        background-clip: border-box;     border: 1px solid rgba(26, 54, 126, 0.125);">
                <input type="hidden"  id="assignment_id" value="{{ $id }}">
                <div class="col-md-12 margin-top-15">
                    <div class="main-card card">  
                        <div class="no-gutters row p-2  ">
                            <div class="col-md-4 col-lg-4">
                                <ul class="list-group list-group-flush">
                                    <li class="bg-transparent list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-outer">
                                                <div class="widget-content-wrapper">
                                                    <div class="widget-content-left">
                                                        <div class="widget-heading"> Assignment Quizes</div>
                                                        <div class="widget-subheading">Total Assignment Quizzes</div>
                                                    </div>
                                                    <div class="widget-content-right">
                                                        <div class="widget-numbers text-danger"><span id="total_per_assignment_quiz"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                </ul>
                            </div>
                            <div class="col-md-4 col-lg-4">
                                <ul class="list-group list-group-flush">
                                    <li class="bg-transparent list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-outer">
                                                <div class="widget-content-wrapper">
                                                    <div class="widget-content-left">
                                                        <div class="widget-heading"> Assignment Quizzes Score</div>
                                                        <div class="widget-subheading">Total Assignment Quizzes Score</div>
                                                    </div>
                                                    <div class="widget-content-right">
                                                        <div class="widget-numbers text-danger"><span id="assignment_quizzes_score"></span>%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                </ul>
                            </div>
                            <div class="col-md-4 col-lg-4">
                                <ul class="list-group list-group-flush">
                                    <li class="bg-transparent list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-outer">
                                                <div class="widget-content-wrapper">
                                                    <div class="widget-content-left">
                                                        <div class="widget-heading"> Not Attend</div>
                                                        <div class="widget-subheading">Total Assignment Attend</div>
                                                    </div>
                                                    <div class="widget-content-right">
                                                        <div class="widget-numbers text-danger"><span id="attent_quizzes"></span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 margin-top-15" >
                    <div class="main-card mb-3 card" id="quizAssignments">
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@section('JScript')
    <script src="{{ asset('assets/js/page-js/quiz/assignment-attend.js')}}"></script>

@endsection

