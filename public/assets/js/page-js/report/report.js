$("#show_subject_status_report").on('click',function(event){
    event.preventDefault();
    var report_heading = 'Batch Status  ';
    if($.trim($('#from_date').val()) != ""){
        report_heading += " from "+$('#from_date').val();
    }
    if($.trim($('#to_date').val()) != ""){
        report_heading += " To "+$('#to_date').val();
    }
    if($.trim($('#year_name').val()) != "All"){
        report_heading += " Key Stage: "+$('#year_name').val();
    }
    if($.trim($('#class_name').val()) != "All"){
        report_heading += " Year Name: "+$('#class_name').val();
    }
    subject_datatable = $('#subject_report_table').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        'paging': false,
        buttons: [
            {
                extend: 'excel',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'pdf',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'print',
                messageTop: "<h5>"+report_heading+"<br><p>&nbsp;</p></h5>",
                footer: true ,
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    $(win.document.body).find('h1').next('div').css('text-align', 'center');
                    $(win.document.body)
                        .css( 'font-size', '10pt' )
                        .prepend(
                            '<img src="'+fade_logo_url+'" style="position:absolute; top:42%; left:39%;" />'
                        );

                    $(win.document.body).find( 'table' )
                        .addClass( 'compact' )
                        .css( {
                            //color: '#FF0000',
                            //margin: '20px'
                            /* Etc CSS Styles..*/
                        } );
                    $(win.document.body).find( 'td' )
                        .css( {
                            //border: '1px solid #FF0000',
                            /* Etc CSS Styles..*/
                        } );
                }
            }
        ],
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/subject-report",
            "type": "POST",
            "data" : {
                "from_date": $("#from_date").val(),
                "to_date":$("#to_date").val(),
                "year_name":$('#year_name').val(),
                "class_name":$('#class_name').val(),

            },
        },
        "aoColumns": [
            {data: 'name'},
            {data: 'total_student', className: "text-center"},
            {data: 'total_time', className: "text-center"},
            {data: 'avg_score', className: "text-center"},
        ],


    });

    $.ajax({
        url  : url+"/subject-report",
        "type": "POST",
        cache: false,
        "data" : {
            "from_date": $("#from_date").val(),
            "to_date":$("#to_date").val(),
        },
        success: function (response) {
            var response = JSON.parse(response);
            var data = response['dates'];
            var date_betweens = `<div>
<span class="pr-2"><i class="fa fa-question-circle"></i></span>
                Results between  `+data['from_date']+` -to- `+data['to_date']+`
</div>`;
            $('#date_between').html(date_betweens);
        }
        });

});
$('#show_subject_status_report').trigger('click');

$("#show_quiz_status_report").on('click',function(event){
    var id = $("#id").val();
    var student_id = $("#student_id").val();

    event.preventDefault();
    var report_heading = 'Batch Status  ';
    if($.trim($('#from_date').val()) != ""){
        report_heading += " from "+$('#from_date').val();
    }
    if($.trim($('#to_date').val()) != ""){
        report_heading += " To "+$('#to_date').val();
    }
    if($.trim($('#year_name').val()) != "All"){
        report_heading += " Key Stage: "+$('#year_name').val();
    }
    if($.trim($('#class_name').val()) != "All"){
        report_heading += " Year Name: "+$('#class_name').val();
    }
    if($.trim($('#subject_name').val()) != "All"){
        report_heading += " Subject Name: "+$('#subject_name').val();
    }

    quiz_datatable = $('#quiz_report').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        'paging': false,
        buttons: [
            {
                extend: 'excel',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'pdf',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'print',
                messageTop: "<h5>"+report_heading+"<br><p>&nbsp;</p></h5>",
                footer: true ,
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    $(win.document.body).find('h1').next('div').css('text-align', 'center');
                    $(win.document.body)
                        .css( 'font-size', '10pt' )
                        .prepend(
                            '<img src="'+fade_logo_url+'" style="position:absolute; top:42%; left:39%;" />'
                        );

                    $(win.document.body).find( 'table' )
                        .addClass( 'compact' )
                        .css( {
                            //color: '#FF0000',
                            //margin: '20px'
                            /* Etc CSS Styles..*/
                        } );
                    $(win.document.body).find( 'td' )
                        .css( {
                            //border: '1px solid #FF0000',
                            /* Etc CSS Styles..*/
                        } );
                }
            }
        ],
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/quiz-report/"+id+"/"+student_id,
            "type": "POST",
            "data" : {
                "from_date": $("#from_date").val(),
                "to_date":$("#to_date").val(),
                "year_name":$('#year_name').val(),
                "class_name":$('#class_name').val(),
                "subject_name":$('#subject_name').val(),
            }
        },
        "aoColumns": [
            {data: 'name'},
            {data: 'total_time', className: "text-center"},
            {data: 'avg_score', className: "text-center"},
            {data: 'total_student', className: "text-center"},
        ]
    });

    $.ajax({
        "url" : url+"/quiz-report/"+id+"/"+student_id,
        "type": "POST",
        cache: false,
        "data" : {
            "from_date": $("#from_date").val(),
            "to_date":$("#to_date").val(),
        },
        success: function (response) {
            var response = JSON.parse(response);
            var data = response['dates'];
            var date_betweens = `<div>
<span class="pr-2"><i class="fa fa-question-circle"></i></span>
                Results between  `+data['from_date']+` -to- `+data['to_date']+`
</div>`;
            $('#date_between').html(date_betweens);
        }
    });

});
$('#show_quiz_status_report').trigger('click');

