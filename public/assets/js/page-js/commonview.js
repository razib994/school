$(document).ready(function(){
    quizView = function quizView(id, value){
        $("#quiz_title_button").css("display","none");
        $(".quiz_view").css("display","block");
        $("#quiz_title_view").html('Quiz Details');
        $('#question_title_form').css('display','none');
        $('#quiz_id').val(id);
        $.ajax({
            url: url+'/quiz/'+id,
            cache: false,
            success: function(response){
                var response  = JSON.parse(response);
                var data      = response['quiz'];
                (value == 1) ? '' : $("#quiz_title_view").trigger('click');
                //$("#quiz_title_view").trigger('click')

                $("#clear_button").hide();
                var instruction = (data['instruction']==null || data['instruction']=='')?'': data['instruction'];
                var attachment = (data['attachment']==null || data['attachment']=='')?'': data['attachment'];
                var remote_media_file_link = (data['remote_media_file_link']==null || data['remote_media_file_link']=='')?'': data['remote_media_file_link'];
                var topics = (data['topic']==null || data['topic']['topic_name']=='')? '': data['topic']['topic_name'];
                var viewquiz = `<div class='container'><div class='row'><h5 class='mt-1'> <b> Quiz Information </b></h5> </div>
                    <div class='row mt-2'><div class='col-lg-3 col-md-4 ml-4'><strong>Quiz Title:</strong></div><div class='col-lg-8 col-md-8'>`+data['title']+`</div></div>
                    <div class='row mt-2'><div class='col-lg-3 col-md-4 ml-4'><strong>Key Stage:</strong></div><div class='col-lg-8 col-md-8'>`+data['classes']['key_stages']['name']+`</div></div>
                    <div class='row mt-2'><div class='col-lg-3 col-md-4 ml-4'><strong>Year:</strong></div><div class='col-lg-8 col-md-8'>`+data['classes']['name']+`</div></div>
                    <div class='row mt-2'><div class='col-lg-3 col-md-4 ml-4'><strong>Subject:</strong></div><div class='col-lg-8 col-md-8'>`+data['subjects']['subject_name']+`</div></div>
                    <div class='row mt-2'><div class='col-lg-3 col-md-4 ml-4'><strong>Topic:</strong></div><div class='col-lg-8 col-md-8'>`+topics+`</div></div>
                    <div class='row mt-2'><div class='col-lg-3 col-md-4 ml-4'><strong>Instructions:</strong></div><div class='col-lg-8 col-md-8'>`+instruction+`</div></div>
                    <div class='row mt-2'><div class='col-lg-3 col-md-4 ml-4'><strong>Optional File :</strong></div><div class='col-lg-8 col-md-8'>`+attachment+`</div></div>
                    <div class='row mt-2'><div class='col-lg-3 col-md-4 ml-4'><strong>Remote Media Files: :</strong></div><div class='col-lg-8 col-md-8'><a href=`+remote_media_file_link+`>`+remote_media_file_link+`</a> </div></div>
                    </div>`;
                (data['status']=='Inactive')?$("#is_active").iCheck('uncheck'):$("#is_active").iCheck('checked');
                $('#quiz_view_details').html(viewquiz);

                if(!jQuery.isEmptyObject(data['questions'])){
                    var questionall = "";
                    $.each(data['questions'], function(i,value){
                        questionall +='<tr><td><b>'+value['serial']+'.  '+value['question_detail']+' </b><br>';
                        var types = value['type'];
                        if(types == 'Graph'){
                            questionall +='<img src="'+url+'/assets/images/question/'+value['image']+'" height="200" width="300"/><br>';
                        }
                        $.each(value['options'], function(key1, optionvalue){
                            if(types == 'Picture choice'){
                                questionall += '<p style="padding-left: 20px; margin-bottom:3px;"><img src="'+url+'/assets/images/option/'+optionvalue['question_option_title']+'" width="10%" /> </p>';
                            }
                            else if(types == 'Match pair image'){
                                questionall += '<p style="padding-left: 20px; margin-bottom:3px;"><img src="'+url+'/assets/images/option/'+optionvalue['question_option_title']+'" width="10%" /> </p>';
                            }
                            else if(types == 'Graph') {
                                questionall += '<p style="padding-left: 20px; margin: 0;">'+optionvalue['question_option_title']+' = '+optionvalue['is_answer']+'</p>';
                            }
                            else {
                                questionall += '<p style="padding-left: 20px; margin: 0;">'+optionvalue['question_option_title']+'</p>';
                            }
                           // questionall += '<p style="padding-left: 20px; margin: 0;">'+optionvalue['question_option_title']+'</p>';
                        })
                        questionall += '</td><td>'+value['mark']+'</td><td>';
                        $.each(value['options'], function(key1, optionvalue){
                            var answer = (optionvalue['is_answer'] == 1) ? optionvalue['question_option_title'] : (optionvalue['is_answer'] == 0 || optionvalue['is_answer'] == null ) ? '' :optionvalue['is_answer'];
                            if(types == 'Picture choice') {
                                var dis = (answer == "")?'display:none;':'';
                                questionall += '<p><img src="' + url + '/assets/images/option/'+answer+'" style="'+dis+'"  width="40%"/> </p>';
                            } else if (types == 'Ordering') {
                                questionall += '<p>'+optionvalue['question_option_title']+'</p>';
                            }
                            else if(types == 'Match pair image'){
                                questionall += '<p><img src="' + url + '/assets/images/option/'+answer+'" style="'+dis+'"    width="40%"/> </p>';
                            }
                            else {
                                questionall += '<p>'+answer+'</p>';
                            }
                        })
                        questionall += '</td></tr>';
                    })
                }
                var studentHtml ='';
                $.each(data['students'], function(i,value){
                    var middle   = (value['middle_name'] == "" || value['middle_name'] == null)? "":  value['middle_name'];
                    var lastname = (value['last_name'] == "" || value['last_name'] == null)? "":  value['last_name'];
                    studentHtml += `<div class="col-md-3 p-2"> <input type="checkbox" name="student_id[]" class="" value="`+value['id']+`"> `+value['first_name']+` `+middle+`  `+lastname+`</div>`;
                });
                var year_name = data['classes']['name'];
                var key_stage_name = data['classes']['key_stages']['name'];

                var studentList ='';
                $.each(data['quiz_students'], function(i,value){
                    var attempt = (value.attempt == 1)? 'Attended':'Not Attended';
                    var middle   = (value['student']['middle_name'] == "" || value['student']['middle_name'] == null)? "":  value['student']['middle_name'];
                    var lastname = (value['student']['last_name'] == "" || value['student']['last_name'] == null)? "":  value['student']['last_name'];
                    studentList += `<div class="tab-pane show active mb-2 rowcount" id="quizSubject14" role="tabpanel">
                                                                <ul class="list-group ">
                                                                <li class="list-group-item">
                                                                        <div class="widget-content p-0">
                                                                            <div class="widget-content-wrapper">
                                                                                <div class="widget-content-left flex2">
                                                                                    <div class="widget-heading">`+value['student']['first_name']+` `+middle+`  `+lastname+` - `+value['id']+`</div>
                                                                                    <div class="widget-subheading opacity-10">
                                                                                        <span class="pr-2">Key Stage -> <b class="badge badge-warning"> `+key_stage_name+` </b></span>
                                                                                        <span>Year -> <b class="badge badge-success">`+year_name+` </b></span>
                                                                                        <span>  </span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="widget-content-right pr-2">
                                                                                    <div role="group" class="btn-group-sm btn-group">
                                                                                    <spna class="badge badge-warning">`+attempt+` </spna>
                                                                                        <span>Total Questions - <b class="badge badge-warning">`+value['quiz']['total_question']+`</b></span> &nbsp; <span> Total Score - <b class="badge badge-success">`+value['score']+`%</b></span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="widget-content-right">
                                                                                    <div role="group" class="btn-group-sm btn-group"> </div>
                                                                                </div>
                                                                                <div class="widget-content-right"><a href="`+url+`/quiz-and-student-wise-details/`+value['student']['id']+`"  class="btn btn-success btn-lg pt-3 pb-3 mains"><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Details </a></div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    </ul>
                                                            </div>`;
                });
                $('#student_assign_lists').html(studentList);
                if(data['status'] == 'Inactive') {
                    $('#student_assign').html("");
                }else {
                    $('#student_assign').html(studentHtml);
                }
                // $('#student_assign').html(studentHtml);
                $('#questionall').html(questionall);

            }
        });
    }

    studentView = function studentView(id){
        $.ajax({
            url: url+'/student/'+id,
            cache: false,
            success: function(response){
                var response = JSON.parse(response);
                var data = response['student'];
                if(data['middle_name'] == "" || data['middle_name'] == null){var middle = ""}else{var middle = data['middle_name']}
                if(data['last_name'] == "" || data['last_name'] == null){var last_name = ""}else{var last_name = data['last_name']}

                var schoolmodalHtml  =`<div class='container'><div class='row'><h5 class='mt-1'> <b> Personal Information </b></h5> <div class='col-lg-9 col-md-9'> <div class='row mt-2'><div class='col-lg-5 col-md-6 '><strong>Student Name  :</strong></div><div class='col-lg-7 col-md-6'>`+data['first_name']+" "+middle+" "+last_name+`</div></div>
                <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Address: :</strong></div><div class='col-lg-7 col-md-6'>`+data['address']+`</div></div>
                <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Email :</strong></div><div class='col-lg-7 col-md-6'>`+data['email']+`</div></div>
                <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Username :</strong></div><div class='col-lg-7 col-md-6'>`+data['user']['user_name']+`</div></div>
                <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Contact No :</strong></div><div class='col-lg-7 col-md-6'>`+data['contact_no']+`</div></div>
                <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Parent Name :</strong></div><div class='col-lg-7 col-md-6'>`+data['parent_name']+`</div></div>
                <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Parent Contact No :</strong></div><div class='col-lg-7 col-md-6'>`+data['parent_contact_no']+`</div></div>
                <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Parent Email :</strong></div><div class='col-lg-7 col-md-6'>`+data['parent_email']+`</div></div>
                <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Gender :</strong></div><div class='col-lg-7 col-md-6'>`+data['gender']+`</div></div>
                <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Date of Birth :</strong></div><div class='col-lg-7 col-md-6'>`+data['dob']+`</div></div>`;

                if(data['remarks'] == '' || data['remarks'] == null){
                    schoolmodalHtml +="<div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Remarks :</strong></div>"+"<div class='col-lg-7 col-md-6'> </div></div>";
                }else {
                    schoolmodalHtml += "<div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Remarks :</strong></div>" + "<div class='col-lg-7 col-md-6'>" + data['remarks'] + "</div></div>";
                }

                schoolmodalHtml +=`</div><div class='col-lg-3 col-md-3'>`;

                if (data['user']["user_profile_image"]!=null && data['user']["user_profile_image"]!="") {
                    schoolmodalHtml +=" <img style='width:100%;' src='" + profile_image_url + "/" + data['user']['user_profile_image'] + "' alt='User Image' class='img img-responsive'>";
                } else {
                    schoolmodalHtml +="<img style='width:100%;' src='" + profile_image_url + "/no-user-image.png' alt='User Image' class='img img-responsive'>";
                }

                schoolmodalHtml += `</div></div></div><hr><h5 class='mt-3'> <b> Academic Information </b></h5></div><table class='table table-bordered table-hover table-striped' style='width:100% !important'> <thead><tr><th>Key Stage</th><th>Class</th><th>Subject</th><th>Action</th></tr></thead><tbody>`;

                $.each(data['student_subjects'], function(i,data){
                    var status = (data['pivot']['status']=='Active') ? '<span class="badge badge-success">Active</span>' : '<span class="badge badge-danger">Inactive</span>';
                    return schoolmodalHtml 	+= "<span>"+data['subjects']['subject_name']+"</span>";
                })

                if(!jQuery.isEmptyObject(data['classes'])){
                    var trHtml = "";
                    $.each(data['classes'], function(i,value){
                        var status = (value['pivot']['status']=='Active') ? '<span class="badge badge-success">Active</span>' : '<span class="badge badge-danger">Inactive</span>';
                        schoolmodalHtml 	+= "<tr><td>"+value['key_stages']['name']+"</td>"+"<td>"+value['name']+" "+value['details']+"</td>"+"<td>";
                        $.each(value['student_classes']['student_subjects'], function(key1, subjectValue){
                            schoolmodalHtml += '<p>'+subjectValue['class_subjects']['subjects']['subject_name']+'</p>';
                        })
                        schoolmodalHtml +="</td>"+"<td>"+status+"</td></tr>";
                    })
                }
                schoolmodalHtml += "</div>";
                $('#myModalLabelLg').html('<i class="fa fa-user"></i> Student Details Information');
                $('#modalBodyLg').html(schoolmodalHtml);
                $("#generic_modal_lg").modal('show');
            }
        });
    }
});
$('#subject_id_attend').change(function(){
    var id = $(this).val();
    if(id){
        $.ajax({
            url: url+('/quiz-title?subject_id=')+id,
            cache: false,
            success: function(response){
                var response = JSON.parse(response);
                var data = response['quizzes'];
                console.log(data);
                jQuery('select[name="quiz_name"]').empty();
                var quiz = '<option value="" disabled selected>Select Quiz</option>';
                data.forEach(function (row){
                    quiz +='<option value="'+row.id+'">'+row.title+' </option>'
                });
                $('select[name="quiz_name"]').html(quiz);
            }
        })
    }
    else
    {
        $('select[name="quiz_name"]').empty();
    }

});
$('#quiz_id').change(function(){
    var id = $(this).val();
    if(id){
        $.ajax({
            url: url+('/quiz-student-reports?quiz_id=')+id,
            cache: false,
            success: function(response){
                var response = JSON.parse(response);
                var data = response['quizstudents'];
                console.log(data);

                jQuery('select[name="students"]').empty();
                var quiz = '<option value="" disabled selected>Select Quiz</option>';
                data.forEach(function (row){
                    quiz +='<option value="'+row.student.id+'">'+row.student.first_name+' </option>'
                });
                $('select[name="students"]').html(quiz);
            }
        })
    }
    else
    {
        $('select[name="students"]').empty();
    }

});

