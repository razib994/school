@extends('layout.master')
@section('content')
<style>
    .text-uppercase {
        text-transform: uppercase;
    }
</style>
<div class="app-main__outer element-block-example" >
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div class="page-title-icon"><i class="lnr-apartment icon-gradient bg-sunny-morning"></i></div>
                    <div class="text-uppercase">
                       <b>Dashboard</b>
{{--                        <div class="page-title-subheading">{{ \Illuminate\Support\Facades\Auth::user()->type == 'Admin' ? 'Super Admin':\Illuminate\Support\Facades\Auth::user()->type.' Admin' }}</div>--}}
                    </div>
                </div>
                <div class="page-title-actions">
                    @if(\Illuminate\Support\Facades\Auth::user()->type != 'Admin')
                        <a href="{{ url("school-overview") }}" data-toggle="tooltip" title="" data-placement="bottom" class="btn-shadow mr-3 btn btn-warning" data-original-title="Example Tooltip">
                            <i class="fa fa-home text-uppercase">&nbsp; School Home</i>
                        </a>
                    @endif

                    <div class="d-inline-block pr-3">
                        <select type="select" class="custom-select" id="select_report_period">
                            <option value="this_year">2022</option>
                            <option value="last_year">2021</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div class="mbg-3 alert alert-warning alert-dismissible fade show" role="alert">
				<span class="pr-2">
					<i class="fa fa-question-circle"></i>
				</span>
            {{ $last->title }}
        </div>
        <div class="main-card mb-3   text-dark text-uppercase">
            <div class="no-gutters row" id="total_statistics_div"></div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-7 col-lg-8">
                <div class="mb-3 card">
                    <div class="card-header-tab card-header">
                        <div class="card-header-title font-size-lg text-uppercase font-weight-normal"><strong>Student statistics by year</strong></div>
                        <!--<div class="btn-actions-pane-right text-uppercase">
                            <button class="btn btn-warning">Actions</button>
                        </div>-->
                    </div>
                    <div class="pt-0 card-body">
                        <div id="dashboard-chart"></div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-5 col-lg-4">
                <div class="mb-3 card">
                    <div class="card-header-tab card-header">
                        <div class="card-header-title font-size-lg text-uppercase font-weight-normal"><strong>Active Student</strong></div>
                    </div>
                    <div class="p-0 card-body">
                        <div id="active-student-chart"></div>

                        <div class="widget-content pt-0 w-100"  id="last_month_percentage_div">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12 col-md-7 col-lg-8">
                <div class="main-card mb-3 card">
                    <div class="card-header">
                        <div class="card-header-title font-size-lg text-uppercase font-weight-normal"><strong>School Status</strong></div>
                    </div>
                    <div class="table-responsive">
                        <table class="align-middle text-truncate mb-0 table table-borderless table-hover" id="school_table">
                            <thead>
                            <tr>
                                <th class="text-center"></th>
                                <th class="text-left">Name</th>
                                <th class="text-center">Total Students</th>
                                <th class="text-center">Total Teachers</th>
                                <th class="text-center">Total Quizes</th>
                                <th class="text-center">Avg. Time</th>
                                <th class="text-left">Avg. Score</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-7 col-lg-4">
                <div class="main-card mb-3 card">
                    <div class="card-header">
                        <div class="card-header-title font-size-lg text-uppercase font-weight-normal"><strong>Leaderboards</strong></div>
                    </div>
                    <div class="table-responsive">
                        <table class="align-middle text-truncate mb-0 table table-borderless table-hover" id="leader_school_table">
                            <thead></thead>
                            <tbody>
                            </tbody>
                            <tfoot></tfoot>
                        </table><br>
                        <div class="col-md-12 ">
                            <div class="alert alert-info text-center">
                                <small class="text-dark text-uppercase font-weight-bold ">Based on the average time per student.</small>
                            </div>
                        </div>
                        <div>
                            <br>
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
            Index.init();
            $("#select_report_period").on('change',function(){
                Index.init();
            });
        });

    </script>
    <script type="text/javascript" src="{{ asset('assets/js/page-js/admin/dashboard.js')}}"></script>

@endsection

