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
                                <span class="d-inline-block">Subject Report</span>
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
                    <form class="mb-0 alert alert-dark"  enctype="multipart/form-data" >
                        @csrf
                        <div class="row">
                            <div class="col-md-10">
                                <div class="row">
                                    <div class="col-md-3 p-1">
                                        <div class="position-relative">
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
                                    @php $today =date('d-m-Y H:i:s');
                                        $date = new DateTime();
                                        $pre =  $date->modify('-30 day')->format('d-m-Y H:i:s'); @endphp
                                    <div class="col-md-3 p-1">
                                        <div class="position-relative">
                                            <input type="date" value="{{ date('Y-m-d', strtotime('today - 30 days')) }}" name="form_date" class="form-control search-box-quiz" id="from_date"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3 p-1">
                                        <div class="position-relative">
                                            <input type="date" value="{{ date('Y-m-d', strtotime('today + 1 days')) }}" name="to_date" class="form-control search-box-quiz" id="to_date"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2 p-1">
                                <div class="position-relative">
                                    <button type="submit" class="btn btn-primary btn-block" id="show_monthly_status_report"><i class="fa fa-fw" aria-hidden="true"></i> Search </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="ml-4 mr-4 p-1 alert alert-info alert-dismissible fade show" role="alert">
				<span class="pr-2">
					<i class="fa fa-question-circle"></i>
				</span>
                    Results between  {{$pre}} - {{$today}}
                </div>
                <div class="card-body" >
                    <div id='report-data'>
                        <table id="monthly_report_table" class="table table-hover table-striped table-bordered">
                            <thead>
                            <tr>
                                <th> Month </th>
                                <th class="text-center" width="15%"> Total Time  </th>
                                <th class="text-center" width="15%"> AVG Mark </th>
                                <th class="text-center" width="15%"> Active Users</th>
                            </tr>
                            <tr>
                                <th> Current Academic Year </th>
                                <th class="text-center" width="15%"> {{date('H:i:s',$usertime)}}  </th>
                                <th class="text-center" width="15%"> {{number_format($avgmark,2)}} % </th>
                                <th class="text-center" width="15%"> {{$useractive}}</th>
                            </tr>
                            <tr>
                                <td colspan="4"><b> {{ date('Y') }} </b></td>
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