noticeView = function noticeView(id) {
    $.ajax({
        url: url + '/notice-details/' + id,
        cache: false,
        success: function (response) {
            var response = JSON.parse(response);
            var data = response['notice'];
            var details = (data['details'] == null || data['details'] == "") ? ' ':data['details'];
            var expire_date = (data['expire_date'] == null || data['expire_date'] == "") ? ' ':data['expire_date'];
            var attachment = (data["attachment"] == null || data["attachment"] == "") ? ' ':data["attachment"];
            var statusHtml = (data['status'] == "Active") ? '<span class="badge badge-success">Active</span>' : '<span class="badge badge-danger">In-active</span>';
            var modalHtml = "<div class='row margin-top-5'><div class='col-lg-3 col-md-4 '><strong>Notice Title :</strong></div>" + "<div class='col-lg-9 col-md-8'>" + data['title'] + "</div></div>";
            modalHtml += "<br>";
            modalHtml += "<div class='row margin-top-5'><div class='col-lg-3 col-md-4 '><strong>Notice Details :</strong></div>" + "<div class='col-lg-9 col-md-8'>"  + details + "</div></div>";
            modalHtml += "<br>";
            modalHtml += "<div class='row margin-top-5'><div class='col-lg-3 col-md-4 '><strong>Notice Date :</strong></div>" + "<div class='col-lg-9 col-md-8'>"  + data['notice_date'] + "</div></div>";
            modalHtml += "<br>";
            modalHtml += "<div class='row margin-top-5'><div class='col-lg-3 col-md-4 '><strong>Attachment :</strong></div>" + "<div class='col-lg-9 col-md-8'><a target='_blank' href='"+expense_attachment_url+'/'+attachment+"'>"+attachment+"</a></div></div>";
            modalHtml += "<br>";
            modalHtml += "<div class='row margin-top-5'><div class='col-lg-3 col-md-4 '><strong>Expire Date :</strong></div>" + "<div class='col-lg-9 col-md-8'>"  + expire_date + "</div></div>";
            modalHtml += "<br>";
            modalHtml += "<div class='row margin-top-5'><div class='col-lg-3 col-md-4 '><strong>Status :</strong></div>" + "<div class='col-lg-9 col-md-8'>" + statusHtml + "</div></div>";
            modalHtml += "<br>";
            $('#myModalLabelLg').html('Notice Details');
            $('#modalBodyLg').html(modalHtml);
            $("#generic_modal_lg").modal();
        }
    });
}
