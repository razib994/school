$("#searchQuizzes").on('click',function(event){
    event.preventDefault();
    var report_heading = 'Batch Status  ';
    if($.trim($('#year_name').val()) != ""){
        report_heading += " Key Stage "+$('#year_name').val();
    }
    if($.trim($('#class_name').val()) != ""){
        report_heading += " Year "+$('#class_name').val();
    }
    if($.trim($('#subject_name').val()) != ""){
        report_heading += " Subject: "+$('#subject_name').val();
    }
    // if($.trim($('#topic_title').val()) != ""){
    //     report_heading += " Topics: "+$('#topic_title').val();
    // }
    quiz_datatable = $('#quiz_table').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/quizes",
            "type": "POST",
            "data" : {
                "year_name"     : $("#year_name").val(),
                "class_name"    : $("#class_name").val(),
                "subject_name"  : $('#subject_name').val(),
                // "topic_title"   : $('#topic_title').val(),
            },
        },
        "aoColumns": [
            { data: 'title'},
            { data: 'year_name' },
            { data: 'class_name'},
            { data: 'subject_name'},
            // { data: 'topic_name'},
            { data: 'total_mark'},
            { data: 'total_question'},
            { data: 'status', className: "text-center"},
            { data: 'actions' , className: "text-center"},
        ],
    });

});
$('#searchQuizzes').trigger('click');
$(document).ready(function () {
    //Entry And Update
    $("#save_quiz").on('click',function(){
        event.preventDefault();
        var formData = new FormData($('#quiz_form')[0]);

        if($.trim($('#title').val()) == ""){
            success_or_error_msg('#form_submit_error','danger',"Please enter Your Name","#title");
        }
        else if($.trim($('#year_id').val()) == "default"){
            success_or_error_msg('#form_submit_error','danger',"Please Select Your Key stage","#year_id");
        }
        else if($.trim($('#class_id').val()) == "default" ){
            success_or_error_msg('#form_submit_error','danger',"Please Select Your Year ","#class_id");
        }
        else if($.trim($('#subject_id').val()) == "default"){
            success_or_error_msg('#form_submit_error','danger',"Please Select Your Subject","#subject_id");
        }else if($.trim($('#topic_id').val()) == "default"){
            success_or_error_msg('#form_submit_error','danger',"Please Select Your Topic","#topic_id");
        } else{
            $.ajax({
                url: url+"/quiz",
                type:'POST',
                data:formData,
                async:false,
                cache:false,
                contentType:false,
                processData:false,
                success: function(data){
                    var response = JSON.parse(data);
                    if(response['result'] == 0){
                        var errors	= response['message'];
                        resultHtml = '<ul>';
                        if(typeof(errors)=='string'){
                            resultHtml += '<li>'+ errors + '</li>';
                        }
                        else{
                            $.each(errors,function (k,v) {
                                resultHtml += '<li>'+ v + '</li>';
                            });
                        }
                        resultHtml += '</ul>';
                        toastr['error'](resultHtml,  'Failed!!!!');
                    }
                    else{
                        toastr['success']('Quiz saved successfully',  'Success!!!');
                        quiz_datatable.ajax.reload();
                        $(this).closest('form').trigger("reset");
                        clear_form();
                        $("#save_quiz").html('Save');
                        $("#edit_id").val('');
                        questionAdd(response['id']);
                        $(".assign").css("display","block");
                    }
                    $(window).scrollTop();
                }
            });
        }
    });

    $("#quiz_lists, #cancel_button").on('click',function(){
        clear_form();
        $("#clear_button").show();
        $("#save_quiz").html('Save');
        $("#quiz_title_button").html('Add Quizes');
        $('#class_id, #subject_id, #topic_id').find('option').remove();
        $("#quiz_title_button").css("display","block");
        $(".quiz_view, .question_add, .assign").css("display","none");
        $('#questionall').html("");
        $('#question_form')[0].reset();
        $('.question_type_button').removeClass('active');
        $("table tbody#option_details tr:gt(0)").remove();
        $("#add_question").html('Add Questions');
        quiz_datatable.ajax.reload();
    });
    $("#assign").on('click',function(){
        $(".question_title_form").html("");
        $("table tbody#option_details tr:gt(0)").remove();
        $('.question_type_button').removeClass('active');

    });

    $("#quiz_title_view").on('click',function(){
        $(".question_add, .assign").css("display","block");
        $("#add_question").html('Add Questions');
        $(".question_title_form").html("");
        $("table tbody#option_details tr:gt(0)").remove();
        $('.question_type_button').removeClass('active');
    });

    $("#quiz_cancel_button").on('click', function (){
        $("#clear_button").trigger('click');
        $("#clear_button").show();
        $("#quiz_lists").trigger('click');
    });

    $("#checkAllSudents").on('ifChecked', function (){
        $('#student_assign input:checkbox').not(this).prop('checked', this.checked);
    })
    $("#checkAllSudents").on('ifUnchecked', function (){
        $('#student_assign input:checkbox').iCheck('uncheck');
    })

    questionAdd = function questionAdd(id){
        quizView(id, 1);
        $(".assign").css("display","block");
        $("#quiz_title_view").html('Quiz Details');
        $(".quiz_view").css("display","block");
        clear_form();
        $("#clear_button").trigger('click');
        $("#clear_button").show();
        $(".question_add").css("display","block");
        $("#quiz_title_button").css("display","none");
        $("#question_title_form").css("display","none");
        var quiz_id = id;
        $('#assign_quiz_id').val(quiz_id);
        $.ajax({
            url: url+'/quiz/'+quiz_id,
            cache: false,
            success: function(response){
            var response    = JSON.parse(response);
            var data        = response['quiz'];
            $("#add_question, #quiz_id").trigger('click');
            $("#clear_button").hide();
            var viewquiz = `<div class="row"><div class="col-md-12"><h5><b>`+data['classes']['name']+` -> `+data['subjects']['subject_name']+`</b></h5></div></div>`;
            $('#assign_class_view').html(viewquiz);

                var studentHtml = '';
                $.each(data['students'], function (i, value) {
                    var middle = (value['middle_name'] == "" || value['middle_name'] == null) ? "" : value['middle_name'];
                    var lastname = (value['last_name'] == "" || value['last_name'] == null) ? "" : value['last_name'];
                    studentHtml += `<div class="col-md-3 p-2"> <input type="checkbox" name="student_id[]" value="` + value['id'] + `" class=""> ` + value['first_name'] + ` ` + middle + `  ` + lastname + `</div>`;
                });
                if(data['status'] == 'Inactive') {
                    $('#student_assign').html("");
                }else {
                    $('#student_assign').html(studentHtml);
                }
                // $('#student_assign').html(studentHtml);

             $('#quiz_id').val(data['id']);

            }
        });

    };
    // quiz edit/update
    quizEdit = function quizEdit(id){
        clear_form();
        var edit_id = id;
        $("#clear_button").show();
        $("#clear_button").trigger('click');
        $("#quiz_title_button").html('Edit Quiz');
        $("#clear_button").css("display","none");
        $(".question_add, .assign").css("display","block");
        $.ajax({
            url: url+'/quiz/'+edit_id,
            cache: false,
            success: function(response){
                var response = JSON.parse(response);
                var data = response['quiz'];
                var years = response['years'];
                var classSubjects = response['subjects'];
                var topics = response['topics'];
                $("#quiz_title_button").trigger('click');
                $("#save_quiz").html('Update');
                $("#title").val(data['title']);
                $("#year_id").val(data['year_id']);
                years.forEach(function (row){
                    $("#class_id").append('<option value="'+row.id+'">'+row.name+' '+row.details+'</option>');
                });
                classSubjects.forEach(function (row){
                    var select = (data['subject_id'] == row.subjects.id)?'selected':'';
                    $("#subject_id").append('<option value="'+row.subjects.id+'" '+select+' >'+row.subjects.subject_name+' '+row.subjects.subject_details+'</option>');
                });
                topics.forEach(function (row){
                    $("#topic_id").append('<option value="'+row.id+'">'+row.topic_name+' '+row.topic_details+'</option>');
                });
                $("#instruction").val(data['instruction']);
                $("#attach_file").val(data['attachment']);
                $("#remote_media_file_link").val(data['remote_media_file_link']);
                $("#edit_id, #quiz_id").val(data['id']);
                (data['status']=='Inactive')?$("#is_active").iCheck('uncheck'):$("#is_active").iCheck('checked');

                if(!jQuery.isEmptyObject(data['questions'])){
                    var questionalls = "";
                    $.each(data['questions'], function(i,value){
                            questionalls +='<tr><td><b>'+value['serial']+'.'+value['question_detail']+' </b><br>';
                            var types = value['type'];
                        if(types == 'Graph'){
                            questionalls +='<img src="'+url+'/assets/images/question/'+value['image']+'" height="200" width="300"/><br>';
                        }
                        $.each(value['options'], function(key1, optionvalue){
                            if(types == 'Picture choice'){
                                questionalls += '<p style="padding-left: 20px; margin-bottom:3px;"><img src="'+url+'/assets/images/option/'+optionvalue['question_option_title']+'" width="100px" height="100px"/> </p>';
                            }
                            else if(types == 'Match pair image'){
                                questionalls += '<p style="padding-left: 20px; margin-bottom:3px;"><img src="'+url+'/assets/images/option/'+optionvalue['question_option_title']+'" width="10%" /> </p>';
                            }
                            else if(types == 'Graph') {
                                questionalls += '<p style="padding-left: 20px; margin: 0;">'+optionvalue['question_option_title']+' = '+optionvalue['is_answer']+'</p>';
                            }
                            else {
                                questionalls += '<p style="padding-left: 20px; margin: 0;">'+optionvalue['question_option_title']+'</p>';
                            }

                        })
                        questionalls += '</td> <td>'+value['mark']+'</td> <td>';
                        $.each(value['options'], function(key1, optionvalue){
                            var answer = (optionvalue['is_answer'] == 1) ? optionvalue['question_option_title'] : (optionvalue['is_answer'] == 0 || optionvalue['is_answer'] == null ) ? '' :optionvalue['is_answer'];
                            if(types == 'Picture choice') {
                                var dis = (answer == "")?'display:none;':'';
                                questionalls += '<p><img src="' + url + '/assets/images/option/'+answer+'" style="'+dis+'"   height="80px" width="80px"/> </p>';
                            }
                            else if(types == 'Match pair image'){
                                questionalls += '<p><img src="' + url + '/assets/images/option/'+answer+'" style="'+dis+'"    width="40%"/> </p>';
                            }
                            else if(types == 'Ordering'){
                                questionalls += '<p>'+optionvalue['question_option_title']+'</p>';
                            }
                            else if(types == 'Graph'){
                                questionalls += '<p>'+optionvalue['is_answer']+'</p>';
                            }
                            else {
                                questionalls += '<p>' + answer + '</p>';
                            }
                        })
                        questionalls += '</td><td width="80px"><button class="border-0 btn-transition btn btn-outline-success p-2" onclick="questionEdit('+value['id']+')" ><i class="fa fa-edit"></i></button><button class="border-0 btn-transition btn btn-outline-danger p-2" onclick="questionDelete('+value['id']+')"><i class="fa fa-trash-alt"></i></button></td></tr>';
                    })
                }
                var studentHtml ='';
                $.each(data['students'], function(i,value){
                    var middle   = (value['middle_name'] == "" || value['middle_name'] == null)? "":  value['middle_name'];
                    var lastname = (value['last_name'] == "" || value['last_name'] == null)? "":  value['last_name'];
                    studentHtml += `<div class="col-md-3 p-2"> <input type="checkbox" name="student_id[]" class="" value="`+value['id']+`"> `+value['first_name']+` `+middle+`  `+lastname+`</div>`;
                });

                var studentList ='';
                $.each(data['quiz_students'], function(i,value){
                    var middle   = (value['student']['middle_name'] == "" || value['student']['middle_name'] == null)? "":  value['student']['middle_name'];
                    var lastname = (value['student']['last_name'] == "" || value['student']['last_name'] == null)? "":  value['student']['last_name'];
                    studentList += `<div class="tab-pane show active mb-2 rowcount" id="quizSubject14" role="tabpanel">
                                                                    <ul class="list-group "> <li class="list-group-item">
                                                                            <div class="widget-content p-0">
                                                                                <div class="widget-content-wrapper">
                                                                                    <div class="widget-content-left flex2">
                                                                                        <div class="widget-heading">`+value['student']['first_name']+` `+middle+`  `+lastname+`</div>
                                                                                        <div class="widget-subheading opacity-10">
                                                                                            <span class="pr-2">Key Stage -> <b class="badge badge-warning"> Key Stage 1 </b></span>
                                                                                            <span>Year -> <b class="badge badge-success">Year 1</b></span>
                                                                                            <span>  </span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="widget-content-right pr-2">
                                                                                        <div role="group" class="btn-group-sm btn-group">
                                                                                            <span>Total Questions - <b class="badge badge-warning">`+value['quiz']['total_question']+` </b></span> &nbsp; <span> Total Score - <b class="badge badge-success">`+value['score']+`%</b></span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="widget-content-right">
                                                                                        <div role="group" class="btn-group-sm btn-group"> </div>
                                                                                    </div>
                                                                                    <div class="widget-content-right"><a href="`+url+`/quiz-and-student-wise-details/`+value['student']['id']+`" class="btn btn-success btn-lg pt-3 pb-3 mains"><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Details </a></div>
                                                                                </div>
                                                                            </div>
                                                                        </li> </ul>
                                                                </div>`;
                });

                $('#student_assign_list').html(studentList);
                if(data['status'] == 'Inactive') {
                    $('#student_assign').html("");
                }else {
                    $('#student_assign').html(studentHtml);
                }
                // $('#student_assign').html(studentHtml);

                $('#questionalls').html(questionalls);
            }
        });
    }

    // quiz Delete
    quizDelete = function quizDelete(id){
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
                    url: url+'/quiz/delete/'+del_id,
                    cache: false,
                    success: function(data){
                        var response = JSON.parse(data);
                        if(response['result'] == 0){
                            toastr['error']( response['message'], 'Error!!!');
                        }
                        else{
                            toastr['success']( response['message'], 'Success!!!');
                            quiz_datatable.ajax.reload();
                        }
                    }
                });
            }
            else {
                swal("Your Data is safe..!", {
                    icon: "warning",
                });
            }
        });
    }

    function createOptionTr(i, arg){
         var option_id          = (arg.option_id.length > 0) ? arg.option_id : '';
         var option_name        = (arg.option_name.length > 0) ? arg.option_name : '';
         var is_answer          = (arg.is_answer.length > 0) ? arg.is_answer : '0';
         var type               = (arg.type.length > 0) ? arg.type : '';
         var typebox            = (type==='Free text' || type==='Fill in the blanks' || type==='Ordering') ? "hidden" : "checkbox";
         var is_answer_option   = (is_answer==1) ? "checked" : "unchecked";
         if(type==='Picture choice'){
             var option = `<tr id="option_id` + i + `"><td width="5%">` + i + `</td><td><input type='hidden' class="form-control"  value="` + arg.option_id + `" id="option_id" name='option_id[]'>
        <input type='file' class="form-control" accept="image/*" value="12"  id="question_option_title_` + i + `" name='question_option_title[]'></td>
        <td style="display: inline-flex; width: 120px;">
        <input type='` + typebox + `' class="form-control" style="width: 20px; margin-right: 10px;" id="is_answer_check_` + i + `"  value="` + is_answer + `" ` + is_answer_option + ` name="is_answer_check[]">
        <input type='hidden' value="` + is_answer + `" id="is_answer_` + i + `" name="is_answer[]">
        <button type="button" class="delete-row btn btn-outline-danger p-0 question_delete_button" onclick="$(this).closest('tr').remove()"><i class="fa fa-trash-alt p-2" aria-hidden="true"></i></button></td>
        </tr>`;
         }
         else if(type==='Graph') {
             var option = `<tr id="option_id` + i + `"><td width="5%">` + i + `</td><td><input type='hidden' class="form-control"  value="` + arg.option_id + `" id="option_id" name='option_id[]'>
        <input type='text' class="form-control"  value="` + option_name + `" id="question_option_title_` + i + `" name='question_option_title[]'></td>
        <td> = </td>
        <td style="display: inline-flex;">
        <input type='text' class="form-control" value="` + is_answer +`"  id="is_answer_` + i + `" name="is_answer[]">
        <button type="button" class="delete-row btn btn-outline-danger p-0 question_delete_button ml-1" onclick="$(this).closest('tr').remove()"><i class="fa fa-trash-alt p-2" aria-hidden="true"></i></button></td>
        </tr>`;
         }
         else if(type==='Match pair'){
             var option = `<tr id="option_id` + i + `"><td width="5%">` + i + `</td><td><input type='hidden' class="form-control"  value="` + arg.option_id + `" id="option_id" name='option_id[]'>
        <input type='text' class="form-control"  value="` + option_name + `" id="question_option_title_` + i + `" name='question_option_title[]'></td>
        <td style="display: inline-flex;">
        <input type='text' class="form-control" value="` + is_answer +`"  id="is_answer_` + i + `" name="is_answer[]">
        <button type="button" class="delete-row btn btn-outline-danger p-0 question_delete_button ml-1" onclick="$(this).closest('tr').remove()"><i class="fa fa-trash-alt p-2" aria-hidden="true"></i></button></td>
        </tr>`;
         }
         else if(type==='Match pair image'){
             var option = `<tr id="option_id` + i + `"><td width="5%">` + i + `</td><td><input type='hidden' class="form-control"  value="` + arg.option_id + `" id="option_id" name='option_id[]'>
        <input type='file' class="form-control"  value="` + option_name + `" id="question_option_title_` + i + `" name='question_option_title[]'></td>
        <td style="display: inline-flex;">
        <input type='file' class="form-control"   id="is_answer_` + i + `" name="is_answer[]">
        <button type="button" class="delete-row btn btn-outline-danger p-0 question_delete_button ml-1" onclick="$(this).closest('tr').remove()"><i class="fa fa-trash-alt p-2" aria-hidden="true"></i></button></td>
        </tr>`;
         }
         else {
             var option = `<tr id="option_id` + i + `"><td width="5%">` + i + `</td><td><input type='hidden' class="form-control"  value="` + arg.option_id + `" id="option_id" name='option_id[]'>
        <input type='text' class="form-control"  value="` + option_name + `" id="question_option_title_` + i + `" name='question_option_title[]'></td>
        <td style="display: inline-flex; width: 120px;">
        <input type='` + typebox + `' class="form-control" style="width: 20px; margin-right: 10px;" id="is_answer_check_` + i + `"  value="` + is_answer + `" ` + is_answer_option + ` name="is_answer_check[]">
        <input type='hidden' value="` + is_answer + `" id="is_answer_` + i + `" name="is_answer[]">
        <button type="button" class="delete-row btn btn-outline-danger p-0 question_delete_button" onclick="$(this).closest('tr').remove()"><i class="fa fa-trash-alt p-2" aria-hidden="true"></i></button></td>
        </tr>`;
         }
         $("table tbody#option_details").append(option);
         $("#headlineTitle").html(type);
        $("[name='is_answer_check[]']").click(function () {
            ($(this).is(':checked')) ? $(this).next().val(1) : $(this).next().val(0)
        });
    }

    // One Row (tr) create
    $(".add-row").click(function () {
        var type = $('#type').val();
        let i = 0;
        while (i < 1 ) {
            var arg = {
                type: type,
                option_name: "",
                is_answer: "",
                option_id: "",
            };
            i++;
            createOptionTr(i, arg)
        }
    });

    creteOptions = function creteOptions(type, options=""){
        $("table tbody#option_details tr:gt(0)").remove();
        $('.question_type_button').removeClass('active');
        $("#button1_text").html("<i class='lnr-music-note'> </i> upload Audio");
        $("#button2_text").html("<i class='lnr-picture'> </i> upload Image");
        $('.typematch').css("display","none");

        if(type == 'Multiple choice') {
            $(".add-row").css("display","block");
            $("#question_title_form").css("display","block");
            $("#type").val(type);
            let i = 0;
            if(options.length>0){
                while(i<options.length){
                    dataItems = options.map((item) => {
                        var arg = {
                            type: type,
                            option_name : item.question_option_title,
                            is_answer   : item.is_answer,
                            option_id   : item.id,
                        }
                        i++;
                        createOptionTr(i, arg)
                    });
                }
            } else {
                    while (i < 4 ) {
                        var arg = {
                            type: type,
                            option_name: "",
                            is_answer: "0",
                            option_id: "",
                        };
                        i++;
                        createOptionTr(i, arg)
                }
            }
        }
        else if(type == 'Single Choice'){
            $(".add-row").css("display","block");
            $('#question_title_form').css('display','block');
            $("#type").val(type);
            let i = 0;
            if(options.length>0){
                while(i<options.length){
                    dataItems = options.map((item) => {
                        var arg = {
                            type: type,
                            option_name : item.question_option_title,
                            is_answer   : item.is_answer,
                            option_id   : item.id,
                        }
                        i++;
                        createOptionTr(i, arg)
                    });
                }
            } else {
                while (i < 4 ){
                    var arg = {
                        type: type,
                        option_name: "",
                        is_answer: "",
                        option_id: "",
                    };
                    i++;
                    createOptionTr(i, arg)
                }
            }
        }
        else if(type == 'True/false'){
            $(".add-row").css("display","none");
            $('#question_title_form').css('display','block');
            $("#type").val(type);
            let i =0;
            if(options.length>0){
                dataItems = options.map((item) => {
                    var arg = {
                        type: type,
                        option_name: item.question_option_title,
                        is_answer: item.is_answer,
                        option_id: item.id,
                    }
                    createOptionTr(i, arg);
                });
            }else {
                var arg = {
                    type: type,
                    option_name: "True",
                    is_answer: "",
                    option_id: "",
                };
                createOptionTr(1, arg);
                var arg = {
                    type: type,
                    option_name: "False",
                    is_answer: "",
                    option_id: "",
                };
                createOptionTr(2, arg);
            }
        }
        else if(type == 'Free text'){
            $(".add-row").css("display","none");
            $('#question_title_form').css('display','block');
            $("#type").val(type);
            let i = 0;
            if(options.length>0){
                while(i<options.length){
                    dataItems = options.map((item) => {
                        var arg = {
                            type: type,
                            option_name : item.is_answer,
                            is_answer   : "",
                            option_id   : item.id,
                        }
                        i++;
                        createOptionTr(i, arg)
                    });
                }
            } else {
                while (i < 1 ){
                    var arg = {
                        type: type,
                        option_name: "",
                        is_answer: "",
                        option_id: "",
                    };
                    i++;
                    createOptionTr(i, arg)
                }
            }
        }
        else if(type == 'Fill in the blanks'){
            $(".add-row").css("display","block");
            $("#is_answer").css("display","none");
            $('#question_title_form').css('display','block');
            $("#type").val(type);
            let i = 0;
            if(options.length>0){
                while(i<options.length){
                    dataItems = options.map((item) => {
                        var arg = {
                            type: type,
                            option_name : item.is_answer,
                            is_answer   : "",
                            option_id   : item.id,
                        }
                        i++;
                        createOptionTr(i, arg)
                    });
                }
            } else {
                while (i < 1 ){
                    var arg = {
                        type: type,
                        option_name: "",
                        is_answer: "",
                        option_id: "",
                    };
                    i++;
                    createOptionTr(i, arg)
                }
            }
        }
        else if(type =='Picture choice'){
            $(".add-row").css("display","block");
            $("#question_title_form").css("display","block");
            $("#type").val(type);
            let i = 0;
            if(options.length>0){
                while(i<options.length){
                    dataItems = options.map((item) => {
                        var arg = {
                            type: type,
                            option_name : item.question_option_title,
                            is_answer   : item.is_answer,
                            option_id   : item.id,
                        }
                        i++;
                        createOptionTr(i, arg)
                    });
                }
            } else {
                while (i < 4 ) {
                    var arg = {
                        type: type,
                        option_name: "",
                        is_answer: "",
                        option_id: "",
                    };
                    i++;
                    createOptionTr(i, arg)
                }

            }
        }
        else if(type == 'Ordering') {
            $(".add-row").css("display","block");
            $("#question_title_form").css("display","block");
            $("#type").val(type);
            let i = 0;
            if(options.length>0){
                while(i<options.length){
                    dataItems = options.map((item) => {
                        var arg = {
                            type: type,
                            option_name : item.question_option_title,
                            is_answer   : "",
                            option_id   : item.id,
                        }
                        i++;
                        createOptionTr(i, arg)
                    });
                }
            } else {
                while (i < 6 ) {
                    var arg = {
                        type: type,
                        option_name: "",
                        is_answer: "",
                        option_id: "",
                    };
                    i++;
                    createOptionTr(i, arg)
                }
            }
        }
        else if(type == 'Match pair') {
            $(".add-row").css("display","block");
            $("#question_title_form").css("display","block");
            $('.typematch').css("display","block");

            $("#type").val(type);
            let i = 0;
            if(options.length>0){
                while(i<options.length){
                    dataItems = options.map((item) => {
                        var arg = {
                            type: type,
                            option_name : item.question_option_title,
                            is_answer   : item.is_answer,
                            option_id   : item.id,
                        }
                        i++;
                        createOptionTr(i, arg)
                    });
                }
            } else {
                while (i < 4 ) {
                    var arg = {
                        type: type,
                        option_name: "",
                        is_answer: "",
                        option_id: "",
                    };
                    i++;
                    createOptionTr(i, arg)
                }
            }
        }
        else if(type == 'Match pair image') {
            $(".add-row").css("display","block");
            $("#question_title_form").css("display","block");
            $('.typematch').css("display","block");
            $("#type").val(type);
            let i = 0;
            if(options.length>0){
                while(i<options.length){
                    dataItems = options.map((item) => {
                        var arg = {
                            type: type,
                            option_name : item.question_option_title,
                            is_answer   : item.is_answer,
                            option_id   : item.id,
                        }
                        i++;
                        createOptionTr(i, arg)
                    });
                }
            }
            else {
                while (i < 4 ) {
                    var arg = {
                        type: type,
                        option_name: "",
                        is_answer: "",
                        option_id: "",
                    };
                    i++;
                    createOptionTr(i, arg)
                }
            }
        }
        else if(type == 'Graph') {
            $(".add-row").css("display","block");
            $("#question_title_form").css("display","block");
            $("#button1_text").html("<i class='lnr-picture'> </i> upload Graph Example");
            $("#button2_text").html("<i class='lnr-picture'> </i> upload Graph Image");
            $("#type").val(type);
            let i = 0;
            if(options.length>0){
                while(i<options.length){
                    dataItems = options.map((item) => {
                        var arg = {
                            type: type,
                            option_name : item.question_option_title,
                            is_answer   : item.is_answer,
                            option_id   : item.id,
                        }
                        i++;
                        createOptionTr(i, arg)
                    });
                }
            }
            else {
                while (i < 4 ) {
                    var arg = {
                        type: type,
                        option_name: "",
                        is_answer: "",
                        option_id: "",
                    };
                    i++;
                    createOptionTr(i, arg)
                }
            }
        }
    }
    // ========================== Question =====================================
    //Entry And Update
    $("#save_question").on('click',function(){
        event.preventDefault();
        var formData = new FormData($('#question_form')[0]);
        if($.trim($('#question_detail').val()) == ""){
            success_or_error_msg('#form_submit_error','danger',"Please enter Your Question Detail","#question_detail");
        }
        else if($.trim($('#mark').val()) == "default"){
            success_or_error_msg('#form_submit_error','danger',"Please Select Your Mark","#mark");
        }
        else{
            $.ajax({
                url: url+"/question",
                type:'POST',
                data:formData,
                async:false,
                cache:false,
                contentType:false,
                processData:false,
                success: function(data){
                    var response = JSON.parse(data);
                    if(response['result'] == 0){
                        var errors	= response['message'];
                        resultHtml = '<ul>';
                        if(typeof(errors)=='string'){
                            resultHtml += '<li>'+ errors + '</li>';
                        }
                        else{
                            $.each(errors,function (k,v) {
                                resultHtml += '<li>'+ v + '</li>';
                            });
                        }
                        resultHtml += '</ul>';
                        toastr['error'](resultHtml,  'Failed!!!!');
                    }
                    else{
                        toastr['success']('Question saved successfully',  'Success!!!');
                        quiz_datatable.ajax.reload();
                        $("#save_question").html('Save');
                        //$("#assign").trigger('click');
                        quizView(response['id'], 1);
                        $(".question_add, .assign").css("display","block");
                        $("#add_question").html('Add Question');
                        $("#quiz_id").val(response['id']);
                        $("#question_detail, #mark, #audio, #image").val("");

                    }
                    $(window).scrollTop();
                }
            });
        }
    });

    questionEdit = function questionEdit(id) {
        clear_form();
        var edit_id = id;
        $("#clear_button").show();
        $(".question_add").css("display","block");
        $(".assign").css("display","none");
        $("#add_question").html('Edit Question');
        $.ajax({
            url: url+'/question/'+edit_id,
            cache: false,
            success: function(response){
                var response = JSON.parse(response);
                var data = response['questions'];
                $("#add_question").trigger('click');
                $("#save_question").html('Update');
                $("#clear_button").hide();
                $("#type").val(data['type']);
                $("#question_detail").val(data['question_detail']);
                $("#mark").val(data['mark']);
                $('#quiz_id').val(data['quiz_id']);
                creteOptions(data['type'], data['options']);
                $("#edit_question_id").val(data['id']);
                (data['status']=='Inactive')?$("#is_active").iCheck('uncheck'):$("#is_active").iCheck('checked');
            }
        });
    }

    questionDelete = function questionDelete(id) {
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
                    url: url+'/question/delete/'+del_id,
                    cache: false,
                    success: function(data){
                        var response = JSON.parse(data);
                        if(response['result'] == 0){
                            toastr['error']( response['message'], 'Error!!!');
                        }
                        else{
                            toastr['success']( response['message'], 'Success!!!');
                            $("#quiz_title_view").trigger('click');
                            quiz_datatable.ajax.reload();
                        }
                    }
                });
            }
            else {
                swal("Your Data is safe..!", {
                    icon: "warning",
                });
            }
        });
    }

    //Dependency Dropdown

    $('#year_id').change(function(){
        $("#subject_id").empty();
        $("#topic_id").empty();
        var id = $(this).val();
        if(id){
            $.ajax({
                url: url+('/key-stage-class?key_stage_id=')+id,
                cache: false,
                success: function(response){
                    var response = JSON.parse(response);
                    var data = response['classe'];
                    $('#class_id').empty();
                    $('#class_id').append("<option value='default'>Select Year</option>");
                    data.forEach(function (row){
                        $("#class_id").append('<option value="'+row.id+'">'+row.name+' '+row.details+'</option>');
                    });
                }
            })
        }
        else
        {
            $("#class_id").empty();

        }
    });

    $('#class_id').change(function(){
        $('select[name="topic_id"]').empty();
        var id = $(this).val();
        if(id){
            $.ajax({
                url: url+('/class_subject?class_id=')+id,
                cache: false,
                success: function(response){
                    var response = JSON.parse(response);
                    var data = response['classSubject'];
                    jQuery('select[name="subject_id"]').empty();
                    var subjects = '<option value="" disabled selected>Select Subject</option>';
                    data.forEach(function (row){
                        subjects +='<option value="'+row.subjects.id+'">'+row.subjects.subject_name+' ('+row.subjects.subject_details+')</option>'
                    });
                    $('select[name="subject_id"]').html(subjects);
                }
            })
        }
        else
        {
            $('select[name="subject_id"]').empty();
        }

    });

    $('#subject_id').change(function(){
        var id = $(this).val();
        if(id){
            $.ajax({
                url: url+('/class-subject-topic?class_subject_topic_id=')+id,
                cache: false,
                success: function(response){
                    var response = JSON.parse(response);
                    var data = response['topics'];

                    jQuery('select[name="topic_id"]').empty();
                    var topic = '<option value="" disabled selected>Select Topic</option>';
                    data.forEach(function (row){
                        topic +='<option value="'+row.id+'">'+row.topic_name+' ('+row.topic_details+')</option>'
                    });
                    $('select[name="topic_id"]').html(topic);
                }
            })
        }
        else
        {
            $('select[name="topic_id"]').empty();
        }

    });

    $("#save_student_assign").on('click',function(){
        event.preventDefault();

        var formData = new FormData($('#student_assign_form')[0]);

        if($.trim($('#assign_quiz_id').val()) == ""){
            success_or_error_msg('#form_submit_error','danger',"Please enter Your Quiz Id","#assign_quiz_id");
        }
        else{
            $.ajax({
                url: url+"/student-assign",
                type:'POST',
                data:formData,
                async:false,
                cache:false,
                contentType:false,
                processData:false,
                success: function(data){
                    var response = JSON.parse(data);
                    if(response['result'] == 0){
                        var errors	= response['message'];
                        resultHtml = '<ul>';
                        if(typeof(errors)=='string'){
                            resultHtml += '<li>'+ errors + '</li>';
                        }
                        else{
                            $.each(errors,function (k,v) {
                                resultHtml += '<li>'+ v + '</li>';
                            });
                        }
                        resultHtml += '</ul>';
                        toastr['error'](resultHtml,  'Failed!!!!');
                    }
                    else{
                        toastr['success']('Add Assign successfully',  'Success!!!');
                        $(this).closest('form').trigger("reset");
                        clear_form();
                        $("#save_student_assign").html('Save');
                        quizView(response['id']);
                        $(".assign").css("display","block");
                    }
                    $(window).scrollTop();
                }
            });
        }
    });

    $('#anybutton').trigger('click');
});

