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
                            <span class="d-inline-block">Ranking</span>
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
        <div class="main-card mb-3 card card-border bg-warm-flame">
            <!--<div class="card-header bg-success text-white">Quiz List</div>-->
            <div class="card-body">
                <div class="row" id="result_ranking">

                </div>
            </div>
        </div>
    </div>
</div>
</div>

@endsection

@section('JScript')
    <script src="{{ asset('assets/js/page-js/admin/profile.js')}}"></script>
    <script src="{{ asset('assets/js/page-js/ranking/ranking.js')}}"></script>
@endsection

