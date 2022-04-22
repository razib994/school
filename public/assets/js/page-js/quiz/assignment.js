$(document).ready(function () {
    assignment_datatable = $("#assignment_table").DataTable({
        destroy: true,
        order: [[0, "desc"]],
        processing: true,
        serverSide: false,
        ajax: url + "/assignments",
        aoColumns: [
            //{ data: 'id'},
            { data: "title" },
            { data: "available_from" },
            { data: "deadline" },
            { data: "quiz_time_limit" },
            { data: "actions", className: "text-center" },
        ],
    });

    $("#checkAllSudents").on("ifChecked", function () {
        $("#studentQuizesAssignment input:checkbox")
            .not(this)
            .prop("checked", this.checked);
    });

    $("#checkAllSudents").on("ifUnchecked", function () {
        $("#studentQuizesAssignment input:checkbox").iCheck("uncheck");
    });

    $("#checkAllQuizes").on("ifChecked", function () {
        $("#topicQuizes input:checkbox")
            .not(this)
            .prop("checked", this.checked);
    });

    $("#checkAllQuizes").on("ifUnchecked", function () {
        $("#topicQuizes input:checkbox")
            .not(this)
            .prop("uncheck", this.unchecked);
    });

    $("#assignments, #cancel_button").on("click", function () {
        clear_form();
        $("#clear_button").show();
        $("#save_assignment").html("Save");
        $("#assignment_title_button").html("Add Assignment");
        // $('#class_name, #subject_name, #topic_title, #student_class_name, #student_class_subject_name').html("");
        $(".assignment_view").css("display", "none");
        $("#topicQuizes").html("");
        $("#studentQuizesAssignment").html("");
        $("#student_assignment_assign, #quizzes").html("");
        $("#assignment_title_button").css("display", "block");
        $("#collapseOne2").removeClass("show");
        $("#collapseOne3").removeClass("show");
        assignment_datatable.ajax.reload();
    });

    $("#save_assignment").on("click", function () {
        event.preventDefault();
        var formData = new FormData($("#assignment_form")[0]);
        if ($.trim($("#title").val()) == "") {
            success_or_error_msg(
                "#form_submit_error",
                "danger",
                "Please enter Your Title",
                "#title"
            );
        } else {
            $.ajax({
                url: url + "/assignment",
                type: "POST",
                data: formData,
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function (data) {
                    var response = JSON.parse(data);
                    if (response["result"] == 0) {
                        var errors = response["message"];
                        resultHtml = "<ul>";
                        if (typeof errors == "string") {
                            resultHtml += "<li>" + errors + "</li>";
                        } else {
                            $.each(errors, function (k, v) {
                                resultHtml += "<li>" + v + "</li>";
                            });
                        }
                        resultHtml += "</ul>";
                        toastr["error"](resultHtml, "Failed!!!!");
                    } else {
                        toastr["success"](
                            "Assignment Save successfully",
                            "Success!!!"
                        );
                        $(this).closest("form").trigger("reset");
                        assignment_datatable.ajax.reload();
                        $("#save_assignment").html("Save");
                        $("#assignments").trigger("click");
                    }
                    $(window).scrollTop();
                },
            });
        }
    });

    //Assignment View
    assignmentEdit = function assignmentEdit(id) {
        clear_form();
        var edit_id = id;
        $("#collapseOne2").addClass("show");
        $("#collapseOne3").addClass("show");
        $("#clear_button").show();
        $("#clear_button").trigger("click");
        $("#assignment_title_button").html("Edit Assignment");
        $("#clear_button").css("display", "none");
        $.ajax({
            url: url + "/assignment/" + edit_id,
            cache: false,
            success: function (response) {
                var response = JSON.parse(response);
                var data = response["assignments"];


                $("#assignment_title_button").trigger("click");
                $("#save_assignment").html("Update");
                $("#title").val(data["title"]);
                $("#available_from").val(data["available_from"]);
                $("#deadline").val(data["deadline"]);

                data.is_exam == "No"
                    ? $("#is_active").iCheck("uncheck")
                    : $("#is_active").iCheck("checked");
                data["assignment_quizes"].forEach(function (row) {
                    $("#quizzes").append(
                        ` <tr>
                              <td><input type="hidden" name="quiz_ids[]"  value="` +
                            row.quiz.id +
                            `" /></td>
                              <td> ` +
                            row.quiz.title +
                            ` </td>
                              <td> ` +
                            row.quiz.classes.key_stages.name +
                            ` </td>
                              <td> ` +
                            row.quiz.classes.name +
                            ` </td>
                              <td> ` +
                            row.quiz.subjects.subject_name +
                            ` </td>
                              <td> ` +
                            row.quiz.topic.topic_name +
                            ` </td>
                              <td> 20 </td>
                              <td> 20 </td>
                              <td> <button onclick="$(this).parent().parent().remove()" class="border-0 btn-transition btn btn-outline-danger p-1" id="stu_name_delete"><i class="fa fa-trash-alt"></i></button> </td>
                              </tr>`
                    );
                });
                data["assignment_students"].forEach(function (row) {
                    var middle =
                        row.student.middle_name == "" ||
                        row.student.middle_name == null
                            ? ""
                            : row.student.middle_name;
                    var lastname =
                        row.student.last_name == "" ||
                        row.student.last_name == null
                            ? ""
                            : row.student.last_name;
                    $("#student_assignment_assign").append(
                        `<div class="col-md-3 mt-2 s_id"> <input type="hidden" name="student_ids[]" value="` +
                            row.student.id +
                            `"/> ` +
                            row.student.first_name +
                            ` ` +
                            middle +
                            ` ` +
                            lastname +
                            ` <button onclick="$(this).parent().remove()" class="border-0 btn-transition btn btn-outline-danger p-1" id="stu_name_delete"><i class="fa fa-trash-alt"></i></button> </div>`
                    );
                    //$("#studentQuizesAssignment").append(`<div class="col-md-3 mt-2"><input type="checkbox" checked name="student_id[]" value="`+row.student.id+`" /> `+row.student.first_name+` `+middle+` `+lastname+` </div>`);
                });
                $("#quiz_time_limit").val(data["quiz_time_limit"]);
                $("#question_time_limit").val(data["question_time_limit"]);
                $("#edit_id").val(data["id"]);
                data["multiple_attampt"] == "No"
                    ? $("#is_active").iCheck("uncheck")
                    : $("#is_active").iCheck("checked");
            },
        });
    };

    //Assignment View
    assignmentView = function assignmentView(id) {
        $(".assignment_view").css("display", "block");
        $("#assignment_title_button").css("display", "none");

        var id = id;
        $.ajax({
            url: url + "/assignment/" + id,
            cache: false,
            success: function (response) {
                var response = JSON.parse(response);
                var data = response["assignments"];
                console.log(data);
                $(".assignment_view").trigger("click");
                $("#clear_button").hide();
                var quiz_time_limit =
                    data["quiz_time_limit"] == null
                        ? ""
                        : data["quiz_time_limit"];
                var question_time_limit =
                    data["question_time_limit"] == null
                        ? ""
                        : data["question_time_limit"];
                var viewassignment =
                    `<div class='container'><div class='row'><h5 class='mt-1'> <b> Assignment Information </b></h5> </div>
                    <div class='row mt-2'><div class='col-lg-3 col-md-4 ml-4'><strong>Title: </strong></div><div class='col-lg-8 col-md-8'>` +
                    data["title"] +
                    `</div></div>
                    <div class='row mt-2'><div class='col-lg-3 col-md-4 ml-4'><strong>Available From: </strong></div><div class='col-lg-8 col-md-8'>` +
                    data["available_from"] +
                    `</div></div>
                    <div class='row mt-2'><div class='col-lg-3 col-md-4 ml-4'><strong>Deadline: </strong></div><div class='col-lg-8 col-md-8'>` +
                    data["deadline"] +
                    `</div></div>
                    <div class='row mt-2'><div class='col-lg-3 col-md-4 ml-4'><strong> Quiz Time Limit: </strong></div><div class='col-lg-8 col-md-8'>` +
                    quiz_time_limit +
                    `</div></div>
                    <div class='row mt-2'><div class='col-lg-3 col-md-4 ml-4'><strong>Question Time Limit: </strong></div><div class='col-lg-8 col-md-8'>` +
                    question_time_limit +
                    `</div></div>
                    <div class='row mt-2'><div class='col-lg-3 col-md-4 ml-4'><strong>Multiple Attempt: </strong></div><div class='col-lg-8 col-md-8'>` +
                    data["multiple_attampt"] +
                    `</div></div>
                    </div>`;
                //(data['status']=='Inactive')?$("#is_active").iCheck('uncheck'):$("#is_active").iCheck('checked');
                $("#assignment_view_details").html(viewassignment);

                var studentHtml = ``;
                studentHtml += `<h4> Student Details </h4>`;
                $.each(data["assignment_students"], function (i, value) {
                    var middle =
                        value["student"]["middle_name"] == "" ||
                        value["student"]["middle_name"] == null
                            ? ""
                            : value["student"]["middle_name"];
                    var lastname =
                        value["student"]["last_name"] == "" ||
                        value["student"]["last_name"] == null
                            ? ""
                            : value["student"]["last_name"];
                    studentHtml +=
                        `<div class="tab-pane show active mb-2 rowcount" id="quizSubject14" role="tabpanel">
                                                    <ul class="list-group "> <li class="list-group-item">
                                                            <div class="widget-content p-0">
                                                                <div class="widget-content-wrapper">
                                                                    <div class="widget-content-left flex2">
                                                                        <div class="widget-heading">` +
                        value["student"]["first_name"] +
                        ` ` +
                        middle +
                        `  ` +
                        lastname +
                        ` </div>
                                                                        <div class="widget-subheading opacity-10">
                                                                            <span class="pr-2">Key Stage -> <b class="badge badge-warning"> Key Stage 1 </b></span>
                                                                            <span>Year -> <b class="badge badge-success">Year 1</b></span>
                                                                            <span>  </span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="widget-content-right pr-2">
                                                                        <div role="group" class="btn-group-sm btn-group">
                                                                            <span> Quizzes - <b class="badge badge-warning">1/2 </b> </span> &nbsp; <span>  Score - <b class="badge badge-success">0%</b></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="widget-content-right">
                                                                        <div role="group" class="btn-group-sm btn-group"> </div>
                                                                    </div>
                                                                    <div class="widget-content-right"><a href="` +
                        url +
                        `/admin/assignments/` +
                        value["student"]["id"] +
                        `" class="btn btn-success btn-lg pt-3 pb-3 mains"><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Details </a></div>
                                                                </div>
                                                            </div>
                                                        </li> </ul>
                                                </div>`;
                });
                var quizes = "";
                quizes += `<h4> Quizzes Details </h4>`;
                $.each(data["assignment_quizes"], function (i, value) {
                    quizes +=
                        `<div class="tab-pane show active mb-2 rowcount" id="quizSubject14" role="tabpanel">
                                                    <ul class="list-group "> <li class="list-group-item">
                                                            <div class="widget-content p-0">
                                                                <div class="widget-content-wrapper">
                                                                    <div class="widget-content-left flex2">
                                                                        <div class="widget-heading">` +
                        value["quiz"]["title"] +
                        ` <span class="badge badge-info"></span></div>
                                                                        <div class="widget-subheading opacity-10">
                                                                            <span class="pr-2">Total Questions <b class="badge badge-warning"> ` +
                        value["quiz"]["total_question"] +
                        `</b></span>
                                                                            <span>Total Marks <b class="badge badge-success">` +
                        value["quiz"]["total_marks"] +
                        `</b></span>
                                                                            <span> </span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="widget-content-right">
                                                                        <div role="group" class="btn-group-sm btn-group"> </div> </div>
                                                                    <div class="widget-content-right"><a href="` +
                        url +
                        `/assignment-quiz-details/` +
                        value["quiz"]["id"] +
                        `" id="view_` +
                        value["quiz"]["id"] +
                        `" class="btn btn-success btn-lg pt-3 pb-3 mains"><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Details </a></div>
                                                                </div>
                                                            </div>
                                                        </li> </ul>
                                                </div>`;
                });
                $("#assignment_quizes").html(quizes);
                $("#assignment_students_view").html(studentHtml);
            },
        });
    };

    // quiz Delete
    assignmentDelete = function assignmentDelete(id) {
        var del_id = id;
        swal({
            title: "Are you sure?",
            text: "You wants to delete item Permanently!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        }).then((willDelete) => {
            if (willDelete) {
                $.ajax({
                    url: url + "/assignment/delete/" + del_id,
                    cache: false,
                    success: function (data) {
                        var response = JSON.parse(data);
                        if (response["result"] == 0) {
                            toastr["error"](response["message"], "Error!!!");
                        } else {
                            toastr["success"](
                                response["message"],
                                "Success!!!"
                            );
                            assignment_datatable.ajax.reload();
                        }
                    },
                });
            } else {
                swal("Your Data is safe..!", {
                    icon: "warning",
                });
            }
        });
    };

    $("#class_name").change(function () {
        $("#subject_name").empty();
        $("#topic_title").empty();
        var id = $(this).val();
        if (id) {
            $.ajax({
                url: url + "/class_subject?class_id=" + id,
                cache: false,
                success: function (response) {
                    var response = JSON.parse(response);
                    var data = response["classSubject"];
                    var quiz = response["quizes"];
                    $("#subject_name").empty();
                    $("#subject_name").append(
                        "<option>Select Subject </option>"
                    );
                    data.forEach(function (row) {
                        $("#subject_name").append(
                            '<option value="' +
                                row.subjects.id +
                                '">' +
                                row.subjects.subject_name +
                                " " +
                                row.subjects.subject_details +
                                "</option>"
                        );
                    });
                    var quizes = "";
                    quizes += `<table class="table table-bordered m-3"><tr>
                              <th></th>
                              <th> Quiz Title </th>
                              <th> Key Stage </th>
                              <th> Year </th>
                              <th> Subject </th>
                              <th> Topic </th>
                              <th> Total Question </th>
                              <th> Total Marks </th>
                              <th> view </th>
                              </tr> `;
                    quiz.forEach(function (row) {

                        var total_mark =
                            row.total_marks == null ? "0" : row.total_marks;
                        quizes +=
                            `<tr>
                              <td><input type="checkbox" name="quiz_id[]" id="quiz_id_check_` +
                            row.id +
                            `"  value="` +
                            row.id +
                            `" /></td>
                              <td> ` +
                            row.title +
                            ` </td>
                              <td> ` +
                            row.classes.key_stages.name +
                            ` </td>
                              <td> ` +
                            row.classes.name +
                            ` </td>
                              <td> ` +
                            row.subjects.subject_name +
                            ` </td>
                              <td> ` +
                            row.topic.topic_name +
                            ` </td>
                              <td> ` +
                            row.total_question +
                            ` </td>
                              <td> ` +
                            total_mark +
                            ` </td>
                              <td> <a href="` +
                            url +
                            `/assignment-quiz-details/` +
                            row.id +
                            `" title='View'   class='btn btn-xs btn-info admin-user-view'><i class='lnr-eye'></i></a> </td>
                              </tr>`;
                    });
                    quizes += `</table>`;
                    $("#topicQuizes").html(quizes);
                },
            });
        } else {
            $("#subject_name").empty();
        }
    });

    $("#subject_name").change(function () {
        var id = $(this).val();
        if (id) {
            $.ajax({
                url: url + "/class-subject-topic?class_subject_topic_id=" + id,
                cache: false,
                success: function (response) {
                    var response = JSON.parse(response);
                    var data = response["topics"];
                    var quiz = response["quizes"];

                    jQuery('select[name="topic_title"]').empty();
                    var topic =
                        '<option value="" disabled selected>Select Topic</option>';
                    data.forEach(function (row) {
                        topic +=
                            '<option value="' +
                            row.id +
                            '">' +
                            row.topic_name +
                            " " +
                            row.topic_details +
                            "</option>";
                    });
                    var quizes = "";
                    quizes += `<table class="table table-bordered m-3"><tr>
                              <th></th>
                              <th> Quiz Title </th>
                              <th> Key Stage </th>
                              <th> Year </th>
                              <th> Subject </th>
                              <th> Topic </th>
                              <th> Total Question </th>
                              <th> Total Marks</th>
                              <th> view </th>
                              </tr> `;
                    quiz.forEach(function (row) {

                        quizes +=
                            `<tr>
                              <td><input type="checkbox" name="quiz_id[]"  value="` +
                            row.id +
                            `" /></td>
                              <td> ` +
                            row.title +
                            ` </td>
                              <td> ` +
                            row.classes.key_stages.name +
                            ` </td>
                              <td> ` +
                            row.classes.name +
                            ` </td>
                              <td> ` +
                            row.subjects.subject_name +
                            ` </td>
                              <td> ` +
                            row.topic.topic_name +
                            ` </td>
                              <td> ` +
                            row.total_question +
                            ` </td>
                              <td> ` +
                            row.total_marks +
                            ` </td>
                              <td> <button title='View' onclick='quizView(` +
                            row.id +
                            `)'  class='btn btn-xs btn-info admin-user-view'><i class='lnr-eye'></i></button> </td>
                              </tr>`;
                    });
                    quizes += `</table>`;
                    $("#topicQuizes").html(quizes);
                    $('select[name="topic_title"]').html(topic);
                },
            });
        } else {
            $('select[name="topic_title"]').empty();
        }
    });

    $("#topic_title").change(function () {
        var id = $(this).val();
        if (id) {
            $.ajax({
                url: url + "/topic-quizes?topic_id=" + id,
                cache: false,
                success: function (response) {
                    var response = JSON.parse(response);
                    var quiz = response["quizes"];
                    var quizes = "";
                    quizes += `<table class="table table-bordered m-3"><tr>
                              <th></th>
                              <th> Quiz Title </th>
                              <th> Key Stage </th>
                              <th> Year </th>
                              <th> Subject </th>
                              <th> Topic </th>
                              <th> Total Question </th>
                              <th> Total Marks </th>
                              <th> view </th>
                              </tr> `;
                    quiz.forEach(function (row) {
                        quizes +=
                            `<tr>
                              <td><input type="checkbox" name="quiz_id[]"  value="` +
                            row.id +
                            `" /></td>
                              <td> ` +
                            row.title +
                            ` </td>
                              <td> ` +
                            row.classes.key_stages.name +
                            ` </td>
                              <td> ` +
                            row.classes.name +
                            ` </td>
                              <td> ` +
                            row.subjects.subject_name +
                            ` </td>
                              <td> ` +
                            row.topic.topic_name +
                            ` </td>
                              <td> ` +
                            row.total_question +
                            ` </td>
                              <td> ` +
                            row.total_marks +
                            ` </td>
                              <td> <button title='View' onclick='quizView(` +
                            row.id +
                            `)'  class='btn btn-xs btn-info admin-user-view'><i class='lnr-eye'></i></button> </td>
                              </tr>`;
                    });
                    quizes += `</table>`;
                    $("#topicQuizes").html(quizes);
                },
            });
        } else {
            $('select[name="topic_title"]').empty();
        }
    });

    $("#student_class_name").change(function () {
        $("#student_class_subject_name").empty();
        var id = $(this).val();
        if (id) {
            $.ajax({
                url: url + "/class_subject?class_id=" + id,
                cache: false,
                success: function (response) {
                    var response = JSON.parse(response);
                    var data = response["classSubject"];
                    var dataStudents = response["students"];

                    $("#student_class_subject_name").empty();
                    $("#student_class_subject_name").append(
                        "<option>Select Subject </option>"
                    );
                    data.forEach(function (row) {
                        $("#student_class_subject_name").append(
                            '<option value="' +
                                row.subjects.id +
                                '">' +
                                row.subjects.subject_name +
                                " " +
                                row.subjects.subject_details +
                                "</option>"
                        );
                    });

                    var students = "";
                    dataStudents.forEach(function (row) {
                        var middle =
                            row.middle_name == "" || row.middle_name == null
                                ? ""
                                : row.middle_name;
                        var lastname =
                            row.last_name == "" || row.last_name == null
                                ? ""
                                : row.last_name;
                        students +=
                            `<div class="col-md-3 mt-2" id="studnet_id_check_` +
                            row.id +
                            `"><input type="checkbox" name="student_id[]" value="` +
                            row.id +
                            `" /> ` +
                            row.first_name +
                            ` ` +
                            middle +
                            ` ` +
                            lastname +
                            ` </div>`;
                    });
                    $("#studentQuizesAssignment").html(students);
                },
            });
        } else {
            $("#student_class_subject_name").empty();
        }
    });

    $("#student_class_subject_name").change(function () {
        var id = $(this).val();
        if (id) {
            $.ajax({
                url: url + "/student-quizes?student_class_id=" + id,
                cache: false,
                success: function (response) {
                    var response = JSON.parse(response);
                    var data = response["students"];
                    var students = "";
                    data.forEach(function (row) {
                        var middle =
                            row.middle_name == "" || row.middle_name == null
                                ? ""
                                : row.middle_name;
                        var lastname =
                            row.last_name == "" || row.last_name == null
                                ? ""
                                : row.last_name;
                        students +=
                            `<div class="col-md-3 mt-2"><input type="checkbox" name="student_id[]" value="` +
                            row.id +
                            `" /> ` +
                            row.first_name +
                            ` ` +
                            middle +
                            ` ` +
                            lastname +
                            ` </div>`;
                    });
                    $("#studentQuizesAssignment").html(students);
                },
            });
        } else {
            $('select[name="topic_title"]').empty();
        }
    });

    $("#add_students").on("click", function () {
        $('input[name="student_id[]"]').each(function () {
            if ($(this).is(":checked")) {
                var checked = $(this).val();
                var name = $(this)
                    .parent()
                    .parent()
                    .children("#studnet_id_check_" + checked)
                    .html();
                $("#student_assignment_assign").append(
                    `<div class="col-md-3 mt-2"> <input type="hidden" name="student_ids[]" value="` +
                        checked +
                        `"/> ` +
                        name +
                        ` <button class="border-0 btn-transition btn btn-outline-danger p-1" onclick="$(this).parent().remove()"><i class="fa fa-trash-alt"></i></button> </div>`
                );
            }
        });
    });

    $("#add_quizzes").on("click", function () {
        $('input[name="quiz_id[]"]').each(function () {
            if ($(this).is(":checked")) {
                var quiz_title = $(this)
                    .parent()
                    .parent()
                    .children("td:eq(1)")
                    .html();
                var quiz_year = $(this)
                    .parent()
                    .parent()
                    .children("td:eq(2)")
                    .html();
                var quiz_class = $(this)
                    .parent()
                    .parent()
                    .children("td:eq(3)")
                    .html();
                var quiz_subject = $(this)
                    .parent()
                    .parent()
                    .children("td:eq(4)")
                    .html();
                var quiz_topic = $(this)
                    .parent()
                    .parent()
                    .children("td:eq(5)")
                    .html();
                var total_question = $(this)
                    .parent()
                    .parent()
                    .children("td:eq(6)")
                    .html();
                var total_marks = $(this)
                    .parent()
                    .parent()
                    .children("td:eq(7)")
                    .html();
                var checked = $(this).val();
                $("#quizzes").append(
                    ` <tr>
                              <td><input type="hidden" name="quiz_ids[]"  value="` +
                        checked +
                        `" /></td>
                              <td> ` +
                        quiz_title +
                        ` </td>
                              <td> ` +
                        quiz_year +
                        ` </td>
                              <td> ` +
                        quiz_class +
                        ` </td>
                              <td> ` +
                        quiz_subject +
                        ` </td>
                              <td> ` +
                        quiz_topic +
                        ` </td>
                              <td> ` +
                        total_question +
                        ` </td>
                              <td> ` +
                        total_marks +
                        ` </td>
                              <td> <button onclick="$(this).parent().parent().remove()" class="border-0 btn-transition btn btn-outline-danger p-1" id="stu_name_delete"><i class="fa fa-trash-alt"></i></button> </td>
                              </tr>`
                );
            }
        });

        // here will be the remove function
    });

    $("#available_from").datetimepicker({
        timeInput: true,
        dateFormat: "yy-mm-dd",
        timeFormat: "HH:mm:ss",
    });

    quizViewDetails = function quizViewDetails(id) {
        alert(id);
    };
});
