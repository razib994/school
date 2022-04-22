var user_id 		= $('#user_id').val();
var user_type 		= $('#user_type').val();
var url = $('.site_url').val();

const profile_image_url         = url+"/assets/images/user/admin";
const logo 						= url+"/assets/images/logo-inverse.png";
const payment_attachment_url 	= url+"/assets/images/payment/";
const expense_attachment_url 	= url+"/assets/images/notice/";
const school_logo_url 	        = url+"/assets/images/school-logo/";
$.ajaxSetup({
    headers:{
        'X-CSRF-TOKEN':$('meta[name="csrf-token"]').attr('content')
    }
});

$('.form').iCheck({
    checkboxClass: 'icheckbox_flat-green',
    radioClass	: 'iradio_flat-green'
});

$('.modal').on('hide.bs.modal', function (e) {
	clear_form();
  })

//$('.hamburger').trigger('click');

toastr.options = {
	"closeButton": true,
	"debug": false,
	"newestOnTop": true,
	"progressBar": true,
	"positionClass": "toast-top-right",
	"preventDuplicates": false,
	"onclick": null,
	"showDuration": "300",
	"hideDuration": "1000",
	"timeOut": "5000",
	"extendedTimeOut": "1000",
	"showEasing": "swing",
	"hideEasing": "linear",
	"showMethod": "fadeIn",
	"hideMethod": "fadeOut"
};

const editors = {};
function createEditor( elementId ) {
    return ClassicEditor
        .create( document.getElementById( elementId ) )
        .then( editor => {
            editors[ elementId ] = editor;
        } )
        .catch( err => console.error( err.stack ) );
}

printWindow =  function printWindow() {
	window.print();
}

// className: danger, success, info, primary, default, warning
function success_or_error_msg(div_to_show, class_name, message, field_id){
	$(div_to_show).addClass('alert alert-custom alert-'+class_name).html(message).show("slow");
	//$(window).scrollTop(200);
	var set_interval = setInterval(function(){
		$(div_to_show).removeClass('alert alert-custom alert-'+class_name).html("").hide( "slow" );
		if(field_id!=""){ $(field_id).focus();}
		clearInterval(set_interval);
	}, 5000);
}

function clear_form(){
    if($('.form').length>0){
        $('.form')[0].reset();
        $('.form').find('input[type=hidden]').each(function(){
            this.value = "";
        });
    }

}

$(document).ready(function () {
	// for get site url
	var url = $('.site_url').val();
	var page =1;

	$('.openDropdown').on('click', function (event) {
		event.stopPropagation();
		//$(this).toggleClass('open');
	});


	set_notification_time_out_fn = () =>{
        setTimeout(function(){
            loadNotifications();
        }, 7000);
    }

	view_notification = () =>{
		if($.trim($('#notificationCount').html()) != 0){
			$.ajax({
				url: url+"/notification/view/",
				type: 'GET',
				async: true,
			})
		}
	}

	reload_notification = () =>{
		if($.trim($('#notificationCount').html()) != 0){
			page =1;
			loadNotifications();
		}
	}

	loadNotifications = () =>{
		$.ajax({
			url: url+'/notifications/'+page,
			type:'GET',
			async:true,
			success: function(response){
				response 					= JSON.parse(response);
				totalUnreadNotifications	= response['totalUnreadNotifications'];
				html = '';
				$.each(response['notifications'], function (key, notification) {
					created_at =  new Date(notification.created_at).toLocaleDateString('en-US', {
					  day: '2-digit',
					  month: '2-digit',
					  year: '2-digit',
					  hour: '2-digit',
					  minute: '2-digit',
					});

					var read_status_class 	= (notification.read_at==null)?"alert-danger":"";
					html +=' <li class="'+read_status_class+'"> ' +
							'<a href="javascript:void(0)"> ' +
								/*'<span class="label label-primary"><i class="fa fa-user"></i></span> ' +*/
								'<span class="message"> '+notification.data.Message+'</span> ' +
								'<span class="time"> '+created_at+'</span> ' +
							'</a> ' +
							'</li>'

				})

				$('#notificationCount').html(totalUnreadNotifications)
				if(page ==0) {
                    $('#notification_list').html(html)
                }else {
                    $('#notification_list').append(html);
                }
				//console.log(response)

			}
		})
		page++;
		//set_notification_time_out_fn()
	}

	loadNotifications();

	loadMoreNotofication = () =>{
		loadNotifications();
	}

	loadAllNotofication = () =>{
		window.location.href = url+"/notification";
	}

});
$('#year_name').change(function(){
    $("#subject_name").empty();
    $("#topic_title").empty();
    var id = $(this).val();
    if(id){
        $.ajax({
            url: url+('/key-stage-class?key_stage_id=')+id,
            cache: false,
            success: function(response){
                var response = JSON.parse(response);
                var data = response['classe'];
                $('#class_name').empty();
                $('#class_name').append("<option value=''>Select Year</option>");
                data.forEach(function (row){
                    $("#class_name").append('<option value="'+row.id+'">'+row.name+' '+row.details+'</option>');
                });
            }
        })
    }
    else
    {
        $("#class_name").empty();

    }
});

