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
            <div class="main-card mb-2 card">

                <div class="card-body report-form ">
                    <form class="alert alert-dark mb-0" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-10">
                                <div class="row">
                                    <div class="col-md-2 p-1">
                                        <div class="position-relative">
                                            <input type="hidden" value="{{ $id }}" name="id" id="id">
                                            <select name="year_name" id="year_name" class="form-control search-box-quiz">
                                                <option value="default"> Select Key Stage </option>
                                                @foreach($keyStages as $keystage)
                                                    <option  value="{{ $keystage->id }}">
                                                        {{ $keystage->name }}
                                                    </option>
                                                @endforeach
                                            </select>

                                        </div>
                                    </div>
                                    <div class="col-md-3 p-1">
                                        <div class="position-relative">
                                            <select name="class_name" id="class_name" class="form-control search-box-quiz">
                                                <option value="default"> Select Year </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3 p-1">
                                        <div class="position-relative">
                                            <select name="subject_name" id="subject_name" class="form-control search-box-quiz">
                                                <option value="default"> Select Subject </option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-2 p-1">
                                        <div class="position-relative">
                                            <input type="date" value="{{  date('Y-m-d', strtotime('today - 30 days')) }}" name="form_date" class="form-control search-box-quiz" id="from_date"/>
                                        </div>
                                    </div>
                                    <div class="col-md-2 p-1">
                                        <div class="position-relative">
                                            <input type="date" value="{{ date('Y-m-d', strtotime('today + 1 days')) }}" name="to_date" class="form-control search-box-quiz" id="to_date"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2 p-1">
                                <div class="position-relative">
                                    <button type="submit" id="show_quiz_status_report" class="btn btn-primary btn-block"><i class="fa fa-fw" aria-hidden="true"></i> Search </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="mb-2 p-1 alert alert-info alert-dismissible fade show" role="alert" id="date_between">

            </div>
            <div class="main-card mb-3 card" >
                <div class="card-body" >
                    <div id='report-data'>
                        <table class="table table-bordered table-hover course_table" id="quiz_report" style="width:100% !important">
                            <thead>
                            <tr>
                                <th> Quiz Name </th>
                                <th class="text-center" width="15%"> Total Time </th>
                                <th class="text-center" width="15%">Avg Mark</th>
                                <th class="text-center" width="15%"> Last Access </th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
@endsection
@section('JScript')
    <script type="text/javascript" src="{{ asset('assets/js/page-js/report/students-report.js')}}"></script>
@endsection



