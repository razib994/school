$("#studentSearch").on('click',function(event){
    event.preventDefault();
    var report_heading = 'Batch Status  ';

    if($.trim($('#year_name').val()) != "default"){
        report_heading += " Key Stage: "+$('#year_name').val();
    }
    if($.trim($('#class_name').val()) != "default"){
        report_heading += " Year Name: "+$('#class_name').val();
    }
    if($.trim($('#subject_name').val()) != "default"){
        report_heading += " Year Name: "+$('#subject_name').val();
    }
    if($.trim($('#topic_title').val()) != "default"){
        report_heading += " Year Name: "+$('#topic_title').val();
    }
    student_datatable = $('#students_table').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/students",
            "type": "POST",
            "data" : {
                "year_name": $("#year_name").val(),
                "class_name":$("#class_name").val(),
                "subject_name":$('#subject_name').val(),
                "topic_title":$('#topic_title').val(),

            },
        },
        "aoColumns": [
            //{ data: 'id'},
            { data: 'student_no'},
            { data: 'name' },
            { data: 'email'},
            { data: 'user_name'},
            { data: 'contact_no'},
            { data: 'school_name'},
            { data: 'status', className: "text-center"},
            { data: 'actions' , className: "text-center"},
        ],

    });

});
$('#studentSearch').trigger('click');
$(document).ready(function () {
    studentAdd = function studentAdd(){
        $("#form-title").html('<i class="fa fa-plus"></i> Add  New Student');
        $("#clear_button").show();
        $(".student_id_no").css("display","none");
        $('#class_id').find('option').remove();
        $('#subject_id').html("");
        $('#user_profile_image').html("");
        $("#user_image").attr("src", profile_image_url+"/no-user-image.png");
        $("#save_student").html('Save');
        $('#entry-form').modal('show');
    }

    //Entry And Update Student
    $("#save_student").on('click',function(){
        event.preventDefault();
        var formData = new FormData($('#student_form')[0]);
        if($.trim($('#first_name').val()) == ""){
            success_or_error_msg('#form_submit_error','danger',"Please enter First name","#first_name");
        }
        else if($.trim($('#email').val()) == ""){
            success_or_error_msg('#form_submit_error','danger',"Please enter email","#email");
        }
        else if($.trim($('#contact_no').val()) == "" || !($.isNumeric($('#contact_no').val()))){
            success_or_error_msg('#form_submit_error','danger',"Please enter contact no","#contact_no");
        }
        else if($.trim($('#dob').val()) == ""){
            success_or_error_msg('#form_submit_error','danger',"Please enter date of birth","#dob");
        }else if($.trim($('#gender').val()) == "default"){
            success_or_error_msg('#form_submit_error','danger',"Please Select Your Gender","#gender");
        }else if($.trim($('#parent_name').val()) == ""){
            success_or_error_msg('#form_submit_error','danger',"Please enter Parent Name","#parent_name");
        }else if($.trim($('#parent_contact_no').val()) == ""){
            success_or_error_msg('#form_submit_error','danger',"Please enter Parent contact no","#parent_contact_no");
        }else if($.trim($('#address').val()) == ""){
            success_or_error_msg('#form_submit_error','danger',"Please enter Address","#address");
        }else if($.trim($('#user_name').val()) == ""){
            success_or_error_msg('#form_submit_error','danger',"Please enter Username","#user_name");
        }
        else{
            $.ajax({
                url: url+"/student",
                type:'POST',
                data:formData,
                async:false,
                cache:false,
                contentType:false,
                processData:false,
                success: function(data){
                    console.log(data)
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
                        toastr['success']('Student saved successfully',  'Success!!!');
                        $('.modal').modal('hide')
                        student_datatable.ajax.reload();
                        $(this).closest('form').trigger("reset");
                        clear_form();
                        $("#save_student").html('Save');
                        $("#user_image").attr("src", "src");
                        $("#id").val('');
                    }
                    $(window).scrollTop();
                }
            });
        }
    });

    //Clear form
    $("#clear_button").on('click',function(){
        $("#user_image").attr("src", profile_image_url+"/no-user-image.png");
        clear_form();
    });

    // Student edit/update
    studentEdit = function studentEdit(id){
        $(".student_id_no").css("display","block");
        var edit_id = id;
        $("#form-title").html('<i class="fa fa-plus"></i> Edit Student');
        $.ajax({
            url: url+'/student/'+edit_id,
            cache: false,
            success: function(response){
                var response = JSON.parse(response);
                var data = response['student'];
                var years = response['years'];
                var classSubject = response['classSubject'];
                //console.log(data['classes']['key_stages']);
                $("#save_student").html('Update');
                $("#clear_button").hide();
                $('#student_no').val(data['student_no']).addClass('display', 'block');
                $("#address").val(data['address']);
                $("#email").val(data['email']);
                $("#contact_no").val(data['contact_no']);
                $("#first_name").val(data['first_name']);
                $("#middle_name").val(data['middle_name']);
                $("#dob").val(data['dob']);
                $("#gender").val(data['gender']);
                $("#parent_name").val(data['parent_name']);
                $("#parent_contact_no").val(data['parent_contact_no']);
                $("#parent_email").val(data['parent_email']);
                $("#remarks").val(data['remarks']);
                $("#user_name").val(data['user']['user_name']);


                var subjects = [];
                $.each(data['classes'], function(i,value){
                    $("#key_state_id").val(value['key_stage_id']);
                    $.each(value['student_classes']['student_subjects'], function(key1, subjectValue){
                        subjects[key1] = subjectValue['class_subject_id'];
                    })
                })
                years.forEach(function (row){
                    var select = (data['class_id'] == row.id)?'selected':'';
                    $("#class_id").append('<option value="'+row.id+'" '+select+' >'+row.name+' '+row.details+'</option>');
                });
                var subject_id ='';
                $.each(classSubject, function(i,value){
                    var checked = (subjects[i] == value['id'])?'checked':'';
                    subject_id +='<input type="checkbox" '+checked+' name="subject_id[]" value="'+value['id']+ '"/> '+value['subjects']['subject_name']+' ';
                });
                $('#subject_id').html(subject_id);
                if(response.user["user_profile_image"]==null) response.user['user_profile_image'] = 'no-user-image.png';
                $("#user_image").attr("src", profile_image_url+"/"+response.user["user_profile_image"]);
                $("#id").val(data['id']);
                (data['status']=='Inactive')?$("#is_active").iCheck('uncheck'):$("#is_active").iCheck('checked');
                $('#entry-form').modal('show');
            }
        });
    }

    //Student View
    // studentView = function studentView(id){
    //     $.ajax({
    //         url: url+'/student/'+id,
    //         cache: false,
    //         success: function(response){
    //             var response = JSON.parse(response);
    //             var data = response['student'];
    //
    //             if(data['middle_name'] == "" || data['middle_name'] == null){var middle = ""}else{var middle = data['middle_name']}
    //             if(data['last_name'] == "" || data['last_name'] == null){var last_name = ""}else{var last_name = data['last_name']}
    //
    //             var schoolmodalHtml  =`<div class='container'><div class='row'><h5 class='mt-1'> <b> Personal Information </b></h5> <div class='col-lg-9 col-md-9'> <div class='row mt-2'><div class='col-lg-5 col-md-6 '><strong>Student Name  :</strong></div><div class='col-lg-7 col-md-6'>`+data['first_name']+" "+middle+" "+last_name+`</div></div>
    //             <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Address: :</strong></div><div class='col-lg-7 col-md-6'>`+data['address']+`</div></div>
    //             <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Email :</strong></div><div class='col-lg-7 col-md-6'>`+data['email']+`</div></div>
    //             <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Contact No :</strong></div><div class='col-lg-7 col-md-6'>`+data['contact_no']+`</div></div>
    //             <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Parent Name :</strong></div><div class='col-lg-7 col-md-6'>`+data['parent_name']+`</div></div>
    //             <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Parent Contact No :</strong></div><div class='col-lg-7 col-md-6'>`+data['parent_contact_no']+`</div></div>
    //             <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Parent Email :</strong></div><div class='col-lg-7 col-md-6'>`+data['parent_email']+`</div></div>
    //             <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Gender :</strong></div><div class='col-lg-7 col-md-6'>`+data['gender']+`</div></div>
    //             <div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Date of Birth :</strong></div><div class='col-lg-7 col-md-6'>`+data['dob']+`</div></div>`;
    //
    //             if(data['remarks'] == '' || data['remarks'] == null){
    //                 schoolmodalHtml +="<div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Remarks :</strong></div>"+"<div class='col-lg-7 col-md-6'> </div></div>";
    //             }else {
    //                 schoolmodalHtml += "<div class='row mt-2'><div class='col-lg-5 col-md-6'><strong>Remarks :</strong></div>" + "<div class='col-lg-7 col-md-6'>" + data['remarks'] + "</div></div>";
    //             }
    //
    //             schoolmodalHtml +=`</div><div class='col-lg-3 col-md-3'>`;
    //              if (response.user["user_profile_image"]!=null && response.user["user_profile_image"]!="") {
    //                  schoolmodalHtml +=" <img style='width:100%;' src='" + profile_image_url + "/" + response.user['user_profile_image'] + "' alt='User Image' class='img img-responsive'>";
    //              } else {
    //                 schoolmodalHtml +="<img style='width:100%;' src='" + profile_image_url + "/no-user-image.png' alt='User Image' class='img img-responsive'>";
    //             }
    //
    //             schoolmodalHtml += `</div></div></div><hr><h5 class='mt-3'> <b> Academic Information </b></h5></div><table class='table table-bordered table-hover table-striped' style='width:100% !important'> <thead><tr><th>Key Stage</th><th>Class</th><th>Subject</th><th>Action</th></tr></thead><tbody>`;
    //
    //              $.each(data['student_subjects'], function(i,data){
    //                  var status = (data['pivot']['status']=='Active') ? '<span class="badge badge-success">Active</span>' : '<span class="badge badge-danger">Inactive</span>';
    //                  return schoolmodalHtml 	+= "<span>"+data['subjects']['subject_name']+"</span>";
    //              })
    //
    //             if(!jQuery.isEmptyObject(data['classes'])){
    //                 var trHtml = "";
    //                 $.each(data['classes'], function(i,value){
    //                     var status = (value['pivot']['status']=='Active') ? '<span class="badge badge-success">Active</span>' : '<span class="badge badge-danger">Inactive</span>';
    //                     schoolmodalHtml 	+= "<tr><td>"+value['key_stages']['name']+"</td>"+"<td>"+value['name']+" "+value['details']+"</td>"+"<td>";
    //                         $.each(value['student_classes']['student_subjects'], function(key1, subjectValue){
    //                             schoolmodalHtml += '<p>'+subjectValue['class_subjects']['subjects']['subject_name']+'</p>';
    //                         })
    //                     schoolmodalHtml +="</td>"+"<td>"+status+"</td></tr>";
    //                 })
    //             }
    //             schoolmodalHtml += "</div>";
    //             $('#myModalLabelLg').html('<i class="fa fa-user"></i> Student Details Information');
    //             $('#modalBodyLg').html(schoolmodalHtml);
    //             $("#generic_modal_lg").modal('show');
    //         }
    //     });
    // }

    // Student Delete
    studentDelete = function studentDelete(id){
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
                    url: url+'/student/delete/'+del_id,
                    cache: false,
                    success: function(data){
                        var response = JSON.parse(data);
                        if(response['result'] == 0){
                            toastr['error']( response['message'], 'Error!!!');
                        }
                        else{
                            toastr['success']( response['message'], 'Success!!!');
                            student_datatable.ajax.reload();
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

    $('#key_state_id').on('change', function(){
        // $("#subject_id").html('');
        // $('#subject_name>option:gt(0)').remove();
        // $('#subject_name').append('<option value="5">Year 3 (7 to 8 years old)</option>');
        var id = $(this).val();
        if(id){
            $.ajax({
                url: url+('/key-stage-class?key_stage_id=')+id,
                cache: false,
                success: function(response){
                    var response = JSON.parse(response);
                    var data = response['classe'];
                    jQuery('select[name="class_id"]').empty();
                    var keyStage = '<option value="" selected> Select Year</option>';
                    data.forEach(function (row){
                        keyStage +='<option value="'+row.id+'">'+row.name+' '+row.details+'</option>'
                    });
                    $('select[name="class_id"]').html(keyStage);
                }
            })
        }
        else
        {
            $('select[name="class_id"]').empty();
        }

    });

    $('#class_id').on('change', function(){
         $('#subject_name').append('<option value="" selected>Select Subject</option>');
        var id = $(this).val();
        if(id){
            $.ajax({
                url: url+('/class_subject?class_id=')+id,
                cache: false,
                success: function(response){
                    var response = JSON.parse(response);
                    var data = response['classSubject'];
                    jQuery('select[name="subject_id"]').empty();
                    var subject_id ='';
                    data.forEach(function (row){
                          subject_id +='<input type="checkbox" name="subject_id[]" value="'+row.id+ '"/> '+row.subjects.subject_name+' ';
                    });
                    $('#subject_id').html(subject_id);
                }
            })
        }
        else
        {
            $('select[name="class_id"]').empty();
        }

    });

});
