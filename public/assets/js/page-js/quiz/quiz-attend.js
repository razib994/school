$(document).ready(function () {

    startQuiz = function startQuiz(quiz_student_id){
        $.ajax({
            url: url+'/portal/quiz-start/'+quiz_student_id,
            cache: false,
            success: function(response){
                var response  = JSON.parse(response);
                var data      = response['currentQuestionId'];
                $('#current_question_id').val(data);
                //loadQuestion(data);
                loadQuestion();
                quizattendInfo();
                questionAnswerDetails();
                quizStudentStatusButton();
            }
        });

    }

    retakeQuiz = function retakeQuiz(quiz_student_id){
        $.ajax({
            url: url+'/portal/quiz-retake-attend/'+quiz_student_id,
            cache: false,
            success: function(response){
                var response  = JSON.parse(response);
                var data            = response['currentQuestionId'];
                var quizStudentId   = response['quizStudentId'];
                $('#current_question_id').val(data);
                quizattendInfo();
                questionAnswerDetails();
                window.location.href = url+'/portal/quizzes/attend/'+quizStudentId;
                // loadQuestion();
                // quizStudentStatusButton();
            }
        });
    }

    loadQuestion = function loadQuestion() {
         var current_question_id    = $('#current_question_id').val();
         var quiz_student_id        = $('#quiz_student_id').val();
            $.ajax({
            url: url+'/portal/quiz-questions/'+current_question_id+'/quiz-student/'+quiz_student_id,
            cache: false,
            success: function(response){
                var response  = JSON.parse(response);
                var question  = response['quizQuestion'];
                var quizQuestionNotRandom  = response['quizQuestionNotRandom'];
                var quizQuestion = "";
                var q_details = question['question_detail'];
                // fill in the blanks
                quizQuestion  +=`<form id="question_answer_form" autocomplete="off" enctype="multipart/form-data" class="form form-horizontal">`;
                if(question['type'] == 'Fill in the blanks'){
                        quizQuestion += `<h4><input type="hidden" value="`+question['type']+`" name="type"/>`+q_details.replace('---','<input type="text" class=" question_option_id mb-2" cols="10" name="question_option_id[]">').replace("---", '<input type="text" class=" question_option_id mb-2" cols="10" name="question_option_id[]">')+`</h4>`;
                    if(question['image'] == null || question['image'] == '') {
                        quizQuestion += `<img src="` + profile_image_url + `/no-user-image.png" alt="Question Image" width="300" height="250" class="p-4">`
                    } else {
                        quizQuestion += `<img src="`+ url+`/assets/images/question/`+question['image']+`" alt="Question Image" width="300" height="250" class="p-4">`
                    }
                    quizQuestion  +=`<br>
                                    <audio controls>
                                    <source src="`+url+`/assets/images/audio/`+question['audio']+`" type="audio/ogg">
                                    </audio></div>`;
                }
                else if (question['type'] == 'Graph'){
                    quizQuestion  +=`<div class='row mt-2'> <div class="col-md-6 mb-2"><h4>`+q_details+`</h4> <img src="`+ url+`/assets/images/question/`+question['image']+`" alt="Question Image" class="p-4"></div><div class="col-md-6">
                                <div class="main-card mb-3 card">
                                    <div class="card-body">
                                        <div class="collapse" id="collapseExample123" style=""><p>
                                        <img src="`+ url+`/assets/images/audio/`+question['audio']+`" alt="Question Image" width="100%" height="300" class="p-4">
                                        </p></div>
                                    </div>
                                    <div class="card-footer">
                                        <button type="button" data-toggle="collapse" href="#collapseExample123" class="btn btn-primary collapsed" aria-expanded="false">Example Image</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 mb-2">`;
                    quizQuestion +=  '<input type="hidden" value="'+question['type']+'" name="type"/><div class="row"><div class="col-md-6 image-wrappers">';
                    $.each(question['options'], function (key1, subValue) {
                        quizQuestion += '<div class="item"><span class="text">'+subValue['question_option_title']+'</span> <input type="text" class="question_option_id" id="checkeds'+subValue['id']+'"  name="is_answer[]"/></div> ';
                    });
                    quizQuestion +='</div> <div class="col-md-6 image-wrappers">';
                    quizQuestion +='</div>' +
                        '</div>';
                    quizQuestion  +=`</div> </div>`;
                }
                else {
                    quizQuestion  +=`<div class='row mt-2'> <div class="col-md-12 mb-2"><h4>`+q_details+`</h4></div>
                                            <div class="col-md-6 ">`;
                    if(question['image'] == null || question['image'] == '') {
                        quizQuestion += `<spna></spna>`
                    } else {
                        quizQuestion += `<img src="`+ url+`/assets/images/question/`+question['image']+`" alt="Question Image" width="300" height="250" class="p-4">`
                    }
                    quizQuestion  +=`<br>`;
                                            if(question['audio'] == null || question['audio'] == '' ) {
                                                quizQuestion  +=`<span></span>`;
                                            } else {
                                                quizQuestion  +=`<audio controls>
                                                    <source src="`+url+`/assets/images/audio/`+question['audio']+`" type="audio/ogg">
                                                </audio></div>
                                                <div class="col-md-6">`;
                                            }
                                            if(question['type'] == 'Multiple choice'){
                                                $.each(question['options'], function(key1, subValue){
                                                    quizQuestion += '<input type="hidden" value="'+question['type']+'" name="type"/><input style="display: none;" type="checkbox" class="question_option_id" id="checkeds'+subValue['id']+'" value="'+subValue['id']+'" name="question_option_id[]"/> <p class="bg-light text-center p-3 mb-3 q-option" id="chcek'+subValue['id']+'" onclick="multi('+subValue['id']+')">'+subValue['question_option_title']+'</p>';
                                                });
                                            }
                                            else if(question['type'] == 'Single Choice') {
                                                $.each(question['options'], function(key1, subValue){
                                                    quizQuestion += '<input type="hidden" value="'+question['type']+'" name="type"/><input style="display: none;"  type="radio" class="question_option_id" id="radio'+subValue['id']+'" value="'+subValue['id']+'" name="question_option_id[]"/><p class="bg-light text-center p-3 mb-3 q-option" id="radiocheck'+subValue['id']+'" onclick="singleType('+subValue['id']+')">'+subValue['question_option_title']+'</p>';
                                                });
                                            }
                                            else if(question['type'] == 'True/false') {
                                                $.each(question['options'], function(key1, subValue){
                                                    quizQuestion += '<input type="hidden" value="'+question['type']+'" name="type"/><input style="display: none;"  type="radio" class="question_option_id" id="truefalse'+subValue['id']+'" name="question_option_id" value="'+subValue['id']+'" /><p class="bg-light text-center p-3 mb-3 q-option" id="trueFalsecheck'+subValue['id']+'" onclick="trueFlase('+subValue['id']+')">'+subValue['question_option_title']+'</p>';
                                                });
                                            }
                                            else if(question['type'] == 'Free text') {
                                                $.each(question['options'], function(key1, subValue){
                                                    quizQuestion +='<input type="hidden" value="'+question['type']+'" name="type"/><textarea class="form-control question_option_id" rows="10" name="question_option_id"></textarea>';
                                                });
                                            }
                                            else if(question['type'] == 'Picture choice'){
                                                quizQuestion +=  '<input type="hidden" value="'+question['type']+'" name="type"/>';
                                                $.each(question['options'], function(key1, subValue){
                                                    quizQuestion += '<input style="display: none;" type="checkbox" class="question_option_id" id="checkeds'+subValue['id']+'" value="'+subValue['id']+'" name="question_option_id[]"/> <p class="bg-light text-center p-3 mb-3 q-option" id="chcek'+subValue['id']+'" onclick="pictures('+subValue['id']+')"><img src="'+url+'/assets/images/option/'+subValue['question_option_title']+'" width="200px" height="150px"/></p>';
                                                });
                                            }
                                            else if(question['type'] == 'Ordering') {
                                                quizQuestion +=  '<input type="hidden" value="'+question['type']+'" name="type"/><div class="wrappers">';
                                                $.each(question['options'], function (key1, subValue) {
                                                    quizQuestion += ' <div class="item"><input type="hidden" class="question_option_id" id="checkeds'+subValue['id']+'" value="'+subValue['question_option_title']+'" name="question_option_id[]"/> <span class="text"> '+subValue['question_option_title']+' </span></div>';
                                                });
                                                quizQuestion +=  '</div>';
                                            }
                                            // else if(question['type'] == 'Graph') {
                                            //     quizQuestion +=  '<input type="hidden" value="'+question['type']+'" name="type"/><div class="row"><div class="col-md-6 image-wrappers">';
                                            //     $.each(question['options'], function (key1, subValue) {
                                            //         quizQuestion += '<div class="item"><b>'+subValue['question_option_title']+'</b></div> ';
                                            //     });
                                            //     quizQuestion +='</div>  <div class="col-md-6 image-wrappers">';
                                            //     $.each(question['options'], function (key1, subValue) {
                                            //         quizQuestion += '<div class="item"><input type="text" class="question_option_id" id="checkeds'+subValue['id']+'"  name="is_answer[]"/> </div>';
                                            //     });
                                            //     quizQuestion +='</div>' +
                                            //         '</div>';
                                            // }

                                            else if(question['type'] == 'Match pair') {
                                                quizQuestion +=  '<input type="hidden" value="'+question['type']+'" name="type"/><div class="row"><div class="col-md-6 image-wrappers">';
                                                $.each(quizQuestionNotRandom['options'], function (key1, subValue) {
                                                    quizQuestion += '<div class="item"><span class="text">'+subValue['question_option_title']+'</span></div> ';
                                                });
                                                quizQuestion +='</div>  <div class="col-md-6"><div class="wrappers">';
                                                $.each(question['options'], function (key1, subValue) {
                                                    quizQuestion += '<div class="item"><input type="hidden" class="question_option_id" id="checkeds'+subValue['id']+'" value="'+subValue['is_answer']+'" name="is_answer[]"/> <span class="text"> '+subValue['is_answer']+' </span></div>';
                                                });
                                                quizQuestion +='</div></div>' +
                                                    '</div>';
                                            }
                                            else if(question['type'] == 'Match pair image') {
                                                quizQuestion +=  '<input type="hidden" value="'+question['type']+'" name="type"/><div class="row"><div class="col-md-6 image-wrappers">';
                                                    $.each(quizQuestionNotRandom['options'], function (key1, subValue) {
                                                        quizQuestion += '<div class="item"><img width="150px" src="'+url+'/assets/images/option/'+subValue['question_option_title']+'"/> </div>';
                                                    });
                                                quizQuestion +='</div>  <div class="col-md-6"><div class="wrappers">';
                                                    $.each(question['options'], function (key1, subValue) {
                                                        quizQuestion += '<div class="item"><input type="hidden" class="question_option_id" id="checkeds'+subValue['id']+'" value="'+subValue['is_answer']+'" name="is_answer[]"/> <img src="'+url+'/assets/images/option/'+subValue['question_option_title']+'" width="150px"/></div>';
                                                    });
                                                quizQuestion +='</div></div>' +
                                                    '</div>';
                                            }
                quizQuestion  +=`</div></div><hr>`;
                }
                quizQuestion +=`<input type="hidden" id="count_duration" name="time_duration"/> <p id="form_submit_error"></p></form>`;
                quizQuestion +=`<div class="row mt-2"><div class="col-md-4">Question `+question['serial']+`/`+response['quizAnswerCount']+`</div> <div class="col-md-2"> </div> <div class="col-md-6 text-right">
                                    <button class="btn btn-danger" onclick="quizFinish()" ><i class="fa fa-fw" aria-hidden="true" title="Copy to use exclamation-circle"></i> Finish </button>
                                    <button class="btn btn-secondary" onclick="quizSkipped()"> <i class="fa fa-fw" aria-hidden="true" title="Copy to use angle-double-right"></i> Skip </button>
                                    <span id="rebutton"></span>
                                    <button class="btn btn-success" id="submitanswer" onclick="quizSubmit()"> <i class="fa fa-fw" aria-hidden="true" title="Copy to use check"></i> Check Answer </button>
                                    </div></div>`;
                $('#myModalLabelXl').html('Question');
                $('#modalBodyXl').html(quizQuestion);
                if(question['type'] == 'Ordering' || question['type'] == 'Match pair' || question['type'] == 'Match pair image'){
                    var dragArea = document.querySelector(".wrappers");
                    new Sortable(dragArea, {
                        animation: 350
                    });
                }
                $("#generic_modal_xl").modal('show');
                questionStart()
            }
        });
    }

    quizSkipped = function quizSkipped() {
        var current_question_id     = $('#current_question_id').val();
        var quiz_student_id         = $('#quiz_student_id').val();
        $.ajax({
            url: url + '/portal/current-question/' + current_question_id + '/quiz-student-skip-answer/' + quiz_student_id,
            cache: false,
            success: function (response) {
                var response  = JSON.parse(response);
                var quizanswerquestion  = response['quizanswerquestion'];
                $('#current_question_id').val(quizanswerquestion);
                loadQuestion();
                quizattendInfo();
                questionAnswerDetails();
            }
        });
    }

    quizFinish = function quizFinish(){
        var quiz_student_id         = $('#quiz_student_id').val();
        $.ajax({
            url: url + '/portal/all-questions-finish/'+quiz_student_id,
            cache: false,
            success: function (response) {
                var response  = JSON.parse(response);
                var all  = response['all'];
                $("#generic_modal_xl").modal('hide');
                loadQuizFinished()
            }
        });
    }

    quizSubmit = function quizSubmit(){
        var current_question_id = $('#current_question_id').val();
        var quiz_student_id = $('#quiz_student_id').val();
        var formData = new FormData($('#question_answer_form')[0]);
        if($.trim($('.question_option_id').val()) == "" || ($('.question_option_id').val()) == null){
            success_or_error_msg('#form_submit_error','danger',"Please select Answer",".question_option_id");
        } else {
            $.ajax({
                url: url + '/portal/current-questions/' + current_question_id + '/quiz-student-answer/' + quiz_student_id,
                type: 'POST',
                data: formData,
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function (data) {
                    var response = JSON.parse(data);
                    if(response['answer'] == false){
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
                        toastr['error'](resultHtml,  'Wrong Answer!!!!');
                        var button = `<button class="btn btn-warning" onclick="quizReSubmit()"> <i class="fa fa-fw" aria-hidden="true" title="Copy to use check"></i> Re-Attempt </button>`;
                        $('#rebutton').html(button);
                        $('#submitanswer').css('display', 'none');
                        var res = response['finish'];
                        if (res == 1) {
                            // loadQuizFinished();
                            // quizattendInfo();
                            // questionAnswerDetails();
                            // loadQuestionFinished();
                        } else {
                            // var quizanswerquestionId = response['quizanswerquestionId'];
                            // $('#current_question_id').val(quizanswerquestionId);
                           // loadQuestion();
                        }
                        quizattendInfo();
                        questionAnswerDetails();
                    }
                    else{
                        toastr['success']('Question Answer successfully',  'Success!!!');
                        var res = response['finish'];
                        if (res == 1) {
                            $("#generic_modal_xl").modal('hide');
                            loadQuizFinished()
                            quizStudentStatusButton()
                        } else {
                            var quizanswerquestionId = response['quizanswerquestionId'];
                            $('#current_question_id').val(quizanswerquestionId);
                            loadQuestion();
                        }
                        quizattendInfo();
                        questionAnswerDetails();
                    }
                    stopQuestionTimer()


                }
            });
        }
    }

    quizReSubmit = function quizReSubmit(){
        var current_question_id = $('#current_question_id').val();
        var quiz_student_id = $('#quiz_student_id').val();
            $.ajax({
                url: url + '/portal/current-questions/' + current_question_id + '/quiz-student-re-answer/' + quiz_student_id,
                cache: false,
                success: function (data) {
                    var response = JSON.parse(data);
                    var quizanswerquestionId = response['quizanswerquestionId'];
                    var quizAnswerId = response['quizAnswerId'];
                    $('#current_question_id').val(quizanswerquestionId);
                    if(quizAnswerId){
                        loadQuestion();
                    }
                    quizattendInfo();
                    questionAnswerDetails();
                    stopQuestionTimer()
                }
            });
    }

    subjectQuiz = function subjectQuiz(id){
        $.ajax({
            url: url+'/portal/subject-quiz/'+id,
            cache: false,
            success: function (response) {
                var response  = JSON.parse(response);
                var data  = response['quizSubjects'];
                var totalattend  = response['totalattend'];
                var quizStudentSubject = "";
                var score_avr = 0;
                var attend = 0;
                var rowcount = 0;
                data.forEach(function (row){


                    var sc = (row.count == 'Yes')? row.score:0;

                    var rc = (row.count == 'Yes') ? 1:0;
                    var is_taken =(row.is_taken == 'No')? 1:0
                    var retake =(row.retake == 'Yes') ? 'Retake':'';
                   // var extension = row.quiz.attachment.substr( (row.quiz.attachment.lastIndexOf('.') +1) );

                    score_avr = score_avr + sc
                    attend = attend + is_taken;
                    rowcount = rowcount + rc;

                    scoreClass = (parseInt(row.score)>49)?"success":"danger";
                    quizStudentSubject += `<div class="tab-pane show active mb-2 rowcount" id="quizSubject`+row.quiz.subject_id+`" role="tabpanel">
                                <ul class="list-group">
                                <li class="list-group-item">
                                            <div class="widget-content p-0">
                                                <div class="widget-content-wrapper">
                                                    <div class="widget-content-left mr-3">
                                                        <div class="widget-content-left">`;
                                                        if(row.status == 'Start'){
                                                            quizStudentSubject +=`<i class="fa fa-fw text-danger" style="font-size: 25px;" aria-hidden="true" title="Copy to use play-circle"></i> `;
                                                        }else if(row.status == 'Running'){
                                                            quizStudentSubject +=`<i class="fa fa-fw text-warning" style="font-size: 25px;" aria-hidden="true" title="Copy to use warning"></i>`;
                                                            }else if(row.status == 'Finished'){
                                                            quizStudentSubject +=`<i class="fa fa-fw text-success" style="font-size: 25px;" aria-hidden="true" title="Copy to use check-circle"></i>`;
                                                        }
                                    quizStudentSubject += `</div>
                                                    </div>
                                                    <div class="widget-content-left flex2">
                                                        <div class="widget-heading">`+row.quiz.title+` <span class="badge badge-info">`+retake+`</span></div>
                                                        <div class="widget-subheading opacity-10">
                                                            <span class="pr-2">Total Questions <b class="badge badge-warning"> `+row.quiz.total_question+`</b></span>
                                                            <span>Total Marks <b class="badge badge-success">`+row.quiz.total_marks+`</b></span>
                                                            <span>  </span>
                                                        </div>
                                                    </div>
                                                    <div class="widget-content-right mr-3">`;
                    quizStudentSubject += `<div><b>`+Math.round(totalattend)+`% </b></div>
                                                        Attend
                                                    </div>
                                                    <div class=" progress quiz-progress">
                                                        <div class="progress-bar progress-bar-animated progress-bar-striped bg-`+scoreClass+`" role="progressbar" aria-valuenow="`+row.score+`" aria-valuemin="0" aria-valuemax="100" style="width: `+row.score+`%;">`+row.score+`%</div>
                                                    </div>
                                                    <div class="widget-content-right">
                                                        <div role="group" class="btn-group-sm btn-group">`;
                           //                              quizStudentSubject += (row.quiz.remote_media_file_link == null)?' ':`<a href="`+row.quiz.remote_media_file_link+`" target="_blank"
                           // class="btn-shadow btn btn-primary icon-fonts"><i class="fa fa-fw" aria-hidden="true"
                           //                                                      title="Copy to use play-circle"></i></a>
                    quizStudentSubject += `<button  onclick="quizplayerview(` + row.id + `)"   class="btn btn-primary btn-lg pt-3 pb-3 mains ml-1"><i class="fa fa-play" aria-hidden="true" ></i> Play </button>
                                                                                </div></div>
                                                    <div class="widget-content-right">`;
                                                    if(row.status == 'Start'){
                                                        quizStudentSubject +=`<a href="`+url+'/portal/quizzes/attend/'+row.id+`"  class="btn btn-primary btn-lg pt-3 pb-3 ml-2 mains"><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Attend</a>`;
                                                    }else if(row.status == 'Running'){
                                                        quizStudentSubject +=`<a href="`+url+'/portal/quizzes/attend/'+row.id+`"  class="btn btn-info btn-lg pt-3 pb-3 ml-2 mains"><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Restart </a>`;
                                                    }else if(row.status == 'Finished'){
                                                        quizStudentSubject +=`<a href="`+url+'/portal/quizzes/attend/'+row.id+`"  class="btn btn-focus btn-lg pt-3 pb-3 ml-2 mains"><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Finished </a>`;
                                                    }
                                                    // if(extension == "mp4" || extension =="mp3") {
                                                    //     quizStudentSubject += `<button  onclick="quizplayerview(` + row.id + `)"   class="btn btn-primary btn-lg pt-3 pb-3 mains ml-1"><i class="fa fa-play" aria-hidden="true" ></i> Play </button>`;
                                                    // } else {
                                                    //     quizStudentSubject += `<a href="`+url+'/assets/images/quiz/'+row.quiz.attachment+`" target="_blank"   class="btn btn-primary btn-lg pt-3 pb-3 mains ml-1"><i class="fa fa-paperclip" aria-hidden="true" ></i> Attach </a>`;
                                                    // }
                                             quizStudentSubject += `</div>
                                                </div>
                                            </div>
                                        </li> </ul>
                            </div>`;
                });
                var quizStudentSubject2 = '<div class="m-2 card text-center"><ul class="list-group"><li class="list-group-item"> <h5> Not Found Quizzes! </h5> </li> </ul></div>';
                var per_subject_quiz_score = (score_avr/rowcount).toFixed(2)
                var persubjectSocre = '';
                    if(per_subject_quiz_score == 'NaN'){
                        persubjectSocre = 0.00;
                }else {
                        persubjectSocre = per_subject_quiz_score;
                    }
                 $("#per_subject_quiz_total").html(data.length);
                 $("#per_subject_quiz_score").html(persubjectSocre);
                 $("#per_subject_quiz_attend").html(attend);
                 $("#quizStudentData").html(quizStudentSubject);
            }
        });
    }

    $('.quiz-subject:eq(1)').trigger('click');

    loadQuizFinished = function loadQuizFinished(){
        var quiz_student_id = $('#quiz_student_id').val();
        $.ajax({
            url: url+'/portal/quiz-questions-finished/'+quiz_student_id,
            cache: false,
            success: function(response){
                var response  = JSON.parse(response);
                var quizStudentInfo = response['quizStudentInfo'];
                var quizname = quizStudentInfo['quiz']['title'];
                var noAnswer = response['noAnswer'];
                var wrong = response['wrong'];
                var skipped = response['skipped'];
                var right = response['right'];
                var retake = response['retake'];
                var quizquestionNumber = response['quizquestionNumber'];
                var quizFinish = "";
                quizFinish  +=`<div class="pl-5 pr-5">
                                        <div class="mb-2" style="border: 1px solid #ddd;">
                                        <div class="card-header bg-primary text-white">Summary</div>
                                        <div class="card-body">
                                            <div class="row quiz-finished" >
                                                <div class="col-md-6"><b>Total Question </b></div>
                                                <div class="col-md-6"><span class="badge badge-warning">`+quizquestionNumber+`</span></div>
                                            </div>
                                            <div class="row quiz-finished" >
                                                <div class="col-md-6"><b>No Answered </b></div>
                                                <div class="col-md-6"><span class="badge badge-warning"> `+noAnswer+` </span></div>
                                            </div>
                                            <div class="row quiz-finished" >
                                                <div class="col-md-6"><b>Answered Correctly: </b></div>
                                                <div class="col-md-6"><span class="badge badge-success"> `+right+`</span></div>
                                            </div>
                                            <div class="row quiz-finished" >
                                                <div class="col-md-6"><b>Answered Incorrectly:  </b></div>
                                                <div class="col-md-6"><span class="badge badge-danger"> `+wrong+`</span></div>
                                            </div>
                                            <div class="row quiz-finished" >
                                                <div class="col-md-6"><b>Skipped</b></div>
                                                <div class="col-md-6"><span class="badge badge-info"> `+skipped+` </span></div>
                                            </div>
                                            <div class="row quiz-finished" >
                                                <div class="col-md-6"><b>Retake</b></div>
                                                <div class="col-md-6"><span class="badge badge-info"> `+retake+` </span></div>
                                            </div>
                                            <div class="row quiz-finished" >
                                                <div class="col-md-6"><b>Duration</b></div>
                                                <div class="col-md-6"><span class="badge badge-warning">`+quizStudentInfo['quiz_take_duration']+`</span></div>
                                            </div>
                                            <div class="row" >
                                                <div class="col-md-6"><b>Score</b></div>
                                                <div class="col-md-6"><span class="badge badge-primary">`+quizStudentInfo['score']+`% </span></div>
                                            </div>
                                            </div>
                                        </div>
                                            <div class="swal2-icon swal2-success swal2-animate-success-icon">
                                              <div class="swal2-success-circular-line-left" style="background-color: rgb(255, 255, 255);"></div>
                                                  <span class="swal2-success-line-tip"></span>
                                                  <span class="swal2-success-line-long"></span>
                                                  <div class="swal2-success-ring"></div>
                                                  <div class="swal2-success-fix" style="background-color: rgb(255, 255, 255);"></div>
                                                  <div class="swal2-success-circular-line-right" style="background-color: rgb(255, 255, 255);"></div>
                                              </div>
                                                  <div class="mt-3 mb-3"></div>
                                                  <div class="text-center">
                                                  <button class="btn-shadow btn-wide btn btn-success btn-lg" data-dismiss="modal">Finish</button>

                                              </div>`;
                $('#myModalLabelLg').html(quizname);
                $('#modalBodyLg').html(quizFinish);
                $("#generic_modal_lg").modal('show');
            }
        });
    }

    quizattendInfo = function quizattendInfo() {
        var id = $('#quiz_student_id_find').val();
        $.ajax({
            url  : url + '/portal/quizzes/attend-info/'+id,
            cache: false,
            success: function (response) {
                var response = JSON.parse(response);
                var data = response['quizStudent'];
                var quizAttendinfo =`<div class="main-card mb-3 card">
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="widget-content p-0">
                                <div class="widget-content-wrapper">
                                    <div class="widget-content-left">
                                        <span class="widget-heading">Attend Date : </span>
                                        <span class="widget-subheading">`+(data['taken_date'] == null) ? "":data['taken_date']+`</span>
                                    </div>

                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="widget-content p-0">
                                <div class="widget-content-wrapper">
                                    <div class="widget-content-left">
                                        <span class="widget-heading">Duration : </span>
                                        <span class="widget-subheading">`
                                        if(data['quiz_take_duration']==null){
                                            quizAttendinfo +=` `;
                                        }else {
                                            quizAttendinfo += `<span> `+data['quiz_take_duration']+` </span>`;
                                        }
                quizAttendinfo +=`</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        </li>
                        <li class="list-group-item">
                            <div class="widget-content p-0">
                                <div class="widget-content-wrapper">
                                    <div class="widget-content-left">
                                        <span class="widget-heading">Score : </span>
                                        <span class="widget-subheading">`+data['score']+` %</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="widget-content p-0">
                                <div class="widget-content-wrapper">
                                    <div class="widget-content-left">
                                        <span class="widget-heading">Total Questions : </span>
                                        <span class="widget-subheading">`+data['quiz_answers'].length+`</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="widget-content p-0">
                                <div class="widget-content-wrapper">
                                    <div class="widget-content-left">
                                        <span class="widget-heading">Answered : </span>
                                        <span class="widget-subheading opacity-10">
                                            <span>Correct <b class="badge badge-success">`+response['right']+`</b></span>
                                            <span class="pr-2">No Answer <b class="badge badge-info">`+response['noAnswer']+`</b></span>
                                            <span>In-correct <b class="badge badge-danger">`+response['wrong']+`</b></span>
                                            <span>Skipped <b class="badge badge-warning">`+response['skipped']+`</b></span>
                                            <span>  </span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>`;
                $('#quiz_attend').html(quizAttendinfo);
            }
        })
    }
    quizattendInfo();

    function questionAnswerDetails(){
        var id = $('#quiz_student_id_find').val();
        $.ajax({
            url: url + '/portal/quizzes/question-answer-info/'+id,
            cache: false,
            success: function (response) {
                var response = JSON.parse(response);
                var data = response['quizAnswers'];
                var questionAnswerinfo = `<div class="card-body">
                <h5 class="card-title"> Question & Answer : </h5>`;
                var serial =1;
                data.forEach(function ( row){
                    questionAnswerinfo += `<div class="row mb-2 mt-2">
                        <div class="col-md-9"> `+serial+". "+row.question.question_detail+`</div>
                        <div class="col-md-1">`
                        var retake ="";
                        if(row.retake == 'Yes'){
                            retake = '<span class="badge badge-warning">Retake</span>';
                        }else{
                            retake = '';
                        }
                    questionAnswerinfo += ``+retake+`</div>
                        <div class="col-md-1"><span class="badge badge-info">`+row.question.mark+` Marks</span></div>
                        <div class="col-md-1">`;
                    if(row.answer == 'Right'){
                    questionAnswerinfo += `<i class="fa fa-fw text-success" style="font-size: 25px;" aria-hidden="true" title="Copy to use check-circle"></i>`
                    }else{
                     questionAnswerinfo += `<i class="fa fa-fw text-danger" style="font-size: 25px;" aria-hidden="true" title="Copy to use times-circle"></i>`
                    }
                    questionAnswerinfo += `<i class="lnr-eye btn btn-info" aria-hidden="true" onclick="questionResultView(`+row.id+`)"></i> </div>
                    </div>
                    <hr>`;
                    serial++;
                });
                questionAnswerinfo += `</div>`;
                $('#quiz_question_answer_info').html(questionAnswerinfo);
            }
        });
    }
    questionAnswerDetails();

    questionResultView = function questionResultView(id) {
        $.ajax({
            url: url + '/portal/quizzes-question-per-result-show/'+id,
            cache: false,
            success: function (response) {
                var response = JSON.parse(response);
                var data = response['quizAnswerQuestionResultShow'];
                var answer = data['answer'];
                var details = `<div class="row">
                    <div class="col-md-12 showans">
                    <h5 class="text-success">`+data['question']['question_detail']+`</h5>
                    <p><b>Options : </b></p>
                    <ul style="list-style: none;">`;
                var types = data['question']['type'];
                if(types == 'Graph') {
                    details += `<img src="` + url + `/assets/images/question/`+data['question']['image'] + `" alt="Question Image" width="250"
                             height="250" className="p-4">`;
                }
                data['question']['options'].forEach(function (row){

                    if(row.question_option_title == 'Free Text' || row.question_option_title == 'Fill in the blanks'){
                        details += `<li class=" mb-1 p-1" >`+row.is_answer+`</li>`;
                    }
                    else if(types == 'Picture choice'){
                        var bg_color =  (row.is_answer == 1) ? "bg-success text-white":"";
                        details += `<li class="`+bg_color+` mb-2 p-2" style="width: 220px; border: 1px solid #ddd; border-radius: 8px;"><img src="`+url+`/assets/images/option/`+row.question_option_title+`" width="200px" height="100px"/></li>`;
                    }
                    else if(types == 'Match pair'){
                        details += `<li class="mb-1 p-1">`+row.question_option_title+` = `+row.is_answer+` </li>`;
                    }
                    else if(types == 'Graph'){
                        details += `<li class="mb-3 p-1 "><span class="bg-success p-2 text-white">`+row.question_option_title+` = `+row.is_answer+` </span></li>`;
                    }
                    else if(types == 'Match pair image'){
                        details += `<li class="mb-1 p-1"><img src="`+url+`/assets/images/option/`+row.question_option_title+`" width="20%"/>  =  <img src="`+url+`/assets/images/option/`+row.is_answer+`" width="20%"/> </li>`;
                    }
                    else {
                        var bg_color =  (row.is_answer == 1) ? "bg-success text-white":"";
                        details += `<li class="m-2 p-1"><span class="`+bg_color+` p-2">`+row.question_option_title+`</span></li>`;
                    }
                });
                details += `</ul>
                        <p><b> Answer : </b></p>
                    <ul style="list-style: none;">`;
                data['quiz_answer_options'].forEach(function (rowright) {
                    if(types == 'Picture choice'){
                        details += `<li class="p-1"><img src="`+url+`/assets/images/option/` + rowright.question_answer +`" width="200px" height="100px"/> </li>`
                    }
                    else if (types == 'Match pair image'){
                        details += `<li class="p-1"><img src="`+url+`/assets/images/option/` + rowright.question_answer +`" width="20%" /> </li>`
                    }
                    else if (types == 'Match pair'){
                        details += `<li class="p-1">`+rowright.question_answer+`</li>`
                    }
                    else {
                        details += `<li class="p-2 mb-2" style="border:1px solid #ddd;">`+rowright.question_answer+`</li>`
                    }
                });
                details += `</ul>
                    </div>
                    <div class="m-3">
                    `;
                    if(answer == 'Right'){
                        details += `<button type="button" class="btn btn-success" data-dismiss="modal">Correct Answer</button>`;
                    }else{
                        details += `<button type="button" class="btn btn-danger hidden-print" data-dismiss="modal">Wrong Answer</button>`;
                    }
                    details += `
                    </div>
                 </div>`;
                $('#myModalLabelnewLg').html("Mark : "+data['question']['mark']);
                $('#modalBodynewLg').html(details);
                $("#generic_modal_new_lg").modal('show');
            }
        });
    }

    function quizStudentStatusButton(){
        var id = $('#quiz_student_id_find').val();
        $.ajax({
            url: url + '/portal/quizzes/button/'+id,
            cache: false,
            success: function (response) {
                var response = JSON.parse(response);
                var data = response['quizStudent'];
                var button = ``;
                        if(data['status'] == 'Start'){
                            button +=`<button type="submit" class="btn btn-primary btn-lg p-3" onclick='startQuiz(`+data['id']+`)'> Start Quiz </button>`;
                        } else if (data['status'] == 'Running'){
                            button +=`<button class="btn btn-info btn-lg p-3 bt-1" onclick='startQuiz(`+data['id']+`)'> Resume Quiz </button>`;
                        } else if (data['status'] == 'Finished' && data['assignment_id'] == null ){
                            button += `<button class="btn btn-warning text-white btn-lg p-3" onclick="retakeQuiz(`+data['id']+`)"> Retake </button>`;
                        }
                button += ``;
                $('#quiz_button').html(button);
                $('#quiz_student_id').val(data['id']);

            }
        });
    }

    quizStudentStatusButton();

    quizplayerview = function quizplayerview(id) {
        var body =`<video width="100%" height="400" controls>
  <source src="`+url+`/assets/images/video/nature.mp4" type="video/mp4">
  Your browser does not support HTML video.
</video>`;
        $('#modalBodyvideoLg').html(body);
        $("#video_player_lg").modal('show');
    }

    var ques_counter = 0;
    var quesStarted  = "";
    questionStart = function(){
        ques_counter = 0;
        quesStarted = setInterval(questionTimer, 1000);

    }

    function questionTimer(){
        ques_counter++;
        var q_time      =  ques_counter.toString();
        var ques_time   = q_time.toHHMMSS();
        $("#duration_time").html(ques_time);
        $("#count_duration").val(ques_time);
        console.log(ques_time);
    }

    stopQuestionTimer  = function (){
        clearInterval(quesStarted);
    }

    String.prototype.toHHMMSS = function () {
        var sec_num = parseInt(this, 10); // don't forget the second parm
        var hours = Math.floor(sec_num / 3600);
        var minutes = Math.floor((sec_num - (hours * 3600)) / 60);
        var seconds = sec_num - (hours * 3600) - (minutes * 60);
        if (hours < 10) {
            hours = "0" + hours;
        }
        if (minutes < 10) {
            minutes = "0" + minutes;
        }
        if (seconds < 10) {
            seconds = "0" + seconds;
        }
        var time = hours + ':' + minutes + ':' + seconds;
        return time;
    }

    // Type Selected Color and choice
    multi = function multi(id){
        var checkBoxes = $("#checkeds"+id);
        checkBoxes.prop("checked", !checkBoxes.prop("checked"));
        $("#chcek"+id).toggleClass("bg-question-add");
    }
    pictures = function pictures(id){
        var checkBoxes = $("#checkeds"+id);
        checkBoxes.prop("checked", !checkBoxes.prop("checked"));
        $("#chcek"+id).toggleClass("bg-question-add");
    }

    singleType = function singleType(id){
        $('#radio'+id).not(':checked').prop("checked", true);
        if($('#radio'+id).click()) {
            $("#radiocheck"+id).addClass("bg-question-add");
        }else {
            $("#radiocheck").removeClass("bg-question-add");
        }
    }

    trueFlase = function trueFlase(id){
        $('#truefalse'+id).not(':checked').prop("checked", true);
            $("#trueFalsecheck"+id).addClass("bg-question-add").sibling().removeClass("bg-question-add");
    }

    document.getElementById('.bt-1').click();
    $('.bt-1').trigger('click');
});




