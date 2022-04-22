@extends('student-portal.layout.master')
@section('content')
<div class="app-main__outer"
style="background-image: url('../assets/theme/assets/images/sidebar/st-quiz-background.png'); background-size: cover;"
>
    <div class="app-main__inner">
        <div class='row' style="padding:10%; padding-top:3% !important">

                <div class="col-md-2"></div>
                <div class="col-md-3">
                    <div class="card  bg-strong-bliss widget-chart widget-chart-hover text-white card-border">
                        <a href="{{url('portal/quizzes')}}" style="text-decoration: none; color:#fff" >
                            <div class="icon-wrapper icon-wrapper-custom rounded-circle">
                            <div class="icon-wrapper-bg  bg-white"></div>
                            <i class="lnr-book  text-white"></i></div>
                            <div class="widget-subheading">&nbsp;</div>
                            <div class="widget-numbers dashboard-buttin-heading">Quiz</div>
                            <div class="widget-subheading">&nbsp;</div>
                            <div class="widget-subheading">&nbsp;</div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card  bg-warning  widget-chart widget-chart-hover text-white card-border">
                        <a href="{{url('portal/assignments')}}" style="text-decoration: none; color:#fff" >
                            <div class="icon-wrapper icon-wrapper-custom rounded-circle">
                            <div class="icon-wrapper-bg  bg-white"></div>
                            <i class="lnr-pencil  text-white"></i></div>
                            <div class="widget-subheading">&nbsp;</div>
                            <div class="widget-numbers dashboard-buttin-heading">Assignment</div>
                            <div class="widget-subheading">&nbsp;</div>
                            <div class="widget-subheading">&nbsp;</div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card  bg-danger  widget-chart widget-chart-hover text-white card-border">
                        <a href="{{url('portal/ranking')}}" style="text-decoration: none; color:#fff" >
                            <div class="icon-wrapper icon-wrapper-custom rounded-circle">
                            <div class="icon-wrapper-bg  bg-white"></div>
                            <i class="lnr-list  text-white"></i></div>
                            <div class="widget-subheading">&nbsp;</div>
                            <div class="widget-numbers dashboard-buttin-heading">Ranking</div>
                            <div class="widget-subheading">&nbsp;</div>
                            <div class="widget-subheading">&nbsp;</div>
                        </a>
                    </div>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-12" style="padding-top:20px"></div>
                <div class="col-md-2"></div>
                <div class="col-md-3">
                    <div class="card  bg-success  widget-chart widget-chart-hover text-white card-border">
                        <a href="{{url('portal/my-reports')}}" style="text-decoration: none; color:#fff" >
                            <div class="icon-wrapper icon-wrapper-custom rounded-circle">
                            <div class="icon-wrapper-bg  bg-white"></div>
                            <i class="metismenu-icon  pe-7s-note2  text-white"></i></div>
                            <div class="widget-subheading">&nbsp;</div>
                            <div class="widget-numbers dashboard-buttin-heading">Reports</div>
                            <div class="widget-subheading">&nbsp;</div>
                            <div class="widget-subheading">&nbsp;</div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card bg-mixed-hopes  widget-chart widget-chart-hover text-white card-border">
                        <a href="{{url('portal/message')}}" style="text-decoration: none; color:#fff" >
                            <div class="icon-wrapper icon-wrapper-custom rounded-circle">
                            <div class="icon-wrapper-bg  bg-white"></div>
                            <i class="lnr-envelope  text-white"></i></div>
                            <div class="widget-subheading">&nbsp;</div>
                            <div class="widget-numbers dashboard-buttin-heading">Message</div>
                            <div class="widget-subheading">&nbsp;</div>
                            <div class="widget-subheading">&nbsp;</div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card bg-info  widget-chart widget-chart-hover text-white card-border">
                        <a href="{{url('portal/notice')}}" style="text-decoration: none; color:#fff" >
                            <div class="icon-wrapper icon-wrapper-custom rounded-circle">
                            <div class="icon-wrapper-bg  bg-white"></div>
                            <i class="lnr-alarm  text-white"></i></div>
                            <div class="widget-subheading">&nbsp;</div>
                            <div class="widget-numbers dashboard-buttin-heading">Notice</div>
                            <div class="widget-subheading">&nbsp;</div>
                            <div class="widget-subheading">&nbsp;</div>
                        </a>
                    </div>
                </div>
                <div class="col-md-1"></div>




        </div>
    </div>
</div>
</div>
@endsection

@section('JScript')
    <script type="text/javascript" src="{{ asset('assets/js/page-js/setting/setting.js')}}"></script>
@endsection