$("#show_quiz_subjects_status_report").on('click',function(event){
    var id = $("#id").val();
    event.preventDefault();
    var report_heading = 'Batch Status  ';
    if($.trim($('#from_date').val()) != ""){
        report_heading += " from "+$('#from_date').val();
    }
    if($.trim($('#to_date').val()) != ""){
        report_heading += " To "+$('#to_date').val();
    }
    if($.trim($('#year_name').val()) != "All"){
        report_heading += " Key Stage: "+$('#year_name').val();
    }
    if($.trim($('#class_name').val()) != "All"){
        report_heading += " Year Name: "+$('#class_name').val();
    }
    if($.trim($('#subject_name').val()) != "All"){
        report_heading += " Subject Name: "+$('#subject_name').val();
    }

    quiz_datatable = $('#quiz_subjects_report').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        'paging': false,
        buttons: [
            {
                extend: 'excel',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'pdf',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'print',
                messageTop: "<h5>"+report_heading+"<br><p>&nbsp;</p></h5>",
                footer: true ,
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    $(win.document.body).find('h1').next('div').css('text-align', 'center');
                    $(win.document.body)
                        .css( 'font-size', '10pt' )
                        .prepend(
                            '<img src="'+fade_logo_url+'" style="position:absolute; top:42%; left:39%;" />'
                        );

                    $(win.document.body).find( 'table' )
                        .addClass( 'compact' )
                        .css( {
                            //color: '#FF0000',
                            //margin: '20px'
                            /* Etc CSS Styles..*/
                        } );
                    $(win.document.body).find( 'td' )
                        .css( {
                            //border: '1px solid #FF0000',
                            /* Etc CSS Styles..*/
                        } );
                }
            }
        ],
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/quiz-report/"+id,
            "type": "POST",
            "data" : {
                "from_date": $("#from_date").val(),
                "to_date":$("#to_date").val(),
                "year_name":$('#year_name').val(),
                "class_name":$('#class_name').val(),
                "subject_name":$('#subject_name').val(),
            }
        },
        "aoColumns": [
            {data: 'name'},
            {data: 'total_time', className: "text-center"},
            {data: 'avg_score', className: "text-center"},
            {data: 'total_student', className: "text-center"},
        ]
    });

    $.ajax({
        "url" : url+"/quiz-report/"+id,
        "type": "POST",
        cache: false,
        "data" : {
            "from_date": $("#from_date").val(),
            "to_date":$("#to_date").val(),
        },
        success: function (response) {
            var response = JSON.parse(response);
            var data = response['dates'];
            var date_betweens = `<div>
<span class="pr-2"><i class="fa fa-question-circle"></i></span>
                Results between  `+data['from_date']+` -to- `+data['to_date']+`
</div>`;
            $('#date_between').html(date_betweens);
        }
    });

});
$('#show_quiz_subjects_status_report').trigger('click');


$("#show_quiz_report_student_status_report").on('click',function(event){
    var id = $("#id").val();
    event.preventDefault();
    var report_heading = 'Batch Status  ';
    if($.trim($('#from_date').val()) != ""){
        report_heading += " from "+$('#from_date').val();
    }
    if($.trim($('#to_date').val()) != ""){
        report_heading += " To "+$('#to_date').val();
    }
    if($.trim($('#year_name').val()) != "default"){
        report_heading += " Key Stage: "+$('#year_name').val();
    }
    if($.trim($('#class_name').val()) != "default"){
        report_heading += " Year Name: "+$('#class_name').val();
    }
    if($.trim($('#subject_id_attend').val()) != "default"){
        report_heading += " Subject Name: "+$('#subject_id_attend').val();
    }
    if($.trim($('#quiz_id').val()) != "default"){
        report_heading += " Quiz Name: "+$('#quiz_id').val();
    }
    if($.trim($('#students').val()) != "default"){
        report_heading += " Quiz Name: "+$('#students').val();
    }

    student_report_table = $('#quiz_report_student_report_table').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        'paging': false,
        buttons: [
            {
                extend: 'excel',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'pdf',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'print',
                messageTop: "<h5>"+report_heading+"<br><p>&nbsp;</p></h5>",
                footer: true ,
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    $(win.document.body).find('h1').next('div').css('text-align', 'center');
                    $(win.document.body)
                        .css( 'font-size', '10pt' )
                        .prepend(
                            '<img src="'+fade_logo_url+'" style="position:absolute; top:42%; left:39%;" />'
                        );

                    $(win.document.body).find( 'table' )
                        .addClass( 'compact' )
                        .css( {
                            //color: '#FF0000',
                            //margin: '20px'
                            /* Etc CSS Styles..*/
                        } );
                    $(win.document.body).find( 'td' )
                        .css( {
                            //border: '1px solid #FF0000',
                            /* Etc CSS Styles..*/
                        } );
                }
            }
        ],
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/quiz-report-student/"+id,
            "type": "POST",
            "data" : {
                "from_date": $("#from_date").val(),
                "to_date":$("#to_date").val(),
                "year_name":$('#year_name').val(),
                "class_name":$('#class_name').val(),
                "subject_name":$('#subject_id_attend').val(),
                "quiz_name":$('#quiz_id').val(),
                "students":$('#students').val(),
            }
        },
        "aoColumns": [
            {data: 'first_name'},
            {data: 'last_name', className: "text-center"},
            {data: 'total_time', className: "text-center"},
            {data: 'avg_score', className: "text-center"},
            {data: 'last_access', className: "text-center"},
        ]
    });
});
$('#show_quiz_report_student_status_report').trigger('click');

$("#show_quiz_wise_attend_status_report").on('click',function(event){
    var id = $("#id").val();
    event.preventDefault();
    var report_heading = 'Report Status  ';
    if($.trim($('#from_date').val()) != ""){
        report_heading += " from "+$('#from_date').val();
    }
    if($.trim($('#to_date').val()) != ""){
        report_heading += " To "+$('#to_date').val();
    }
    if($.trim($('#year_name').val()) != "default"){
        report_heading += " Key Stage: "+$('#year_name').val();
    }
    if($.trim($('#class_name').val()) != "default"){
        report_heading += " Year Name: "+$('#class_name').val();
    }
    if($.trim($('#subject_id_attend').val()) != "default"){
        report_heading += " Subject Name: "+$('#subject_id_attend').val();
    }
    if($.trim($('#quiz_name').val()) != "default"){
        report_heading += " Quiz Name: "+$('#quiz_name').val();
    }

    quiz_wise_attend_report = $('#quiz_wise_attend_report').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        'paging': false,
        buttons: [
            {
                extend: 'excel',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'pdf',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'print',
                messageTop: "<h5>"+report_heading+"<br><p>&nbsp;</p></h5>",
                footer: true ,
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    $(win.document.body).find('h1').next('div').css('text-align', 'center');
                    $(win.document.body)
                        .css( 'font-size', '10pt' )
                        .prepend(
                            '<img src="'+fade_logo_url+'" style="position:absolute; top:42%; left:39%;" />'
                        );

                    $(win.document.body).find( 'table' )
                        .addClass( 'compact' )
                        .css( {
                            //color: '#FF0000',
                            //margin: '20px'
                            /* Etc CSS Styles..*/
                        } );
                    $(win.document.body).find( 'td' )
                        .css( {
                            //border: '1px solid #FF0000',
                            /* Etc CSS Styles..*/
                        } );
                }
            }
        ],
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/quiz-wise-attend-details/"+id,
            "type": "POST",
            "data" : {
                "from_date": $("#from_date").val(),
                "to_date":$("#to_date").val(),
                "year_name":$('#year_name').val(),
                "class_name":$('#class_name').val(),
                "subject_name":$('#subject_id_attend').val(),
                "quiz_name":$('#quiz_name').val(),
            }
        },
        "aoColumns": [
            {data: 'name'},
            {data: 'time'},
            {data: 'attempts'},
            {data: 'max_score'},
            {data: 'first_score'},
            {data: 'last_score'},
            {data: 'avg_score'},
        ]
    });

    $.ajax({
        "url" : url+"/quiz-wise-attend-details/"+id,
        "type": "POST",
        cache: false,
        "data" : {
            "from_date": $("#from_date").val(),
            "to_date":$("#to_date").val(),
        },
        success: function (response) {
            var response = JSON.parse(response);
            var data = response['dates'];
            var date_betweens = `<div>
<span class="pr-2 pt-1 pb-1"><i class="fa fa-question-circle"></i></span>
                Results between  `+data['from_date']+` -to- `+data['to_date']+`
</div>`;
            $('#date_between').html(date_betweens);
        }
    });

});
$('#show_quiz_wise_attend_status_report').trigger('click');