$('#class_name').change(function(){
    $('select[name="topic_title"]').empty();
    var id = $(this).val();
    if(id){
        $.ajax({
            url: url+('/class_subject?class_id=')+id,
            cache: false,
            success: function(response){
                var response = JSON.parse(response);
                var data = response['classSubject'];
                jQuery('select[name="subject_name"]').empty();
                var subjects = '<option value="" disabled selected>Select Subject</option>';
                data.forEach(function (row){
                    subjects +='<option value="'+row.subjects.id+'">'+row.subjects.subject_name+' ('+row.subjects.subject_details+')</option>'
                });
                $('select[name="subject_name"]').html(subjects);
            }
        })
    }
    else
    {
        $('select[name="subject_name"]').empty();
    }

});

$('#subject_name').change(function(){
    var id = $(this).val();
    if(id){
        $.ajax({
            url: url+('/class-subject-topic?class_subject_topic_id=')+id,
            cache: false,
            success: function(response){
                var response = JSON.parse(response);
                var data = response['topics'];

                jQuery('select[name="topic_title"]').empty();
                var topic = '<option value="" disabled selected>Select Topic</option>';
                console.log(data);
                data.forEach(function (row){
                    topic +='<option value="'+row.id+'">'+row.topic_name+' '+row.topic_details+'</option>'
                });
                $('select[name="topic_title"]').html(topic);
            }
        })
    }
    else
    {
        $('select[name="topic_title"]').empty();
    }

});

