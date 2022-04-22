@extends('layout.master')
@section('content')
    <div class="app-main__outer element-block-example">
        <div class="app-main__inner">
            <div class="app-page-title">
                <div class="page-title-wrapper">
                    <div class="page-title-heading">
                        <div>
                            <div class="page-title-head center-elem">
							<span class="d-inline-block pr-2">
								<i class="pe-7s-users icon-gradient bg-mean-fruit"></i>
							</span>
                                <span class="d-inline-block" style="font-size: 28px;">{{ isset($school_name->name)}} </span>
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
                            <div class="col-md-6">
                                <div class="main-card mb-3 card p-3" id="student_statistics"></div>
                            </div>
                            <div class="col-md-6">
                                <div class="main-card mb-3 card p-3" id="main_contacts_school_view"> </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="main-card mb-3 card p-3" id="teacher_statistics"> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="main-card mb-3 card p-3">
                                    <h5 class="breadcrumb text-dark">Department Overview</h5>
                                    <div class="widget-content">
                                        <div class="text-center">
                                            <canvas id="depertment-doughnut-chart"  style="height:400px;"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="main-card mb-3 card p-3" id="year_statistics_data">

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="main-card mb-3 card p-3">
                                    <h5 class="breadcrumb text-dark">Year Overview</h5>
                                    <div class="widget-content">
                                        <div class="text-center" >
                                            <canvas id="year-doughnut-chart" style="height:500px;"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="main-card mb-3 card p-3">
                                    <h5 class="breadcrumb text-dark">Independent Learning Hours</h5>
                                    <div id="independent-chart"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <button style="display: none;" id="loader" class="block-element-btn-example-1">
        Elements Example 1
    </button>
@endsection
@section('JScript')
    <script>
        jQuery(document).ready(function() {
            $("#loader").trigger('click');
        });
    </script>
    <script type="text/javascript" src="{{ asset('assets/js/page-js/report/report.js')}}"></script>
    <script type="text/javascript">
            loadSchoolDashboard();
            adminSchoolOverview();
        </script>
@endsection
