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
                            <span class="d-inline-block">Student Report</span>
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
            <div class="" >
                <div class="card-body" >
                    <div id='report-data'>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="main-card card">
                                <h5 class="bg-light p-2"> Last 5 Attempts </h5>

                                <table class="table table-striped">
                                    <tr>
                                        <th>Date</th>
                                        <th>Duration </th>
                                        <th>Score</th>
                                        <th>Action</th>
                                    </tr>
                                    <tbody>

                                    @foreach($studentSubjectQuizStudents as $studentSubjectQuizStudent)
                                    <tr>
                                        <td>{{$studentSubjectQuizStudent->created_at}}</td>
                                        <td>{{$studentSubjectQuizStudent->quiz_take_duration}}</td>
                                        <td>{{$studentSubjectQuizStudent->score}}%</td>
                                        <td><button type="button" class="btn btn-info btn-sm button-submit" onclick="quizstudentreportdetailsStudentReport({{$studentSubjectQuizStudent->quiz_student_id}})"><i class="lnr-eye"></i></button> </td>
                                    </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="main-card card">
                                    <h5 class="bg-light p-3"> Attempt Details </h5>
                                    <div id="quiz_studens_report_details"></div>
                                    <div class="main-card mb-3 card" id="quiz_question_answer_info"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="modal fade" id="generic_modal_new_lg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document"> <!-- modal-lg-->
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="myModalLabelnewLg"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body " >
                    <div class="main-card mb-3 card">
                        <div class="card-body printable" id="modalBodynewLg">
                        </div>
                    </div>
                </div>
                <div class="modal-footer hidden-print">
                    <button class="btn btn-info  email-button-lg" style="display:none"  ><i class="fa fa-envelope"></i></i></span> Email</button>

                    <button class="btn btn-primary  print-button-lg" style="display:none"  onclick="printWindow()"><i class="pe-7s-print"></i> Print</button>
                    <button type="button" class="btn btn-danger hidden-print" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('JScript')
    <script src="{{ asset('assets/js/page-js/admin/profile.js')}}"></script>
    <script type="text/javascript" src="{{ asset('assets/js/page-js/report/report.js')}}"></script>
@endsection