student_result_report = function() {
    var id = $("#id").val();
    var student_id = $("#student_id").val();

    $.ajax({
        url: url+"/quiz-and-student-wise-detailses/"+id+"/"+student_id,
        type:'GET',
        success: function(data){
            var response = JSON.parse(data);
            var quiz = "";
            response["quizstudentreport"].forEach(function (row){
                    var datetime = new Date(row.created_at);
                    // var fdate = datetime.toDateString();

                    quiz +=`<tr>
                           <td> `+row.created_at+` </td>
                           <td> `+row.quiz_take_duration+` </td>
                           <td> `+row.score+`% </td>
                           <td> <button class="btn btn-info btn-sm quizviewreport" style="cursor: pointer;" onclick="quizstudentreportdetails(`+row.quiz_student_id+`)"> <i class="lnr-eye"></i> </button> </td>
                        </tr>`;
                // })

            });

            $("#tbody").html(quiz);
            $('.quizviewreport:first').trigger('click');
        }

    });

}
student_result_report();


$("#show_student_status_report").on('click',function(event){
    event.preventDefault();
    var report_heading = 'Batch Status  ';
    if($.trim($('#from_date').val()) != ""){
        report_heading += " from "+$('#from_date').val();
    }
    if($.trim($('#to_date').val()) != ""){
        report_heading += " To "+$('#to_date').val();
    }
    if($.trim($('#year_name').val()) != "default"){
        report_heading += " Key Stage: "+$('#year_name').val();
    }
    if($.trim($('#class_name').val()) != "default"){
        report_heading += " Year Name: "+$('#class_name').val();
    }
    if($.trim($('#subject_id_attend').val()) != "default"){
        report_heading += " Subject Name: "+$('#subject_id_attend').val();
    }
    if($.trim($('#quiz_id').val()) != "default"){
        report_heading += " Quiz Name: "+$('#quiz_id').val();
    }

    student_report_table = $('#student_report_table').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        'paging': false,
        buttons: [
            {
                extend: 'excel',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'pdf',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'print',
                messageTop: "<h5>"+report_heading+"<br><p>&nbsp;</p></h5>",
                footer: true ,
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    $(win.document.body).find('h1').next('div').css('text-align', 'center');
                    $(win.document.body)
                        .css( 'font-size', '10pt' )
                        .prepend(
                            '<img src="'+fade_logo_url+'" style="position:absolute; top:42%; left:39%;" />'
                        );

                    $(win.document.body).find( 'table' )
                        .addClass( 'compact' )
                        .css( {
                        } );
                    $(win.document.body).find( 'td' )
                        .css( {
                        } );
                }
            }
        ],
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/student-usage",
            "type": "POST",
            "data" : {
                "form_date": $("#form_date").val(),
                "to_date":$("#to_date").val(),
                "year_name":$('#year_name').val(),
                "class_name":$('#class_name').val(),
                "subject_name":$('#subject_id_attend').val(),
                "quiz_name":$('#quiz_id').val(),

            }
        },
        "aoColumns": [
            {data: 'first_name'},
            {data: 'last_name', className: "text-center"},
            {data: 'total_time', className: "text-center"},
            {data: 'avg_score', className: "text-center"},
            {data: 'last_access', className: "text-center"},
        ]
    });
});
$('#show_student_status_report').trigger('click');

$("#show_student_subjects_status_report").on('click',function(event){
    var id = $("#id").val();
    event.preventDefault();
    var report_heading = 'Batch Status  ';
    if($.trim($('#form_date').val()) != ""){
        report_heading += " from "+$('#form_date').val();
    }
    if($.trim($('#to_date').val()) != ""){
        report_heading += " To "+$('#to_date').val();
    }
    if($.trim($('#year_name').val()) != "default"){
        report_heading += " Key Stage: "+$('#year_name').val();
    }


    student_subject_report_table = $('#student_subject_report_table').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        'paging': false,
        buttons: [
            {
                extend: 'excel',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'pdf',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'print',
                messageTop: "<h5>"+report_heading+"<br><p>&nbsp;</p></h5>",
                footer: true ,
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    $(win.document.body).find('h1').next('div').css('text-align', 'center');
                    $(win.document.body)
                        .css( 'font-size', '10pt' )
                        .prepend(
                            '<img src="'+fade_logo_url+'" style="position:absolute; top:42%; left:39%;" />'
                        );

                    $(win.document.body).find( 'table' )
                        .addClass( 'compact' )
                        .css( {
                            //color: '#FF0000',
                            //margin: '20px'
                            /* Etc CSS Styles..*/
                        } );
                    $(win.document.body).find( 'td' )
                        .css( {
                            //border: '1px solid #FF0000',
                            /* Etc CSS Styles..*/
                        } );
                }
            }
        ],
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/student-subject-report/"+id,
            "type": "POST",
            "data" : {
                "form_date": $("#form_date").val(),
                "to_date":$("#to_date").val(),
                "year_name":$('#year_name').val(),
            }
        },
        "aoColumns": [
            {data: 'subject'},
            {data: 'users', className: "text-center"},
            {data: 'total_time', className: "text-center"},
            {data: 'avg_score', className: "text-center"},
        ]
    });
});
$('#show_student_subjects_status_report').trigger('click');

