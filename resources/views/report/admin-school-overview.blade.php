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
                                <span class="d-inline-block" style="font-size: 28px;"> School Overview </span>
                            </div>
                            <div class="page-title-subheading opacity-10">
                                <nav class="" aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a>
                                                <i aria-hidden="true" class="fa fa-home"></i>&nbsp;ACE
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
                    <div class="page-title-actions">
                        <div class="d-inline-block pr-3">
                            <select type="select" class="custom-select" id="select_report_period">
                                <option value="2021-2022">2021-2022</option>
                                <option value="2020-2021">2020-2021</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mbg-3 alert alert-info alert-dismissible fade show" role="alert">
				<span class="pr-2">
					<i class="fa fa-question-circle"></i>
				</span>
                Result Showing from 2021-2022
            </div>
            <div class="">
                <div class="card-body" >
                    <div class="fade active show" id="tab-content-1" role="tabpanel">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-header">
                                        <div class="card-header-title font-size-lg text-capitalize font-weight-normal"><strong>School Status</strong></div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="align-middle text-truncate mb-0 table table-borderless table-hover" id="school_table">
                                            <thead>
                                            <tr>
                                                <th class="text-center"></th>
                                                <th class="text-left">Name</th>
                                                <th class="text-center">Total Students</th>
                                                <th class="text-center">Total Teachers</th>
                                                <th class="text-center">Total Quizzes</th>
                                                <th class="text-center">Avg. Time</th>
                                                <th class="text-left">Avg. Score</th>
                                            </tr>
                                            </thead>
                                            <tbody id="adminSchoolOverview"></tbody>
                                        </table>
                                    </div>
                                </div>
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
    <script type="text/javascript" src="{{asset('assets/js/page-js/report/admin-school-overview.js')}}"></script>
@endsection
