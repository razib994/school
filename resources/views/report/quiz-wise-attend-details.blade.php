
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
                                <span class="d-inline-block">Quiz Attend Report</span>
                            </div>
                            <div class="page-title-subheading opacity-10">
                                <nav class="" aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a>
                                                <i aria-hidden="true" class="fa fa-home"></i>&nbsp;ABP
                                            </a>
                                        </li>
                                        <li class="breadcrumb-item">
                                            <a href="{{url('report')}}">Reports</a>
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
                                            <input type="hidden" value="{{ $id }}" id="id" name="id">
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
                                    <div class="col-md-2 p-1">
                                        <div class="position-relative">
                                            <select name="class_name" id="class_name" class="form-control search-box-quiz">
                                                <option value="default"> Select Year </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 p-1">
                                        <div class="position-relative">
                                            <select name="subject_name" id="subject_id_attend" class="form-control search-box-quiz">
                                                <option value="default"> Select Subject </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 p-1">
                                        <div class="position-relative">
                                            <select name="quiz_name" id="quiz_name" class="form-control search-box-quiz">
                                                <option value="default"> Quiz </option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-2 p-1">
                                        <div class="position-relative">
                                            <input type="date" value="{{ date('Y-m-d', strtotime('today - 30 days')) }}" name="from_date" class="form-control search-box-quiz" id="from_date"/>
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
                                    <button type="submit" id="show_quiz_wise_attend_status_report" class="btn btn-primary btn-block"><i class="fa fa-fw" aria-hidden="true"></i> Search </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="mb-2 p-1 alert alert-info alert-dismissible fade show" role="alert" id="date_between">

            </div>
            <div class="main-card mb-2 card" >
                <div class="card-body" >
                    <div id='report-data'>
                        <table class="table table-bordered table-hover course_table" id="quiz_wise_attend_report" style="width:100% !important">
                            <thead>
                            <tr>
                                <th class="text-center"> Students Name </th>
                                <th class="text-center"> Total Time </th>
                                <th class="text-center"> Attempts </th>
                                <th class="text-center"> Max Score </th>
                                <th class="text-center"> First Score </th>
                                <th class="text-center"> Last Score </th>
                                <th class="text-center"> Avg Mark </th>
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
    <script type="text/javascript" src="{{ asset('assets/js/page-js/report/report.js')}}"></script>
@endsection