$("#show_assignment_status_report").on('click',function(event){
    event.preventDefault();
    var report_heading = 'Batch Status  ';
    if($.trim($('#from_date').val()) != ""){
        report_heading += " from "+$('#from_date').val();
    }
    if($.trim($('#to_date').val()) != ""){
        report_heading += " To "+$('#to_date').val();
    }
    if($.trim($('#year_name').val()) != "default"){
        report_heading += " Key Stage: "+$('#year_name').val();
    }
    if($.trim($('#class_name').val()) != "default"){
        report_heading += " Year Name: "+$('#class_name').val();
    }
    if($.trim($('#subject_id_attend').val()) != "default"){
        report_heading += " Subject Name: "+$('#subject_id_attend').val();
    }
    if($.trim($('#quiz_id').val()) != "default"){
        report_heading += " Quiz Name: "+$('#quiz_id').val();
    }


    assignment_report_table = $('#assignment_report_table').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        'paging': false,
        buttons: [
            {
                extend: 'excel',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'pdf',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'print',
                messageTop: "<h5>"+report_heading+"<br><p>&nbsp;</p></h5>",
                footer: true ,
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    $(win.document.body).find('h1').next('div').css('text-align', 'center');
                    $(win.document.body)
                        .css( 'font-size', '10pt' )
                        .prepend(
                            '<img src="'+fade_logo_url+'" style="position:absolute; top:42%; left:39%;" />'
                        );

                    $(win.document.body).find( 'table' )
                        .addClass( 'compact' )
                        .css( {
                            //color: '#FF0000',
                            //margin: '20px'
                            /* Etc CSS Styles..*/
                        } );
                    $(win.document.body).find( 'td' )
                        .css( {
                            //border: '1px solid #FF0000',
                            /* Etc CSS Styles..*/
                        } );
                }
            }
        ],
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/assignments-report",
            "type": "POST",
            "data" : {
                "from_date": $("#from_date").val(),
                "to_date":$("#to_date").val(),
                "year_name":$('#year_name').val(),
                "class_name":$('#class_name').val(),
                "subject_name":$('#subject_id_attend').val(),
                "quiz_name":$('#quiz_id').val(),

            }
        },
        "aoColumns": [
            {data: 'name'},
            {data: 'completed', className: "text-center"},
            {data: 'quizzes', className: "text-center"},
            {data: 'from', className: "text-center"},
            {data: 'to', className: "text-center"},
            {data: 'button', className: "text-center"},
        ]
    });
});
$('#show_assignment_status_report').trigger('click');

$("#show_assignment_attempts_status_report").on('click',function(event){

    event.preventDefault();
    var report_heading = 'Batch Status  ';
    if($.trim($('#from_date').val()) != ""){
        report_heading += " from "+$('#from_date').val();
    }
    if($.trim($('#to_date').val()) != ""){
        report_heading += " To "+$('#to_date').val();
    }
    if($.trim($('#year_name').val()) != "default"){
        report_heading += " Key Stage: "+$('#year_name').val();
    }
    if($.trim($('#class_name').val()) != "default"){
        report_heading += " Year Name: "+$('#class_name').val();
    }
    if($.trim($('#subject_id_attend').val()) != "default"){
        report_heading += " Subject Name: "+$('#subject_id_attend').val();
    }
    if($.trim($('#quiz_id').val()) != "default"){
        report_heading += " Quiz Name: "+$('#quiz_id').val();
    }


    assignment_attempts_report_table = $('#assignment_attempts_report_table').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        'paging': false,
        buttons: [
            {
                extend: 'excel',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'pdf',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'print',
                messageTop: "<h5>"+report_heading+"<br><p>&nbsp;</p></h5>",
                footer: true ,
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    $(win.document.body).find('h1').next('div').css('text-align', 'center');
                    $(win.document.body)
                        .css( 'font-size', '10pt' )
                        .prepend(
                            '<img src="'+fade_logo_url+'" style="position:absolute; top:42%; left:39%;" />'
                        );

                    $(win.document.body).find( 'table' )
                        .addClass( 'compact' )
                        .css( {
                            //color: '#FF0000',
                            //margin: '20px'
                            /* Etc CSS Styles..*/
                        } );
                    $(win.document.body).find( 'td' )
                        .css( {
                            //border: '1px solid #FF0000',
                            /* Etc CSS Styles..*/
                        } );
                }
            }
        ],
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/assignments-attempts-report",
            "type": "POST",
            "data" : {
                "from_date": $("#from_date").val(),
                "to_date":$("#to_date").val(),
                "year_name":$('#year_name').val(),
                "class_name":$('#class_name').val(),
                "subject_name":$('#subject_id_attend').val(),
                "quiz_name":$('#quiz_id').val(),

            }
        },
        "aoColumns": [
            {data: 'name'},
            {data: 'completed', className: "text-center"},
            {data: 'quizzes', className: "text-center"},
            {data: 'from', className: "text-center"},
            {data: 'to', className: "text-center"},
            {data: 'button', className: "text-center"},
        ]
    });
});
$('#show_assignment_attempts_status_report').trigger('click');

$("#show_assignment_student_status_report").on('click',function(event){
    event.preventDefault();
    var id = $("#ass_id").val();
    var report_heading = 'Batch Status  ';
    if($.trim($('#from_date').val()) != ""){
        report_heading += " from "+$('#from_date').val();
    }
    if($.trim($('#to_date').val()) != ""){
        report_heading += " To "+$('#to_date').val();
    }
    if($.trim($('#assignment_id').val()) != "default"){
        report_heading += " Assignment : "+$('#assignment_id').val();
    }
    assignment_student_report_table = $('#assignment_student_report_table').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        'paging': false,
        buttons: [
            {
                extend: 'excel',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'pdf',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'print',
                messageTop: "<h5>"+report_heading+"<br><p>&nbsp;</p></h5>",
                footer: true ,
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    $(win.document.body).find('h1').next('div').css('text-align', 'center');
                    $(win.document.body)
                        .css( 'font-size', '10pt' )
                        .prepend(
                            '<img src="'+fade_logo_url+'" style="position:absolute; top:42%; left:39%;" />'
                        );

                    $(win.document.body).find( 'table' )
                        .addClass( 'compact' )
                        .css( {
                            //color: '#FF0000',
                            //margin: '20px'
                            /* Etc CSS Styles..*/
                        } );
                    $(win.document.body).find( 'td' )
                        .css( {
                            //border: '1px solid #FF0000',
                            /* Etc CSS Styles..*/
                        } );
                }
            }
        ],
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/assignments-students-details-report/"+id,
            "type": "POST",
            "data" : {
                "from_date": $("#from_date").val(),
                "to_date":$("#to_date").val(),
                "assignment_id":$('#assignment_id').val(),
            }
        },
        "aoColumns": [
            {data: 'first_name'},
            {data: 'last_name', className: "text-center"},
            {data: 'time', className: "text-center"},
            {data: 'attempts', className: "text-center"},
            {data: 'first', className: "text-center"},
            {data: 'last', className: "text-center"},
            {data: 'avg', className: "text-center"},
            {data: 'best', className: "text-center"},
        ]
    });
});
$('#show_assignment_student_status_report').trigger('click');

