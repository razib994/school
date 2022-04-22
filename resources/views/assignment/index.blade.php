@extends('layout.master')
@section('content')
    <div class="app-main__outer">
        <div class="app-main__inner">
            <div class='row'>
                <div class='col-lg-12'>
                    <div class="main-card mb-3 card">
                        <div class="card-body">
                            <ul class="nav nav-tabs quiz-tabs">
                                <li class="nav-item" id="assignments">
                                    <a data-toggle="tab" href="#assignment_list" class="active nav-link" id="assignments">Assignment List</a>
                                </li>
                                @if($actions['add_permission']>0)
                                    <li class="nav-item">
                                        <a data-toggle="tab" href="#add_assignment" class="nav-link" id="assignment_title_button"> Add Assignments</a>
                                    </li>
                                @endif
{{--                                <li class="nav-item"><a data-toggle="tab" href="#add_quizes" class="nav-link"> Assign Quizes </a></li>--}}
{{--                                <li class="nav-item assignment_students"><a data-toggle="tab" href="#tab-eg10-3" class="nav-link" id="assignment_students">Assign Students</a></li>--}}
                                <li class="nav-item assignment_view"><a data-toggle="tab" href="#assignment_view" class="nav-link assignment_view" >Assignment Details</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="assignment_list" role="tabpanel">
                                    <div class="card-body pt-1">
                                        <table style="width: 100%;" id="assignment_table" class="table table-hover table-striped table-bordered quizes_table">
                                            <thead>
                                            <tr>
                                                <th width="300px">Title</th>
                                                <th>Available From</th>
                                                <th>Deadline</th>
                                                <th>Quiz Time Limit</th>
                                                <th width="130px"> Action </th>
                                            </tr>
                                            </thead>
                                            <tbody></tbody>
                                        </table>
                                    </div>
                                </div>
                                <!--  Start Quiz From -->
                                <div class="tab-pane" id="add_assignment" role="tabpanel">
                                    <div class="card-body">
                                        <form id="assignment_form" enctype="multipart/form-data" class="form form-horizontal">
                                            @csrf
                                            <input type="hidden" name="edit_id" id="edit_id">
                                            <div class="position-relative row form-group">
                                                <label for="title" class="col-sm-2 col-form-label">Title:* </label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="title" id="title" placeholder="Title"  class="form-control">
                                                </div>
                                            </div>
                                            <div class="position-relative row form-group">
                                                <label for="available_from" class="col-sm-2 col-form-label"> Available From * </label>
                                                <div class="col-sm-4">
                                                    <input type="datetime-local" data-format="dd-MM-yyyy hh:mm:ss" name="available_from" id="available_from" value="2021-09-18 00:00:00" class="form-control"/>
                                                </div>
                                                <label for="deadline" class="col-sm-2 col-form-label">Deadline *</label>
                                                <div class="col-sm-4">
                                                    <input type="datetime-local" data-format="dd-MM-yyyy hh:mm:ss" name="deadline" id="deadline" value="2021-09-18 00:00:00" class="form-control" />
                                                </div>
                                            </div>
                                            <div class="position-relative row form-group">
                                                <label for="quiz_time_limit" class="col-sm-2 col-form-label"> Quiz Time Limit </label>
                                                <div class="col-sm-4">
                                                    <input type="text" name="quiz_time_limit" id="quiz_time_limit"  class="form-control">
                                                </div>
                                                <label for="deadline" class="col-sm-2 col-form-label">Question Time Limit *</label>
                                                <div class="col-sm-4">
                                                    <input type="text" name="question_time_limit" id="question_time_limit"  class="form-control">
                                                </div>
                                            </div>
                                            <div class="position-relative row form-group">
                                                <label for="multiple_attampt" class="col-sm-2 col-form-label">Exam Status</label>
                                                <div class="col-sm-10">
                                                    <input type="checkbox" id="is_active" name="is_exam" checked="checked" value="1" class="form-control col-lg-12 mt-2"/> Yes
                                                </div>
                                            </div>
{{--                                            <div class="position-relative row form-group">--}}
{{--                                                <label for="multiple_attampt" class="col-sm-2 col-form-label">Multiple Attempt:</label>--}}
{{--                                                <div class="col-sm-10">--}}
{{--                                                    <input type="checkbox" id="is_active" name="multiple_attampt" checked="checked" value="1" class="form-control col-lg-12 mt-2"/> Yes--}}
{{--                                                </div>--}}
{{--                                            </div>--}}

                                            <hr>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div id="accordion" class="accordion-wrapper mb-3">
                                                        <div class="card">
                                                            <div id="headingTwo" class="b-radius-0 card-header">
                                                                <button type="button" data-toggle="collapse" data-target="#collapseOne2" aria-expanded="false" aria-controls="collapseTwo" class="text-left m-0 p-0 btn btn-link btn-block"><h5 class="m-0 p-0"> Quizzes </h5></button>
                                                            </div>
                                                            <div data-parent="#accordion" id="collapseOne2" class="collapse">
                                                                <div class="card-body">

                                                                        <div class="position-relative row form-group alert alert-info ml-1 mr-1">
                                                                            <div class="col-sm-3">
                                                                                <select name="class_name" id="class_name" class="form-control">
                                                                                    <option value="default"> Select Year Name </option>
                                                                                    @foreach($classes as $classe)
                                                                                        <option  value="{{ $classe->id }}"> {{ $classe->name }} </option>
                                                                                    @endforeach
                                                                                </select>
                                                                            </div>
                                                                            <div class="col-sm-3">
                                                                                <select name="subject_name" id="subject_name" class="form-control">
                                                                                    <option value="default"> Subject Name </option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="col-sm-3">
                                                                                <select name="topic_title" id="topic_title" class="form-control">
                                                                                    <option value="default"> Topic Name </option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="col-sm-3">
                                                                                <button type="submit" class="btn btn-primary"><i class="fa fa-fw" aria-hidden="true"></i> Search </button>
                                                                            </div>
                                                                        </div>

                                                                        <div class="row" id="topicQuizes"></div>
                                                                    <div class="position-relative row form-check pl-0 mt-4">
                                                                        <div class="col-sm-10 ">
                                                                            <button type="button" id="add_quizzes" class="btn btn-success"> Add </button>
                                                                            {{--                                                            <button type="button" id="clear_button" class="btn btn-warning">Clear</button>--}}
                                                                            {{--                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>--}}
                                                                        </div>
                                                                    </div>
                                                                    <hr>
                                                                    <div class="row" >
                                                                        <table class="table table-bordered" id="quizzes">
                                                                        </table>
                                                                    </div>
                                                                    </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div id="headingThree" class="card-header">
                                                                <button type="button" data-toggle="collapse" data-target="#collapseOne3" aria-expanded="false" aria-controls="collapseThree" class="text-left m-0 p-0 btn btn-link btn-block"><h5 class="m-0 p-0">Select Students</h5></button>
                                                            </div>
                                                            <div data-parent="#accordion" id="collapseOne3" class="collapse">
                                                                <div class="card-body">
                                                                        <div class="position-relative row form-group alert alert-info ml-1 mr-1">
                                                                            <div class="col-sm-3">
                                                                                <select name="student_class_name" id="student_class_name" class="form-control">
                                                                                    <option value="default"> Select Year Name </option>
                                                                                    @foreach($classes as $classe)
                                                                                        <option  value="{{ $classe->id }}"> {{ $classe->name }} </option>
                                                                                    @endforeach
                                                                                </select>
                                                                            </div>
                                                                            <div class="col-sm-3">
                                                                                <select name="student_class_subject_name" id="student_class_subject_name" class="form-control ">
                                                                                    <option value="default"> Subject Name </option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="col-sm-3">
                                                                                <button type="submit" class="btn btn-primary"><i class="fa fa-fw" aria-hidden="true"></i> Search </button>
                                                                            </div>
                                                                        </div>

                                                                            <div class="row">
                                                                                <input type="hidden" id="assignment_id" name="assignment_id" />
                                                                                <div class="col-md-9"><strong>Students Name</strong>  </div>
                                                                                <div class="col-md-3 assignment-quiz">
                                                                                    <input type="checkbox" id="checkAllSudents" class="mr-2"> <strong class="ml-2"> Select All </strong>
                                                                                </div>
                                                                            </div>
                                                                            <hr>
                                                                            <div class="row" id="studentQuizesAssignment"></div>
                                                                            <div class="position-relative row form-check pl-0 mt-4">
                                                                                <div class="col-sm-10 ">
                                                                                    <button type="button" id="add_students" class="btn btn-success"> Add </button>
                                                                                    {{--                                                            <button type="button" id="clear_button" class="btn btn-warning">Clear</button>--}}
                                                                                    {{--                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>--}}
                                                                                </div>
                                                                            </div>
                                                                            <hr>
                                                                            <div class="row" id="student_assignment_assign"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="position-relative row form-check">
                                                <div class="col-sm-12 mt-3">
                                                    <button type="submit" id="save_assignment" class="btn btn-success "> Save</button>
                                                    {{--                                                    <button type="button" id="clear_button" class="btn btn-warning">Clear</button>--}}
                                                    {{--                                                    <button type="button" id="quiz_cancel_button" class="btn btn-danger" data-dismiss="modal">Cancel</button>--}}
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!--  End Quiz From -->

                                <div class="tab-pane" id="assignment_view" role="tabpanel">
                                    <div class="card-body">
                                            <!-- Start Question Form -->
                                            <div  id="assignment_view_details" class="mb-4 card p-3"></div>
                                            <hr>
{{--                                        <div  id="assignment_quizes" class="mb-4 card p-3"></div>--}}
                                        <div class="mb-4 card p-3">
                                            <div class="col-md-12" id="assignment_quizes">

                                            </div>
                                        </div>
                                        <hr>
{{--                                        <div  id="assignment_students_view" class="mb-4 card p-3"></div>--}}
                                        <div class="mb-4 card p-3">
                                            <div class="col-md-12" id="assignment_students_view">
                                            </div>
                                        </div>
                                        <hr>
                                            <!-- End Question Form -->
                                    </div>
                                </div>
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
    <script type="text/javascript" src="{{ asset('assets/js/page-js/quiz/assignment.js')}}"></script>
@endsection
