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
                                <span class="d-inline-block"> Students Report </span>
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
            <div class="main-card mb-2 card" >
                <div class="card-body report-form ">
                    <form class="alert alert-dark mb-0" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-11">
                                <div class="row">
                                    <div class="col-md-2 p-1">
                                        <div class="position-relative">
                                            <select name="year_name" id="year_name" class="form-control search-box-quiz">
                                                <option value=""> Select Key Stage </option>
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
                                                <option value=""> Select Year </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 p-1">
                                        <div class="position-relative">
                                            <select name="subject_name" id="subject_id_attend" class="form-control search-box-quiz">
                                                <option value=""> Select Subject </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 p-1">
                                        <div class="position-relative">
                                            <select name="quiz_name" id="quiz_id" class="form-control search-box-quiz">
                                                <option value=""> Select Quiz </option>
                                            </select>
                                        </div>
                                    </div>
                                    @php
                                        $today =date('d-m-Y H:i:s');
                                        $date = new DateTime();
                                        $pre =  $date->modify('-30 day')->format('d-m-Y H:i:s'); @endphp
                                    <div class="col-md-2 p-1">
                                        <div class="position-relative">
                                            <input type="date" value="{{ date('Y-m-d', strtotime('today - 30 days')) }}" name="form_date" class="form-control search-box-quiz" id="form_date"/>
                                        </div>
                                    </div>
                                    <div class="col-md-2 p-1">
                                        <div class="position-relative">
                                            <input type="date" value="{{ date('Y-m-d', strtotime('today + 1 days')) }}" name="to_date" class="form-control search-box-quiz" id="to_date"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1 p-1">
                                <div class="position-relative">
                                    <button type="submit" id="show_student_status_report" class="btn btn-primary btn-block"><i class="fa fa-fw" aria-hidden="true"></i> Search </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="p-1 mr-4 ml-4 alert alert-info alert-dismissible fade show" role="alert">
				<span class="pr-2">
					<i class="fa fa-question-circle"></i>
				</span>
                    Results between  {{$pre}} - {{$today}}
                </div>
                <div class="card-body" >
                    <div id='report-data'>
                        <table id="student_report_table" class="table table-hover table-striped table-bordered">
                            <thead>
                            <tr>
                                <th> First Name </th>
                                <th> Last Name </th>
                                <th class="text-center" width="15%"> Total Time </th>
                                <th class="text-center" width="15%">Avg Score</th>
                                <th class="text-center" width="15%">Last Accessed </th>
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