$("#show_weekly_status_report").on('click',function(event){
    event.preventDefault();
    var report_heading = 'Batch Status  ';
    if($.trim($('#from_date').val()) != ""){
        report_heading += " from "+$('#from_date').val();
    }
    if($.trim($('#to_date').val()) != ""){
        report_heading += " To "+$('#to_date').val();
    }
    assignment_student_report_table = $('#weekly_report_table').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        'paging': false,
        buttons: [
            {
                extend: 'excel',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'pdf',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'print',
                messageTop: "<h5>"+report_heading+"<br><p>&nbsp;</p></h5>",
                footer: true ,
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    $(win.document.body).find('h1').next('div').css('text-align', 'center');
                    $(win.document.body)
                        .css( 'font-size', '10pt' )
                        .prepend(
                            '<img src="'+fade_logo_url+'" style="position:absolute; top:42%; left:39%;" />'
                        );

                    $(win.document.body).find( 'table' )
                        .addClass( 'compact' )
                        .css( {
                            //color: '#FF0000',
                            //margin: '20px'
                            /* Etc CSS Styles..*/
                        } );
                    $(win.document.body).find( 'td' )
                        .css( {
                            //border: '1px solid #FF0000',
                            /* Etc CSS Styles..*/
                        } );
                }
            }
        ],
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/report-week-days",
            "type": "POST",
            "data" : {
                "from_date": $("#from_date").val(),
                "to_date":$("#to_date").val(),

            }
        },
        "aoColumns": [
            {data: 'first_name'},
            {data: 'last_name', className: "text-center"},
            {data: 'three_week', className: "text-center"},
            {data: 'two_week', className: "text-center"},
            {data: 'last_week', className: "text-center"},
            {data: 'this_week', className: "text-center"},
        ]
    });
});
$('#show_weekly_status_report').trigger('click');

$("#show_monthly_status_report").on('click',function(event){
    event.preventDefault();
    var report_heading = 'Batch Status  ';
    if($.trim($('#from_date').val()) != ""){
        report_heading += " from "+$('#from_date').val();
    }
    if($.trim($('#to_date').val()) != ""){
        report_heading += " To "+$('#to_date').val();
    }
    monthly_report_table = $('#monthly_report_table').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        'paging': false,
        buttons: [
            {
                extend: 'excel',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'pdf',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'print',
                messageTop: "<h5>"+report_heading+"<br><p>&nbsp;</p></h5>",
                footer: true ,
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    $(win.document.body).find('h1').next('div').css('text-align', 'center');
                    $(win.document.body)
                        .css( 'font-size', '10pt' )
                        .prepend(
                            '<img src="'+fade_logo_url+'" style="position:absolute; top:42%; left:39%;" />'
                        );

                    $(win.document.body).find( 'table' )
                        .addClass( 'compact' )
                        .css( {
                            //color: '#FF0000',
                            //margin: '20px'
                            /* Etc CSS Styles..*/
                        } );
                    $(win.document.body).find( 'td' )
                        .css( {
                            //border: '1px solid #FF0000',
                            /* Etc CSS Styles..*/
                        } );
                }
            }
        ],
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/monthly-report",
            "type": "POST",
            "data" : {
                "from_date": $("#from_date").val(),
                "to_date":$("#to_date").val(),

            }
        },
        "aoColumns": [
            {data: 'month'},
            {data: 'total_time', className: "text-center"},
            {data: 'avg_score', className: "text-center"},
            {data: 'active_user', className: "text-center"},
        ]
    });
});
$('#show_monthly_status_report').trigger('click');

$("#show_top_subject_status_report").on('click',function(event){
    event.preventDefault();
    var report_heading = 'Batch Status  ';
    if($.trim($('#from_date').val()) != ""){
        report_heading += " from "+$('#from_date').val();
    }
    if($.trim($('#to_date').val()) != ""){
        report_heading += " To "+$('#to_date').val();
    }
    top_student_report_table = $('#top_student_report_table').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        'paging': false,
        buttons: [
            {
                extend: 'excel',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'pdf',
                messageTop: report_heading,
                footer: true
            },
            {
                extend: 'print',
                messageTop: "<h5>"+report_heading+"<br><p>&nbsp;</p></h5>",
                footer: true ,
                customize: function ( win ) {
                    $(win.document.body).find('h1').css('text-align', 'center');
                    $(win.document.body).find('h1').next('div').css('text-align', 'center');
                    $(win.document.body)
                        .css( 'font-size', '10pt' )
                        .prepend(
                            '<img src="'+fade_logo_url+'" style="position:absolute; top:42%; left:39%;" />'
                        );

                    $(win.document.body).find( 'table' )
                        .addClass( 'compact' )
                        .css( {
                            //color: '#FF0000',
                            //margin: '20px'
                            /* Etc CSS Styles..*/
                        } );
                    $(win.document.body).find( 'td' )
                        .css( {
                            //border: '1px solid #FF0000',
                            /* Etc CSS Styles..*/
                        } );
                }
            }
        ],
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/top-student-report",
            "type": "POST",
            "data" : {
                "from_date": $("#from_date").val(),
                "to_date":$("#to_date").val(),
                "year_id": $("#year_name").val(),
                "class_id":$("#class_name").val(),


            }
        },
        "aoColumns": [
            {data: 'first_name'},
            {data: 'last_name'},
            {data: 'total_time', className: "text-center"},
            {data: 'total_mark', className: "text-center"},
            {data: 'total_question', className: "text-center"},
        ]
    });
});
$('#show_top_subject_status_report').trigger('click');

