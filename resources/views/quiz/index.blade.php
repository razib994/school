@extends('layout.master')
@section('content')
    <style>
        .typematch {
            display: none;
        }
        .no-gutters.row {

            padding: 10px;
        }
        .grid-menu [class*="col-"]:nth-child(2n) {
            border-right-width: 0;
        }
        .no-gutters.row .col-xl-3 {
            padding: 5px;
        }
        .no-gutters.row .btn {
            color: #fefeff;
            background: #69789f;
            border-radius: 5px !important;
        }
        #audio {
            width: 200px;
        }
        #image {
            width: 200px;
        }
        .grid-menu [class*="col-"] {
            border-right: #dee2e6 solid 0;
            border-right-width: 0px;
            border-bottom: #dee2e6 solid 0;
        }
        .grid-menu [class*="col-"]:nth-child(n) {
            border-right-width: 0;
        }
    </style>
    <div class="app-main__outer">
            <div class="app-main__inner">

                <div class='row'>
                    <div class='col-lg-12'>
                        <div class="main-card mb-3 card">
                            <div class="card-body">
                                <ul class="nav nav-tabs quiz-tabs">
                                    <li class="nav-item">
                                        <a data-toggle="tab" href="#quiz_list" class="active nav-link" id="quiz_lists">Quizes List</a>
                                    </li>
                                    @if($actions['add_permission']>0)
                                    <li class="nav-item">
                                        <a data-toggle="tab" href="#add_quiz" class="nav-link" id="quiz_title_button"> Add Quizes</a>
                                    </li>
                                    @endif
                                    <li class="nav-item quiz_view"><a data-toggle="tab" href="#quiz_view" id="quiz_title_view" class="nav-link"></a></li>
                                    <li class="nav-item question_add"><a data-toggle="tab" href="#tab-eg10-3" class="nav-link" id="add_question">Add Questions</a></li>
                                    <li class="nav-item assign"><a data-toggle="tab" href="#assigned" class="nav-link" id="assign">Assign Students</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="quiz_list" role="tabpanel">
                                        <div class="card-body pt-1">
                                            <!--  Start Quiz Search -->
                                            <form class="alert alert-dark" enctype="multipart/form-data">
                                                @csrf
                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <div class="row">
                                                            <div class="col-md-3 p-1">
                                                                <div class="position-relative">
                                                                    <select name="year_name" id="year_name" class="form-control search-box-quiz">
                                                                        <option selected value=""> Select Key Stage </option>
                                                                        @foreach($keyStages as $keystage)
                                                                            <option  value="{{ $keystage->id }}"> {{ $keystage->name }} </option>
                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3 p-1">
                                                                <div class="position-relative">
                                                                    <select name="class_name" id="class_name" class="form-control search-box-quiz">
                                                                        <option selected value=""> Select Year </option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3 p-1">
                                                                <div class="position-relative">
                                                                    <select name="subject_name" id="subject_name" class="form-control search-box-quiz">
                                                                        <option selected value=""> Select Subject </option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3 p-1">
                                                                <div class="position-relative">
                                                                    <select name="topic_title" id="topic_title" class="form-control search-box-quiz">
                                                                        <option selected value=""> Select Topic </option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 p-1">
                                                        <div class="position-relative">
                                                            <button type="submit" class="btn btn-primary btn-block" id="searchQuizzes"><i class="fa fa-fw" aria-hidden="true"></i> Search </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                            <!--  End Quiz Search -->
                                            <table style="width: 100%;" id="quiz_table" class="table table-hover table-striped table-bordered quizes_table">
                                                <thead>
                                                <tr>
                                                    <th width="350px">Quiz Title</th>
                                                    <th>Key Stage</th>
                                                    <th>Year</th>
                                                    <th>Subject</th>

                                                    <th>Total Marks</th>
                                                    <th>Total Question</th>
                                                    <th width="40px">Status</th>
                                                    <th width="130px">Action</th>
                                                </tr>
                                                </thead>
                                                <tbody></tbody>
                                            </table>
                                            @if(isset($id_quiz))
                                            <button id="anybutton" onclick="quizView({{$id_quiz}})"></button>
                                            @endif

                                        </div>
                                    </div>
                                    <!--  Start Quiz From -->
                                    <div class="tab-pane" id="add_quiz" role="tabpanel">
                                        <div class="card-body">
                                            <form id="quiz_form" enctype="multipart/form-data" class="form form-horizontal">
                                                @csrf
                                                <input type="hidden" name="edit_id" id="edit_id">
                                                <div class="position-relative row form-group">
                                                    <label for="title" class="col-sm-2 col-form-label">Quiz Title:* </label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="title" id="title" placeholder="Quiz Title"  class="form-control">
                                                    </div>
                                                </div>
                                                <div class="position-relative row form-group">
                                                    <label for="year_id" class="col-sm-2 col-form-label"> Key Stage:*</label>
                                                    <div class="col-sm-4">
                                                        <select name="year_id" id="year_id" class="form-control">
                                                            <option value="default"> Select Key Stage </option>
                                                            @foreach($keyStages as $keystage)
                                                            <option  value="{{ $keystage->id }}"> {{ $keystage->name }} </option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                    <label for="class_id" class="col-sm-2 col-form-label"> Year:*</label>
                                                    <div class="col-sm-4">
                                                        <select name="class_id" id="class_id" class="form-control"></select>
                                                    </div>
                                                </div>
                                                <div class="position-relative row form-group">
                                                    <label for="subject_id" class="col-sm-2 col-form-label">Subject</label>
                                                    <div class="col-sm-4">
                                                        <select name="subject_id" id="subject_id" class="form-control"></select>
                                                    </div>
                                                    <label for="topic_id" class="col-sm-2 col-form-label">Topic</label>
                                                    <div class="col-sm-4">
                                                        <select name="topic_id" id="topic_id" class="form-control"></select>
                                                    </div>
                                                </div>
                                                <div class="position-relative row form-group">
                                                    <label for="instruction" class="col-sm-2 col-form-label">Instructions:</label>
                                                    <div class="col-sm-10">
                                                        <textarea name="instruction" id="instruction" class="form-control"></textarea>
                                                    </div>
                                                </div>
                                                <div class="position-relative row form-group">
                                                    <label for="attachment" class="col-sm-2 col-form-label">Optional File</label>
                                                    <div class="col-sm-10">
                                                        <input name="attachment" id="attachment" type="file" class="form-control-file">
                                                        <div id="attach_file"></div>
                                                    </div>
                                                </div>
                                                <div class="position-relative row form-group">
                                                    <label for="remote_media_file_link" class="col-sm-2 col-form-label">Remote Media Files:</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="remote_media_file_link" id="remote_media_file_link"  class="form-control">
                                                    </div>
                                                </div>
                                                <div class="position-relative row form-group">
                                                    <label for="remote_media_file_link" class="col-sm-2 col-form-label">Published:</label>
                                                    <div class="col-sm-10">
                                                        <input type="checkbox" id="is_active" name="is_checked" checked="checked" value="1" class="form-control col-lg-12 mt-2"/>
                                                    </div>
                                                </div>
                                                <div class="position-relative form-group pl-1">
                                                    <label>Is Active</label>
                                                    <input type="checkbox" id="is_active" name="is_active" checked="checked" value="1" class="form-control col-lg-12"/>
                                                </div>

                                                <div class="position-relative row form-check">
                                                    <div class="col-sm-10 offset-sm-2">
                                                        <button type="submit" id="save_quiz" class="btn btn-success"> Save</button>
                                                        <button type="button" id="clear_button" class="btn btn-warning">Clear</button>
                                                        <button type="button" id="quiz_cancel_button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div id="form_submit_error" class="text-center" ></div>
                                                    </div>
                                                </div>
                                            </form>
                                            <hr>
                                            <ul class="nav nav-tabs quiz-tabs mt-2">
                                                <li class="nav-item"><a data-toggle="tab" href="#questions" class="active nav-link">Quistions</a></li>
                                                <li class="nav-item"><a data-toggle="tab" href="#students" class="nav-link">Students</a></li>
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="questions" role="tabpanel">
                                                    <div class=" pt-1">
                                                        <div class="container">
                                                            <div class="row">
                                                                <table class="table table-bordered table-striped topic_table " id="tb" style="width: 100%">
                                                                    <thead>
                                                                    <tr>
                                                                        <th>Question Details</th>
                                                                        <th width="80px">Marks</th>
                                                                        <th width="250px">Question Answer</th>
                                                                        <th width="80px">Action</th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody id="questionalls"></tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="students" role="tabpanel">
                                                    <div class="card-body">
                                                        <div class="row ">
                                                            <div class="col-md-12 p-0" id="student_assign_list"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--  End Quiz From -->
                                    <!-- Start quiz and Question Detail --->
                                    <div class="tab-pane card" id="quiz_view" role="tabpanel">
                                        <div  id="quiz_view_details" class="mb-4 card p-3"></div>
                                        <hr>
                                        <ul class="nav nav-tabs quiz-tabs mt-2 ml-4 ">
                                            <li class="nav-item"><a data-toggle="tab" href="#questions_view" class="active nav-link">Quistions</a></li>
                                            <li class="nav-item"><a data-toggle="tab" href="#students_view" class="nav-link">Students</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="questions_view" role="tabpanel">
                                                <div class="card-body pt-1">
                                                    <div class="container">
                                                        <div class="row">
                                                            <table class="table table-bordered table-striped topic_table " id="tb" style="width: 100%">
                                                                <thead>
                                                                <tr>
                                                                    <th>Question Details</th>
                                                                    <th width="80px">Marks</th>
                                                                    <th width="250px">Question Answer</th>
                                                                </tr>
                                                                </thead>
                                                                <tbody id="questionall"></tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="students_view" role="tabpanel">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-12" id="student_assign_lists">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End quiz and Question Detail --->
                                    <div class="tab-pane" id="tab-eg10-3" role="tabpanel">
                                        <div class="card-body">
                                            <div class="grid-menu grid-menu-3 mb-5">
                                                <div class="no-gutters row" >
                                                    <div class="col-sm-4 col-xl-3">
                                                        <a data-toggle="tab" href="#multiple-choice" onclick="creteOptions('Multiple choice')" id="Multiple-choice"   class="btn-icon-vertical btn-square btn-transition btn btn-outline-warning multiple-choice question_type_button"><i class="lnr-license btn-icon-wrapper"></i> Multiple choice</a>
                                                    </div>
                                                    <div class="col-sm-6 col-xl-3">
                                                        <a data-toggle="tab"   href="#single-choice" onclick="creteOptions('Single Choice')"  class="btn-icon-vertical btn-square btn-transition btn btn-outline-warning single-choice question_type_button"><i class="lnr-map btn-icon-wrapper"> </i> Single Choice</a>
                                                    </div>
                                                    <div class="col-sm-6 col-xl-3">
                                                        <a data-toggle="tab"  href="#picture-choice" onclick="creteOptions('Picture choice')" class="btn-icon-vertical btn-square btn-transition btn btn-outline-warning picture-choice question_type_button"><i class="lnr-music-note btn-icon-wrapper"></i> Picture choice</a>
                                                    </div>
                                                    <div class="col-sm-6 col-xl-3">
                                                        <a data-toggle="tab"  href="#true-false" onclick="creteOptions('True/false')" class="btn-icon-vertical btn-square btn-transition btn btn-outline-warning true-false question_type_button"><i class="lnr-heart btn-icon-wrapper"></i> True/false</a>
                                                    </div>
                                                    <div class="col-sm-6 col-xl-3 ">
                                                        <a data-toggle="tab"  href="#free-text" onclick="creteOptions('Free text')"  class="btn-icon-vertical btn-square btn-transition btn btn-outline-warning free-text question_type_button"><i class="lnr-magic-wand btn-icon-wrapper"></i> Free text</a>
                                                    </div>
                                                    <div class="col-sm-6 col-xl-3">
                                                        <a data-toggle="tab"  href="#fill-in-the-blanks" onclick="creteOptions('Fill in the blanks')"  class="btn-icon-vertical btn-square btn-transition btn btn-outline-warning fill-in-the-blanks question_type_button"><i class="lnr-lighter btn-icon-wrapper"></i> Fill in the blanks</a>
                                                    </div>
                                                    <div class="col-sm-6 col-xl-3">
                                                        <a data-toggle="tab"  href="#match-pair" onclick="creteOptions('Match pair')" class="btn-icon-vertical btn-square btn-transition btn btn-outline-warning match-pair question_type_button"><i class="lnr-lighter btn-icon-wrapper"></i> Match pair </a>
                                                    </div>
                                                    <div class="col-sm-6 col-xl-3">
                                                        <a data-toggle="tab"   href="#ordering" onclick="creteOptions('Ordering')"  class="btn-icon-vertical btn-square btn-transition btn btn-outline-warning ordering question_type_button"><i class="lnr-lighter btn-icon-wrapper"></i> Ordering</a>
                                                    </div>
                                                    <div class="col-sm-6 col-xl-3">
                                                        <a data-toggle="tab"  href="#graph" onclick="creteOptions('Graph')" class="btn-icon-vertical btn-square btn-transition btn btn-outline-warning graph question_type_button"><i class="lnr-lighter btn-icon-wrapper"></i> Graph </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="container mt-5">
                                                <!-- Start Question Form -->
                                                    <form id="question_form" autocomplete="off" name="question_form" enctype="multipart/form-data" class="form form-horizontal form-label-left">
                                                        @csrf
                                                        <input type="hidden" id="edit_question_id" name="edit_question_id"/>
                                                        <input type="hidden" id="quiz_id" name="quiz_id"/>
                                                        <input type="hidden" id="type" name="type"/>

                                                        <div class="tab-content mt-4 mb-4">
                                                            <div class="tab-pane active" id ="question_title_form"  role="tabpanel">
                                                                <h5 class="mr-3 bg-light p-2 " id="headlineTitle"></h5>
                                                                <div class="card-body pt-1 pl-0" >
                                                                    <div class="form-row alert alert-dark mb-5">
                                                                        <div class="col-md-9">
                                                                            <div class="position-relative form-group">
                                                                                <label>Question Title <span class="required">*</span></label>
                                                                                <textarea rows="5" cols="100" id="question_detail" name="question_detail" class="form-control col-lg-12"></textarea>
                                                                                <div id="typematch" class="typematch mt-1 mb-1">
                                                                                    <label><b>Type</b></label><br>
                                                                                    <select name="" >
                                                                                        <option value="" onclick="creteOptions('Match pair')">Text Match Piar </option>
                                                                                        <option value="" onclick="creteOptions('Match pair image')">Image Match Piar </option>
                                                                                    </select>
                                                                                </div>
                                                                                <label for="mark" class="">Mark</label>
                                                                                <input type="text" id="mark" name="mark" placeholder="1" value="1"  class="form-control col-lg-3"/>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-3">
                                                                            <div class=" form-group text-center mt-4">
                                                                                <span class=" mt-4 mb-2 ">
                                                                                    <strong><span class="text-danger" id="button1_text"><i class='lnr-music-note'> </i>   Upload Audio  </span></strong>
                                                                                    <input type="file" name="audio" class="mt-3 mb-2" id="audio" />
                                                                                </span>
                                                                                <br>
                                                                                <span class="mt-2">
                                                                                    <span class="fileupload-new mb-2 text-danger"> <strong><span id="button2_text"> <i class='lnr-picture'> </i> Upload Image </span> </strong></span>
                                                                                    <input type="file" name="image" class="mt-2" id="image" value="" />
                                                                                </span>
                                                                                <div id="targetLayer" style="display:none;"></div>
                                                                                <div id="loader-icon" style="display:none;"><img src="loader.gif" /></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <hr>
                                                                    <table class="table table-bordered table-striped options_table " id="tb" style="width: 100%">
                                                                        <tbody id="option_details" class="qestion_option">
                                                                        <tr>
                                                                            <th> No </th>
                                                                            <th> Options </th>
                                                                            <th width="20%">
                                                                                <button type="button" class="add-row btn btn-info"><i class="fa fa-plus"></i></button>

                                                                            </th>
                                                                        </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <div class="form-row" style="display: none;">
                                                                        <div class="col-md-5">
                                                                            <div class="position-relative form-group pl-0">
                                                                                <label>Is Active</label>
                                                                                <input type="checkbox" id="is_active" name="is_active" checked="checked" value="1" class="form-control col-lg-12"/>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-3">
                                                                        </div>
                                                                        <div class="col-md-3">
                                                                        </div>
                                                                    </div>
                                                                    <div class="position-relative row form-check pl-0 mt-4">
                                                                        <div class="col-sm-10 ">
                                                                            <button type="submit" id="save_question" class="btn btn-success"> Save</button>
                                                                            <button type="button" id="clear_button" class="btn btn-warning">Clear</button>
                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                                <div id="form_submit_error" class="text-center d-none" ></div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                <!-- End Question Form -->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Start Assign Student --->
                                    <div class="tab-pane" id="assigned" role="tabpanel">
                                                <div class="card-body card">
                                                    <form id="student_assign_form" autocomplete="off" name="student_assign_form" enctype="multipart/form-data" class="form form-horizontal form-label-left"
                                                    @csrf
                                                    <div id="assign_class_view"></div>
                                                    <input type="hidden" id="assign_quiz_id" name="quiz_id"/>
                                                    <hr>
                                                    <div class="row">
                                                        <div class="col-md-9"><strong>Students Name</strong>  </div>
                                                        <div class="col-md-3">
                                                            <input type="checkbox" id="checkAllSudents"/> <strong>Select All</strong>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <div class="row " id="student_assign"></div>
                                                    <div class="position-relative row form-check pl-0 mt-4">
                                                        <div class="col-sm-10 ">
                                                            <button type="submit" id="save_student_assign" class="btn btn-success"> Add Assign </button>
{{--                                                            <button type="button" id="clear_button" class="btn btn-warning">Clear</button>--}}
{{--                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>--}}
                                                        </div>
                                                    </div>
                                                </form>
                                                </div>
                                            </div>
                                    <!-- End Assign Student --->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='col-lg-2'></div>
                </div>
            </div>
    </div>
    </div>
@endsection
@section('JScript')
    <script type="text/javascript" src="{{ asset('assets/js/page-js/quiz/quiz.js')}}"></script>
@endsection
