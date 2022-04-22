$("#show_subject_students_report").on('click',function(event){
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
    student_reports_datatable = $('#student_reports_table').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/portal/student-reports",
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
            {data: 'total_time', className: "text-center"},
            {data: 'avg_score', className: "text-center"},
        ],


    });


});
$('#show_subject_students_report').trigger('click');

$("#show_quiz_status_report").on('click',function(event){
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

    quiz_datatable = $('#quiz_report').DataTable({
        destroy: true,
        dom: 'Bfrtip',
        "order": [[ 0, 'desc' ]],
        "processing": true,
        "serverSide": false,
        "ajax": {
            "url" : url+"/portal/quiz-report/"+id,
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


});
$('#show_quiz_status_report').trigger('click');


// Notices
notice_datatable = $('#notice_table').DataTable({
    destroy: true,
    "order": [[0, 'desc']],
    "processing": true,
    "serverSide": false,
    "ajax": url + "/portal/noticelist",
    "aoColumns": [
        { mData: 'title' },
        { mData: 'notice_category_id' },
        { mData: 'notice_date' },
        { mData: 'expire_date' },

        { mData: 'actions', className: "text-left" },
    ],
    "columnDefs": [
    ],
});

noticeView = function noticeView(id) {
    $.ajax({
        url: url + '/portal/notice-details/' + id,
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