quizstudentreportdetails = function quizstudentreportdetails(id) {

    $.ajax({
        url: url + '/quiz-student-wise-report-details/'+id,
        cache: false,
        success: function (response) {
            var response = JSON.parse(response);
            var data = response['quizstudents'];

           var quizstudens = `<ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">Date Taken:</div>
                                                    <div class="widget-subheading">`+data['taken_date']+`</div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">Duration</div>
                                                    <div class="widget-subheading"><span> `+data['quiz_take_duration']+` </span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">Score</div>
                                                    <div class="widget-subheading">`+data['score']+` %</div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">Total Questions:</div>
                                                    <div class="widget-subheading">`+data['quiz']['total_question']+`</div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">No Answered Correctly:</div>
                                                    <div class="widget-subheading">`+response['noAnswer']+`</div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">Answered Correctly: </div>
                                                    <div class="widget-subheading">`+response['right']+`</div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">Answered Incorrectly: </div>
                                                    <div class="widget-subheading">`+response['wrong']+`</div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">Skipped</div>
                                                    <div class="widget-subheading">`+response['skipped']+`</div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>`;
            var quiz_info = `<div class="card-body">
                <h5 class="card-title"> Questions </h5>`;
            data['quiz_answers'].forEach(function (row){
                quiz_info += `<div class="row mb-2 mt-2">
                    <div class="col-md-6"> `+row.question.question_detail+`</div>
                    <div class="col-md-2">`
                var retake ="";
                if(row.retake == 'Yes'){
                    retake = '<span class="badge badge-warning">Retake</span>';
                }else{
                    retake = '';
                }
                quiz_info += ``+retake+`</div>
                    <div class="col-md-2"><span class="badge badge-info">`+row.question.mark+` Marks</span></div>
                    <div class="col-md-2">`;
                if(row.answer == 'Right'){
                    quiz_info += `<button class="btn btn-xs btn-light"><i class="fa fa-fw text-success" aria-hidden="true" ></i></button>&nbsp;`
                }else{
                    quiz_info += `<button class="btn btn-xs btn-light"><i class="fa fa-fw text-danger" aria-hidden="true" ></i></button>&nbsp;`
                }
                quiz_info += `<button onclick="questionResultView(`+row.id+`)"  class="btn btn-xs btn-info"><i class="lnr-eye"></i></button> </div>
                </div>
                <hr>`;
            });
            quiz_info += `</div>`;

           $("#quiz_studens_report_details").html(quizstudens);
           $("#quiz_question_answer_info").html(quiz_info);

        }
    });
 }

quizstudentreportdetailsStudentReport = function quizstudentreportdetailsStudentReport(id) {
    $.ajax({
        url: url + '/portal/quiz-student-wise-report-details-student-report/'+id,
        cache: false,
        success: function (response) {
            var response = JSON.parse(response);
            var data = response['quizstudents'];
            var quizstudens = `<ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">Date Taken:</div>
                                                    <div class="widget-subheading">`+data['taken_date']+`</div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">Duration</div>
                                                    <div class="widget-subheading"><span> `+data['quiz_take_duration']+` </span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">Score</div>
                                                    <div class="widget-subheading">`+data['score']+` %</div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">Total Questions:</div>
                                                    <div class="widget-subheading">`+data['quiz']['total_question']+`</div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">No Answered Correctly:</div>
                                                    <div class="widget-subheading">`+response['noAnswer']+`</div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">Answered Correctly: </div>
                                                    <div class="widget-subheading">`+response['right']+`</div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">Answered Incorrectly: </div>
                                                    <div class="widget-subheading">`+response['wrong']+`</div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left">
                                                    <div class="widget-heading">Skipped</div>
                                                    <div class="widget-subheading">`+response['skipped']+`</div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>`;
            var quiz_info = `<div class="card-body">
                <h5 class="card-title"> Questions </h5>`;
            data['quiz_answers'].forEach(function (row){
                quiz_info += `<div class="row mb-2 mt-2">
                    <div class="col-md-6"> `+row.question.question_detail+`</div>
                    <div class="col-md-2">`
                var retake ="";
                if(row.retake == 'Yes'){
                    retake = '<span class="badge badge-warning">Retake</span>';
                }else{
                    retake = '';
                }
                quiz_info += ``+retake+`</div>
                    <div class="col-md-2"><span class="badge badge-info">`+row.question.mark+` Marks</span></div>
                    <div class="col-md-2">`;
                if(row.answer == 'Right'){
                    quiz_info += `<i class="fa fa-fw text-success" style="font-size: 25px;" aria-hidden="true" title="Copy to use check-circle"></i>`
                }else{
                    quiz_info += `<i class="fa fa-fw text-danger" style="font-size: 25px;" aria-hidden="true" title="Copy to use times-circle"></i>`
                }
                quiz_info += `<i class="lnr-eye btn btn-info" style="margin-top: -15px; margin-left: 10px" aria-hidden="true" onclick="questionResultView(`+row.id+`)"></i> </div>
                </div>
                <hr>`;
            });
            quiz_info += `</div>`;
            $("#quiz_studens_report_details").html(quizstudens);
            $("#quiz_question_answer_info").html(quiz_info);
        }
    });
}

$(".button-submit:first").trigger('click');

questionResultView = function questionResultView(id) {
    $.ajax({
        url: url + '/portal/quizzes-question-per-result-show/'+id,
        cache: false,
        success: function (response) {
            var response = JSON.parse(response);
            var data = response['quizAnswerQuestionResultShow'];
            var answer = data['answer'];
            var details = `<div class="row">
                    <div class="col-md-12 ">
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
                    details += `<li class="mb-1 p-1">`+row.question_option_title+` = `+row.is_answer+` </li>`;
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
                    </div> </div>`;
            var answerbutton ="";
            if(answer == 'Right'){
                answerbutton += `<button type="button" class="btn btn-success" data-dismiss="modal"><i class="fa fa-fw text-warning" aria-hidden="true"></i> Right</button> <span style="font-size: 16px;">Mark- `+data['question']['mark']+`</span>`;
            }else{
                answerbutton += `<button type="button" class="btn btn-danger hidden-print" data-dismiss="modal"><i class="fa fa-fw text-warning" aria-hidden="true"></i> Wrong</button> <span style="font-size: 16px;">Mark-`+data['question']['mark']+`</span>`;
            }
            $('#myModalLabelnewLg').html(answerbutton);
            $('#modalBodynewLg').html(details);
            $("#generic_modal_new_lg").modal('show');
        }
    });
}

var setStudentStatistics = function (data) {
            var st_statistics = `<div><h5 class="breadcrumb text-dark">Student Statistics</h5>
                                <table class="table table-striped table-hover">
                                    <tr>
                                        <th width="50%"></th>
                                        <th>This Year</th>
                                        <th>Last 30 Days </th>
                                    </tr>
                                    <tr>
                                        <td>Students Logged In</td>
                                        <td>`+data.thisyearlogin+`/`+data.totalCount+` (`+data.yearpercent+`) %</td>
                                        <td>`+data.thisMonthlogin+`/`+data.thisMonthCount+` (`+data.monthpercent+`) %</td>
                                    </tr>
                                    <tr>
                                        <td>Total Time</td>
                                        <td>`+data.total_time_month+`</td>
                                        <td> `+data.total_time_year+`</td>
                                    </tr>
                                    <tr>
                                        <td>Average Time Per Active Student</td>
                                        <td>`+data.activetimePerStudentYear+`</td>
                                        <td>`+data.activetimePerStudentLast+`</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>Last Year's Time</td>
                                        <td> `+data.lastyear+`</td>
                                        <td></td>
                                    </tr>
                                </table></div>`;
             $('#student_statistics').html(st_statistics);
}