// Notifications
$(document).ready(function () {
    // for get site url
    var page =1;
    var latestNotificationId ="";

    $('.openDropdown').on('click', function (event) {
        event.stopPropagation();
        //$(this).toggleClass('open');
    });


    set_notification_time_out_fn = () =>{
        setTimeout(function(){
           // loadNotifications('latest');
        }, 20000);
    }

    notificationSeen = (id) =>{
        totalUnreadNotifications =(totalUnreadNotifications>0)?(totalUnreadNotifications-1):totalUnreadNotifications;
        if($.trim($('#notificationCount').html()) != 0){
            $.ajax({
                url: url+"/notification/view/"+id,
                type: 'GET',
                async: true,
            })
        }
        $('#notificationCount').html(totalUnreadNotifications);
        if(totalUnreadNotifications == 0){
            $('#notification_span').removeClass('bg-success');
            $('#notification_span').addClass('bg-danger');
            $('#notification_i').removeClass('text-success');
            $('#notification_i').addClass('text-danger');
            $('#notification_span_badge').css('display','block');
        }
    }

    reload_notification = () =>{
        if($.trim($('#notificationCount').html()) != 0){
            page =1;
            loadNotifications();
        }
    }

    redirectCourseView = (batch_id) =>{
        window.location.href = url+"/portal/course/"+batch_id;
    }

    var totalUnreadNotifications = 0;
    loadNotifications = (typepage) =>{
        $.ajax({
            url: url+'/notifications/'+typepage,
            type:'GET',
            async:true,
            success: function(response){
                response 				= JSON.parse(response);
                totalUnreadNotifications= response['totalUnreadNotifications'];
                quizNotificationHtml = '';
                paymentotificationHtml 	= '';
                courseNotificationHtml 	= '';

                if(!jQuery.isEmptyObject(response)){
                    //$.each(response['notifications'], function (key, notification) {
                    for(var key =0; key < response['notifications'].length; key++){
                        var notification = 	response['notifications'][key];
                        var notificationId 		= notification.id;

                        if(latestNotificationId == notificationId) {
                            break;
                        }
                        if(typepage ==1 && key==0) latestNotificationId = notificationId;
                        var created_at          = new Date(notification.created_at).toLocaleDateString('en-US', {
                            day: '2-digit',
                            month: '2-digit',
                            year: '2-digit',
                            hour: '2-digit',
                            minute: '2-digit',
                        });
                        var read_status_class 	= (notification.read_at==null)?"danger":"success";
                        var read_status 		= (notification.read_at==null)?"unread":"read";
                        var seen_message_html 	= (notification.read_at==null)?"notificationSeen('"+notification.id+"')":"";

                        if(notification.data.Type == 'Quizzes'){
                            quizNotificationHtml +=`
							<div class="vertical-timeline-item vertical-timeline-element">
								<div><span class="vertical-timeline-element-icon bounce-in"><i class="badge badge-dot badge-dot-xl badge-`+read_status_class+`"> </i></span>
									<div class="vertical-timeline-element-content bounce-in `+read_status+`" style="cursor:pointer" onclick="studentView(`+notification.data.Id+`); `+seen_message_html+`"            >
										<p>`+notification.data.Message+`<br><span class="text-`+read_status_class+`">`+created_at+`</span></p><span class="vertical-timeline-element-date"></span>
									</div>
								</div>
							</div>
							`;
                        }
                        else if(notification.data.Type == 'Message Chatbox'){
                            paymentotificationHtml +=`
							<div class="vertical-timeline-item vertical-timeline-element">
								<div><span class="vertical-timeline-element-icon bounce-in" ><i class="badge badge-dot badge-dot-xl badge-`+read_status_class+`"> </i></span>
									<div class="vertical-timeline-element-content bounce-in `+read_status+`" style="cursor:pointer" onclick="paymentInvoice(`+notification.data.Id+`); `+seen_message_html+`">
										<a style="text-decoration: none;" href="`+url+`/message"><p>`+notification.data.Message+`<br><span class="text-`+read_status_class+`">`+created_at+`</span></p><span class="vertical-timeline-element-date"></span></a>
									</div>
								</div>
							</div>
							`;
                        }
                        else if(notification.data.Type == 'School Notice'){
                            courseNotificationHtml +=`
							<div class="vertical-timeline-item vertical-timeline-element">
								<div><span class="vertical-timeline-element-icon bounce-in" ><i class="badge badge-dot badge-dot-xl badge-`+read_status_class+`"> </i></span>
									<div class="vertical-timeline-element-content bounce-in `+read_status+`" style="cursor:pointer" onclick="noticeView(`+notification.data.Id+`); `+seen_message_html+`">
										<p >`+notification.data.Message+`<br><span class="text-`+read_status_class+`">`+created_at+`</span></p><span class="vertical-timeline-element-date"></span>
									</div>
								</div>
							</div>`;
                        }
                    }//)

                    $('#notificationCount').html(totalUnreadNotifications);
                    $('#dropdown_notification_count').html(totalUnreadNotifications);

                    if(totalUnreadNotifications>0){
                        $('#notification_span').removeClass('bg-success');
                        $('#notification_span').addClass('bg-danger');
                        $('#notification_i').removeClass('text-success');
                        $('#notification_i').addClass('text-danger');
                        $('#notification_span_badge').css('display','block');
                    }
                    if(typepage ==1){
                        if($('#quiz_notification_div').length >0)
                            $('#quiz_notification_div').html(quizNotificationHtml);
                        if($('#notice_notification_div').length >0)
                            $('#notice_notification_div').html(courseNotificationHtml);

                        $('#message_notification_div').html(paymentotificationHtml);
                    }
                    else{
                        if($('#quiz_notification_div').length >0)
                            $('#quiz_notification_div').append(quizNotificationHtml);
                        if($('#notice_notification_div').length >0)
                            $('#notice_notification_div').append(courseNotificationHtml);

                        $('#message_notification_div').append(paymentotificationHtml);
                    }
                    //console.log(response)
                    $('.unread').on('click', function () {
                        $(this).children().children().removeClass('text-danger');
                        $(this).children().children().addClass('text-success');
                        $(this).prev().children().removeClass('badge-danger');
                        $(this).prev().children().addClass('badge-success');
                    });
                    //page++;
                }
            }
        })
        set_notification_time_out_fn();
    }

    loadNotifications(page);

    loadMoreNotofication = () =>{
        page++;
        loadNotifications(page);
    }

    loadAllNotofication = () =>{
        window.location.href = url+"/profile?tab=notification";
    }

});


