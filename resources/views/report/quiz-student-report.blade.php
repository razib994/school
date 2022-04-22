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
                                <span class="d-inline-block"> Quiz Student Report </span>
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
            <div class="" >
                <input type="hidden" name="id" value="{{ $id }}" id="id">
                <input type="hidden" name="student_id" value="{{ $student_id }}" id="student_id">
                <div class="card-body" >
                    <div class="card mb-4 p-3">
                        <h5 class="pt-2 ">Report for ({{ $student_name->first_name  }} {{ ($student_name->first_name) ==null ? '':$student_name->last_name }}), <b>Subject:</b> {{$subject_name->subject_name}}  <b>Quiz Title:</b> {{ $quiz_name->title }} </h5>

                    </div>

                    <div id='report-data'>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="main-card card">
                                <h5 class="bg-light p-3"> Exercise Attempts </h5>
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th width="30%">Date</th>
                                        <th>Duration </th>
                                        <th>Score</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody id="tbody"></tbody>
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
                        <div class="card-body printable" id="modalBodynewLg">
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
    <script type="text/javascript">
        $('#tbody tr td button:eq(1)').trigger('click')
    </script>
@endsection