var setMainConcepts = function (data){

            var main_contacts = `<div><h5 class="breadcrumb text-dark">Main Contacts</h5>
                                <table class="table table-striped table-hover">
                                    <tr>
                                        <th width="60%">Position</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                    </tr>
                                    <tr>
                                        <td>Head Teacher</td>
                                        <td>n/a</td>
                                        <td>n/a</td>
                                    </tr>

                                    <tr>
                                        <td>Data Manager</td>
                                        <td>`+data.name+`</td>
                                        <td>`+data.email+`</td>
                                    </tr>
                                    <tr>
                                        <td>Valid Date Till </td>
                                        <td>`+data.valid_till+`</td>
                                        <td>`+data.valid_till+`</td>
                                    </tr>
                                </table>
                                </div>`;
            $('#main_contacts_school_view').html(main_contacts);
}

var setTeacherStatistics = function (data){
            var tr_statistics= `<div><h5 class="breadcrumb text-dark">Teacher Statistics</h5>
                                <table class="table table-striped table-hover">
                                    <tr>
                                        <th width="60%"></th>
                                        <th>This Year</th>
                                        <th>Last 30 Days</th>
                                    </tr>
                                    <tr>
                                        <td>Teachers Logged In</td>
                                       <td>`+data.thisyearlogin+`/`+data.totalCount+` (`+data.yearpercent+`) %</td>
                                        <td>`+data.thisMonthlogin+`/`+data.thisMonthCount+` (`+data.monthpercent+`) %</td>
                                   </tr>
                                   <tr>
                                       <td>Quizzes Created</td>
                                       <td>`+data.quizcreatethisyear+`</td>
                                       <td>`+data.quizcreatelastDays+`</td>
                                   </tr>
                                   <tr>
                                        <td>Assignments Created</td>
                                        <td>`+data.assignmentcreatethisYear+`</td>
                                        <td>`+data.assignmentcreatelastDays+`</td>
                                    </tr>
                                </table></div>`;
            $('#teacher_statistics').html(tr_statistics);
}

var setYearStatistics = function (data){

            var year_statistics= `<div><h5 class="breadcrumb text-dark">Year Statistics</h5>
                                    <table class="table table-striped table-hover">
                                        <tr>
                                            <th width="45%"></th>
                                            <th>Logins</th>
                                            <th>Last 30 Days</th>
                                            <th>Total</th>
                                        </tr>`;
                                        data.forEach(function (row) {
                    year_statistics += `<tr>
                                          <td>`+row.name+`</td>
                                          <td>`+row.total_time_year+`/`+row.student_count+` (`+row.student_percent+`%)</td>
                                          <td>`+row.total_time_month+`</td>
                                          <td>`+row.total_time+`</td>
                                        </tr>`;
                                        });

            year_statistics += `</table></div>`;
            $('#year_statistics_data').html(year_statistics);
}

var setDepertmentChart = function(data){
    if (document.getElementById('depertment-doughnut-chart')) {
        if(!jQuery.isEmptyObject(data)){
            lebels_arr 	= new Array();
            data_arr 	= new Array();
            color_arr 	= new Array();
            $.each(data, function(subject,options){
                lebels_arr.push(subject);
                data_arr.push(parseFloat(options['data']));
                color_arr.push(options['color']);
            });
        }

        var deptOptions = {
            type: 'doughnut',
            data: {
                datasets: [{
                    data: data_arr,
                    backgroundColor: color_arr,
                    label: 'Dataset 1'
                }],
                labels: lebels_arr
            },
            options: {
                responsive: true,
                legend: {
                    position: 'top',
                },
                title: {
                    display: false,
                    text: 'Chart.js Doughnut Chart'
                },
                animation: {
                    animateScale: true,
                    animateRotate: true
                }
            }
        };
        var ctx33 = document.getElementById('depertment-doughnut-chart').getContext('2d');
        window.myDoughnut = new Chart(ctx33, deptOptions);
    }
}

var setYearChart = function(data){
    if (document.getElementById('year-doughnut-chart')) {
        if(!jQuery.isEmptyObject(data)){
            lebels_arr 	= new Array();
            data_arr 	= new Array();
            color_arr 	= new Array();
            $.each(data, function(subject,options){
                lebels_arr.push(subject);
                data_arr.push(parseFloat(options['data']));
                color_arr.push(options['color']);
            });
        }
        var deptOptions = {
            type: 'doughnut',
            data: {
                datasets: [{
                    data: data_arr,
                    backgroundColor: color_arr,
                    label: 'Dataset 1'
                }],
                labels: lebels_arr
            },
            options: {
                responsive: true,
                legend: {
                    position: 'top',
                },
                title: {
                    display: false,
                    text: 'Chart.js Doughnut Chart'
                },
                animation: {
                    animateScale: true,
                    animateRotate: true
                }
            }
        };
        var ctx33 = document.getElementById('year-doughnut-chart').getContext('2d');
        window.myDoughnut = new Chart(ctx33, deptOptions);
    }
}

var setIndependentChart = function(data){
    if (document.getElementById('independent-chart')) {

        if(!jQuery.isEmptyObject(data)){
            series_arr = new Array();
            $.each(data['monthsTimeData'], function(month,monthTime){
                let montimedataArr = new Array();
                $.each(monthTime, function(key, montimedata){
                    montimedataArr.push(parseFloat(montimedata));
                });
                let year_option_arr = {
                    'name': month,
                    'data':montimedataArr
                };
              series_arr.push(year_option_arr);
            });
        }

        var options = {
            series: series_arr,
            /*series: [{
                name: 'PRODUCT A',
                data: [44, 55, 41, 67, 22, 43]
              }, {
                name: 'PRODUCT B',
                data: [13, 23, 20, 8, 13, 27]
              }, {
                name: 'PRODUCT C',
                data: [11, 17, 15, 15, 21, 14]
              }, {
                name: 'PRODUCT D',
                data: [21, 7, 25, 13, 22, 8]
              }],*/
            chart: {
            type: 'bar',
            height: 350,
            stacked: true,
            toolbar: {
              show: false
            },
            zoom: {
              enabled: true
            }
          },
          responsive: [{
            breakpoint: 480,
            options: {
              legend: {
                position: 'bottom',
                offsetX: -10,
                offsetY: 0
              }
            }
          }],
          plotOptions: {
            bar: {
              horizontal: false,
              borderRadius: 10
            },
          },
          xaxis: {
            type: 'category',
            categories: data['monthArr'],
          },
          legend: {
            position: 'right',
            offsetY: 40
          },
          fill: {
            opacity: 1
          }
          };
        var chart = new ApexCharts(document.querySelector("#independent-chart"), options);
        chart.render();
    }
}

