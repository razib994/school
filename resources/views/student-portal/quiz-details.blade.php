@extends('student-portal.layout.master')
@section('content')
@section('style')
       <style type="text/css" media="screen">
        hr {
            margin: 0;
        }
        .bg-question-add {
            background: #16aaff !important;
            color: #fff;
        }
        .quiz-finished {
            border-bottom: 1px solid #ddd;
            padding: 10px 0px;
        }
        .lnr-eye.btn.btn-info {
            margin-top: -12px;
        }

        .image-wrappers{
            background: #fff;
            padding: 25px;
            max-width: 460px;
            width: 100%;
            border-radius: 3px;
            box-shadow: 0px 10px 15px rgba(0,0,0,0.1);
        }
        .image-wrappers .item{
            color: #fff;
            display: flex;
            margin-bottom: 8px;
            padding: 12px 17px;
            background: #304B5F;
            border-radius: 3px;
            align-items: center;
            justify-content: space-between;
        }
        .image-wrappers .item:last-child{
            margin-bottom: 0px;
        }
        .image-wrappers .item .text{
            font-size: 18px;
            font-weight: 400;
        }
        .image-wrappers .item i{
            font-size: 18px;
            cursor: pointer;
        }
        .wrappers{
            background: #fff;
            padding: 25px;
            max-width: 460px;
            width: 100%;
            border-radius: 3px;
            box-shadow: 0px 10px 15px rgba(0,0,0,0.1);
        }
        .wrappers .item{
            color: #fff;
            display: flex;
            margin-bottom: 8px;
            padding: 12px 17px;
            background: #304B5F;
            border-radius: 3px;
            align-items: center;
            justify-content: space-between;
        }
        .wrappers .item:last-child{
            margin-bottom: 0px;
        }
        .wrappers .item .text{
            font-size: 18px;
            font-weight: 400;
        }
        .wrappers .item i{
            font-size: 18px;
            cursor: pointer;
        }

       </style>
@endsection
<div class="app-main__outer" style="background-image: url({{ asset('assets/theme/assets/images/sidebar/stdbackground.jpg')}}); background-size: cover;">
    <div class="app-main__inner">
        <div class="app-page-title margin-bottom-0">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div>
                        <div class="page-title-head center-elem">
                            <span class="d-inline-block pr-2">
                                <i class="lnr-book icon-gradient bg-mean-fruit"></i>
                            </span>
                            <span class="d-inline-block">Quiz Details</span>
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
        @php
            if(!Auth::user()->typable_id){
                $studentquizid = \App\Models\QuizStudent::where('id',$quizStudent->id)->where('student_id',$id)->first();
            }else {
                $studentquizid = \App\Models\QuizStudent::where('id',$quizStudent->id)->where('student_id',\Auth::user()->typable_id)->first();
            }
        @endphp
        <div class="row  card-border" style="border-radius: 0.25rem; background-color: lightgreen;
        background-clip: border-box;     border: 1px solid rgba(26, 54, 126, 0.125);">
            <div class="col-md-12">
                <div class="no-gutters row p-2 ">
                    <div class="col-md-9">
                        <h4 class="pt-2"> {{ $quizStudent->quiz->title }}</h4>
                    </div>
                    <div class="col-md-3 ">
                        <div class="text-right">
                            <input type="hidden" value="{{ $quizStudent->id }}"  id="quiz_student_id_find"/>
                            <input type="hidden"  id="quiz_student_id"/>
                            <input type="hidden"  id="current_question_id"/>
                            <div id="quiz_button"> </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="main-card mb-3 card">
                    <div class="card-body">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">
                                <div class="widget-content p-0">
                                    <div class="widget-content-wrapper">
                                        <div class="widget-content-left">
                                            <span class="widget-heading ">Class : </span>
                                            <span class="widget-subheading">{{ $quizStudent->quiz->classes->keyStages->name }} -> {{ $quizStudent->quiz->classes->name }}</span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <div class="widget-content p-0">
                                    <div class="widget-content-wrapper">
                                        <div class="widget-content-left">
                                            <span class="widget-heading ">Subject : </span>
                                            <span class="widget-subheading">{{ $quizStudent->quiz->subjects->subject_name }}</span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <div class="widget-content p-0">
                                    <div class="widget-content-wrapper">
                                        <div class="widget-content-left">
                                            <span class="widget-heading ">Topic : </span>
                                            <span class="widget-subheading">{{ $quizStudent->quiz->topic->topic_name }}</span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <div class="widget-content p-0">
                                    <div class="widget-content-wrapper">
                                        <div class="widget-content-left">
                                            <span class="widget-heading">Total Questions : </span>
                                            <span class="widget-subheading">{{ \App\Models\Question::where('quiz_id',$quizStudent->quiz->id)->count() }}</span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <div class="widget-content p-0">
                                    <div class="widget-content-wrapper">
                                        <div class="widget-content-left">
                                            <span class="widget-heading"> Total Marks : </span>
                                            <span class="widget-subheading">{{ \App\Models\Question::where('quiz_id',$quizStudent->quiz->id)->sum('mark') }}</span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-6" id="quiz_attend">
            </div>
            <div class="col-md-12" >
                <div class="main-card mb-3 card" id="quiz_question_answer_info">
                </div>
            </div>

        </div>
    </div>
</div>
</div>
@endsection

@section('JScript')
    <script></script>
    <script src="{{ asset('assets/js/page-js/admin/profile.js')}}"></script>
    <script src="{{ asset('assets/js/page-js/quiz/quiz-attend.js')}}"></script>
@endsection

