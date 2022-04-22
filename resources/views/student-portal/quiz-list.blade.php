@extends('student-portal.layout.master')
@section('content')
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
<div class="app-main__outer" style="background-image: url('../assets/theme/assets/images/sidebar/stdbackground.jpg'); background-size: cover;">
    <div class="app-main__inner">
        <div class="app-page-title margin-bottom-0">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div>
                        <div class="page-title-head center-elem">
                            <span class="d-inline-block pr-2">
                                <i class="pe-7s-notebook icon-gradient bg-mean-fruit"></i>
                            </span>
                            <span class="d-inline-block">Quiz List</span>
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
                                        <a href="{{url('dashboard')}}">Dashboard</a>
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
        <div class="main-card mb-3 card card-border " style="background-color: lightgreen;">
            <!--<div class="card-header bg-success text-white">Quiz List</div>-->
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2">
                        <div class="grid-menu grid-menu-3 col">
                            <ul class="tabs-animated-shadow tabs-animated nav quiz-subject">
                                @foreach($studentSubjects as $studetnSubject)
                                    <li class="nav-item" style="border-bottom: 1px solid #ddd;">
                                        <a role="tab" class="nav-link show block-element-btn-example-1 quiz-subject"
                                           id="tab-c-0" data-toggle="tab"
                                           onclick="subjectQuiz({{$studetnSubject->class_subjects->subjects->id}})"
                                           href="#quizSubject{{$studetnSubject->class_subjects->subjects->id}}"
                                           aria-selected="true">
                                            <input type="hidden" id="subjuct_id"
                                                   value="{{$studetnSubject->class_subjects->subjects->id}}"/>
                                            <span> <b
                                                    style="font-size: 28px;"> {{  implode('', array_map(function($v) { return $v[0]; }, explode(' ', $studetnSubject->class_subjects->subjects->subject_name))) }} </b> <br> {{ $studetnSubject->class_subjects->subjects->subject_name }}</span>
                                        </a>
                                    </li>
                            @endforeach
                        </div>
                    </div>
                    <div class="col-md-10 ">
                        <div class="main-card card">
                            <div class="no-gutters row margin-bottom-0  margin-top-15" style="border-bottom: 1px solid #ddd;">
                                <div class="col-md-12 col-lg-4">
                                    <ul class="list-group list-group-flush">
                                        <li class="bg-transparent list-group-item">
                                            <div class="widget-content p-0">
                                                <div class="widget-content-outer">
                                                    <div class="widget-content-wrapper">
                                                        <div class="widget-content-left">
                                                            <div class="widget-heading">Total Quiz</div>
                                                            <div class="widget-subheading">All quiz</div>
                                                        </div>
                                                        <div class="widget-content-right">
                                                            <div class="widget-numbers text-success"> {{ $count }}</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-12 col-lg-4">
                                    <ul class="list-group list-group-flush">
                                        <li class="bg-transparent list-group-item">
                                            <div class="widget-content p-0">
                                                <div class="widget-content-outer">
                                                    <div class="widget-content-wrapper">
                                                        <div class="widget-content-left">
                                                            <div class="widget-heading"> Total Score</div>
                                                            <div class="widget-subheading">Total Quiz Score</div>
                                                        </div>
                                                        <div class="widget-content-right">
                                                            <div class="widget-numbers text-danger">{{$calculateScore}}%
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>
                                </div>
                                <div class="col-md-12 col-lg-4">
                                    <ul class="list-group list-group-flush">
                                        <li class="bg-transparent list-group-item">
                                            <div class="widget-content p-0">
                                                <div class="widget-content-outer">
                                                    <div class="widget-content-wrapper">
                                                        <div class="widget-content-left">
                                                            <div class="widget-heading"> Not Attend</div>
                                                            <div class="widget-subheading">Total quiz Attend</div>
                                                        </div>
                                                        <div class="widget-content-right">
                                                            <div class="widget-numbers text-primary">{{ $pendding }}</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="main-card card">
                            <div class="no-gutters row"  style="border-bottom: 1px solid #ddd;">
                                <div class="col-md-12 col-lg-4">
                                    <ul class="list-group list-group-flush">
                                        <li class="bg-transparent list-group-item">
                                            <div class="widget-content p-0">
                                                <div class="widget-content-outer">
                                                    <div class="widget-content-wrapper">
                                                        <div class="widget-content-left">
                                                            <div class="widget-heading ">Subject Quiz</div>
                                                            <div class="widget-subheading text-danger">Total Subject Quiz</div>
                                                        </div>
                                                        <div class="widget-content-right">
                                                            <div class="widget-numbers "><span id="per_subject_quiz_total"></span></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-12 col-lg-4">
                                    <ul class="list-group list-group-flush">
                                        <li class="bg-transparent list-group-item">
                                            <div class="widget-content p-0">
                                                <div class="widget-content-outer">
                                                    <div class="widget-content-wrapper">
                                                        <div class="widget-content-left">
                                                            <div class="widget-heading"> Subject Quiz Score</div>
                                                            <div class="widget-subheading">Total Subject Quiz Score</div>
                                                        </div>
                                                        <div class="widget-content-right">
                                                            <div class="widget-numbers text-danger"><span id="per_subject_quiz_score"></span>%
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>
                                </div>
                                <div class="col-md-12 col-lg-4">
                                    <ul class="list-group list-group-flush">
                                        <li class="bg-transparent list-group-item">
                                            <div class="widget-content p-0">
                                                <div class="widget-content-outer">
                                                    <div class="widget-content-wrapper">
                                                        <div class="widget-content-left">
                                                            <div class="widget-heading"> Subject Quiz Attend</div>
                                                            <div class="widget-subheading">Total Subject quiz Attend</div>
                                                        </div>
                                                        <div class="widget-content-right">
                                                            <div class="widget-numbers text-primary"><span id="per_subject_quiz_attend"></span></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="tab-content element-block-example margin-top-15" id="quizStudentData">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

@endsection

@section('JScript')
    <script>const dragArea = document.querySelector(".wrappers");
        new Sortable(dragArea, {
            animation: 350
        });</script>
    <script src="{{ asset('assets/js/page-js/admin/profile.js')}}"></script>
    <script src="{{ asset('assets/js/page-js/quiz/quiz-attend.js')}}"></script>

@endsection