var loadSchoolDashboard = function(){
    $.ajax({
        url: url+'/school-dashboard-content/'+$('#select_report_period').val(),
        cache: false,
        success: function(response){
            var response 	= JSON.parse(response);
            var data		= response['data'];
            if(typeof data['deptChartData'] !== 'undefined') setDepertmentChart(data['deptChartData']);
            if(typeof data['yearChartData'] !== 'undefined') setYearChart(data['yearChartData']);
            if(typeof data['indepenedentData'] !== 'undefined') setIndependentChart(data['indepenedentData']);
            if(typeof data['studentStatistics'] !== 'undefined') setStudentStatistics(data['studentStatistics']);
            if(typeof data['teacherStatistics'] !== 'undefined') setTeacherStatistics(data['teacherStatistics']);
            if(typeof data['yearStatistics'] !== 'undefined') setYearStatistics(data['yearStatistics']);
            if(typeof data['mainconcepts'] !== 'undefined') setMainConcepts(data['mainconcepts']);
        }
    });
}

function setSchool(){
    var id = $('#school_id').val();

    $.ajax({
        url: url + '/report-all/'+id,
        cache: false,
        success: function (response) {
            var response = JSON.parse(response);
            var data = response['data'];
            var reportDashboardHtml = '';

             reportDashboardHtml +=`<div class="row">
                            <div class="col-md-3">
                                <div class="card mb-3 bg-primary widget-chart text-white card-border">`;
                if(data == 0){
                    reportDashboardHtml +=`<a href="`+url+`/admin-school-overview" style="text-decoration: none; color: #fff;">`;
                }else {
                    reportDashboardHtml +=`<a href="`+url+`/school-overview" style="text-decoration: none; color: #fff;">`;
                }
                reportDashboardHtml +=`<div class="icon-wrapper icon-wrapper-custom rounded-circle">
                                        <div class="icon-wrapper-bg bg-white opacity-1"></div>
                                        <i class="lnr-apartment text-white"></i></div>
                                    <div class="widget-numbers widget-numbers-custom">School</div>
                                    <div class="widget-subheading"> Overview</div>
                                    <div class="widget-description text-success">

                                        <span class="pl-1">&nbsp;</span>
                                    </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card mb-3 bg-warning widget-chart text-white card-border">
                                    <a href="`+url+`/student-usage" style="text-decoration: none; color: #fff;">
                                    <div class="icon-wrapper icon-wrapper-custom rounded-circle">
                                        <div class="icon-wrapper-bg bg-white opacity-2"></div>
                                        <i class="lnr-users text-white"></i></div>
                                    <div class="widget-numbers widget-numbers-custom">Student</div>
                                    <div class="widget-subheading"> Usage</div>
                                    <div class="widget-description text-white"> <span class="pl-1">&nbsp;</span> </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card mb-3 bg-success widget-chart text-white card-border">
                                    <a href="`+url+`/subject-report" style="text-decoration: none; color: #fff;">
                                        <div class="icon-wrapper icon-wrapper-custom rounded-circle">
                                            <div class="icon-wrapper-bg bg-white opacity-10"></div>
                                            <i class="lnr-book text-success"></i></div>
                                        <div class="widget-numbers widget-numbers-custom">Subject</div>
                                        <div class="widget-subheading">Report</div>
                                        <div class="widget-description text-white"> <span class="pl-1">&nbsp;</span> </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card mb-3 bg-focus widget-chart text-white card-border">
                                    <a href="`+url+`/report-week-days" style="text-decoration: none; color: #fff;">
                                    <div class="icon-wrapper icon-wrapper-custom rounded-circle">
                                        <div class="icon-wrapper-bg bg-white opacity-5"></div>
                                        <i class="lnr-sun text-white"></i></div>
                                    <div class="widget-numbers widget-numbers-custom">7 Day</div>
                                    <div class="widget-subheading">Report</div>
                                    <div class="widget-description text-white"> <span class="pl-1">&nbsp;</span> </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card mb-3 bg-danger widget-chart text-white card-border">
                                    <a href="`+url+`/assignments-report" style="text-decoration: none; color: #fff;">
                                    <div class="icon-wrapper icon-wrapper-custom rounded-circle">
                                        <div class="icon-wrapper-bg bg-white opacity-2"></div>
                                        <i class="lnr-pencil text-white"></i></div>
                                    <div class="widget-numbers widget-numbers-custom">Assignment</div>
                                    <div class="widget-subheading">Report</div>
                                    <div class="widget-description text-white"><span class="pl-1">&nbsp;</span>
                                    </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card mb-3 bg-info widget-chart text-white card-border">
                                    <a href="`+url+`/monthly-report" style="text-decoration: none; color: #fff;">
                                    <div class="icon-wrapper icon-wrapper-custom rounded-circle">
                                        <div class="icon-wrapper-bg bg-focus opacity-5"></div>
                                        <i class="lnr-calendar-full text-white"></i></div>
                                    <div class="widget-numbers widget-numbers-custom">Monthly</div>
                                    <div class="widget-subheading"> Report</div>
                                    <div class="widget-description text-white"><span class="pl-1">&nbsp;</span>
                                    </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card mb-3  bg-plum-plate widget-chart text-white card-border">
                                    <a href="`+url+`/assignments-attempts-report" style="text-decoration: none; color: #fff;">
                                    <div class="icon-wrapper  icon-wrapper-custom rounded-circle">
                                        <div class="icon-wrapper-bg bg-focus opacity-5"></div>
                                        <i class="lnr-history text-white"></i></div>
                                    <div class="widget-numbers widget-numbers-custom">Assignments</div>
                                    <div class="widget-subheading"> Attempts</div>
                                    <div class="widget-description text-white"><span class="pl-1">&nbsp;</span>
                                    </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="card mb-3 bg-info widget-chart text-white card-border">
                                    <a href="`+url+`/top-student-report" style="text-decoration: none; color: #fff;">
                                    <div class="icon-wrapper icon-wrapper-custom rounded-circle">
                                        <div class="icon-wrapper-bg bg-dark opacity-5"></div>
                                        <i class="lnr-graduation-hat text-white"></i></div>
                                    <div class="widget-numbers widget-numbers-custom">Top Student</div>
                                    <div class="widget-subheading">Report</div>
                                    <div class="widget-description text-white"><span class="pl-1">&nbsp;</span>
                                    </div>
                                </div>
                            </div>
                        </div>`;
            $("#report_overview").html(reportDashboardHtml);

        }
    });
}
$("#school_id").trigger('change')







