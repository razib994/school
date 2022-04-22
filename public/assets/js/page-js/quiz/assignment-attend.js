$(document).ready(function () {

    assignmentSubject = function assignmentSubject(){
        $.ajax({
            url: url+'/portal/subject-assignment/',
            cache: false,
            success: function (response) {
                var response  = JSON.parse(response);
                var data  = response['quizStudentassignment'];
                var quizStudentSubject = "";
                quizStudentSubject +=`<div class="no-gutters row mb-4" style="border-bottom: 1px solid #ddd;">
                         </div>`
                var sum =0;
                var total_score = 0;
                data.forEach(function (row){
                    sum = sum +row.quiz_numbers;
                    total_score = total_score +row.score;
                    var available_from = moment(row.available_from).format('Y-MM-DD');
                    var deadlineformat = moment(row.deadline).format('Y-MM-DD');

                    // var date = new Date();
                    // var currentDate = date.getFullYear() + "-" + (date.getMonth()+1) + "-" + date.getDate();
                    // var dateline = (deadlineformat<currentDate) ? 'disabled':'';
                    // `+dateline+`
                    quizStudentSubject += `<div class="tab-pane show active mb-2" id="assignmentSubject" role="tabpanel">`
                                quizStudentSubject += `<ul class="list-group "> <li class="list-group-item element-block-example">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left mr-3">
                                                    <div class="widget-content-left"><i class="fa fa-fw text-success" style="font-size: 25px;" aria-hidden="true" title="Copy to use check-circle"></i></div>
                                                </div>
                                                <div class="widget-content-left flex2">
                                                    <div class="widget-heading">`+row.title+` (`+available_from+` - `+deadlineformat+`)</div>
                                                    <div class="widget-subheading opacity-10">
                                                        <span class="pr-2">Total Quiz <b class="badge badge-warning"> `+row.quiz_numbers+` </b></span>
                                                        <span>Total Attened Quiz <b class="badge badge-success">`+row.total_attend+`</b></span>
                                                    </div>
                                                </div>
                                                <div class="widget-content-right mr-3">
                                                        <span> `+((row.is_exam == 'Yes')?'<strong class="badge badge-success">Exam</strong>':'')+` </span>
                                                </div>
                                                <div class="widget-content-right mr-3">
                                                        <span> <strong>`+(row.score).toFixed(2)+`% </strong></span>
                                                </div>
                                                <div class="widget-content-right">
                                                    <div role="group" class="btn-group-sm btn-group"> </div> </div>
                                                <div class="widget-content-right">`;
                                                    if(moment().format('YYYY-MM-DD') > deadlineformat) {
                                                        quizStudentSubject += `<a  href="`+url+`/portal/assignments/quizzes/`+row.assignment_id+`" class=" btn btn-primary btn-lg pt-3 pb-3 mains" ><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Result </a>`;
                                                    } else {
                                                     if(row.completed_status == 'No'){
                                                         quizStudentSubject += `<a  href="`+url+`/portal/assignments/quizzes/`+row.assignment_id+`" class=" btn btn-primary btn-lg pt-3 pb-3 mains mr-2" ><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Attend </a>`;
                                                     } else {
                                                         quizStudentSubject += `<a  href="`+url+`/portal/assignments/quizzes/`+row.assignment_id+`" class=" btn btn-primary btn-lg pt-3 pb-3 mains mr-2" ><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Result </a>`;
                                                     }
                                                    }
                                                quizStudentSubject += `</div>
                                            </div>
                                        </div>
                                    </li> </ul></div>`;
                });
                var avr_score = (total_score/data.length);
                var persubjectSocre = '';
                if(avr_score == 'NaN'){
                    persubjectSocre = 0.00;
                }else {
                    persubjectSocre = avr_score;
                }
                $("#total_assigment_quiz").html(sum)
                $("#total_assignment_score").html(persubjectSocre.toFixed(2))
                $("#total_assigment").html(data.length)
                $("#quizStudentAssignment").html(quizStudentSubject);

            }
        });
    }
    assignmentSubject()

    assignmentQuizzes = function assignmentQuizzes() {
        var id = $("#assignment_id").val();
        $.ajax({
            url: url+'/portal/quiz-assignment/'+id,
            cache: false,
            success: function (response) {
                var response  = JSON.parse(response);
                var data  = response['quizAssignments'];
                var quizAttentCount  = response['quizAttentCount'];
                 var quizAssignment = "";
                 var quizzes_score = 0;
                    data.forEach(function (row) {
                        quizzes_score = quizzes_score +row.score
                        quizAssignment += `<ul class="list-group mb-3"> <li class="list-group-item ">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left mr-3">
                                                    <div class="widget-content-left">`
                    if (row.status == 'Start'){
                        quizAssignment += `<i class="fa fa-fw text-danger" style="font-size: 25px;" aria-hidden="true" title="Copy to use play-circle"></i>`
                    }else if(row.status == 'Running') {
                        quizAssignment += `<i class="fa fa-fw text-warning" style="font-size: 25px;" aria-hidden="true" title="Copy to use warning"></i>`
                    } else if(row.status == 'Finished'){
                        quizAssignment += `<i class="fa fa-fw text-success" style="font-size: 25px;" aria-hidden="true" title="Copy to use check-circle"></i>`
                    }
                                                    quizAssignment += `</div>
                                                </div>
                                                <div class="widget-content-left flex2">
                                                    <div class="widget-heading">`+row.quiz.title+`</div>
                                                    <div class="widget-subheading opacity-10">
                                                        <span class="pr-2">Total Questions <b class="badge badge-warning"> `+row.quiz.total_question+` </b></span>
                                                        <span>Total Marks  <b class="badge badge-success"> `+row.quiz.total_marks+`</b></span>
                                                    </div>
                                                </div>
                                                <div class="widget-content-right mr-3">
                                                    <span> <strong>`+(row.score).toFixed(2)+`% </strong></span>
                                                </div>
                                                <div class="widget-content-right">
                                                    <div role="group" class="btn-group-sm btn-group"> </div> </div>
                                                <div class="widget-content-right">`;
                                                    if(row.status == 'Start'){
                                                        quizAssignment += `<a href="`+url +'/portal/quizzes/attend/'+row.id+`"  class="btn btn-primary btn-lg pt-3 pb-3 mains"><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Attend</a>`
                                                    } else if(row.status == 'Running'){
                                                    quizAssignment += `<a href="`+url +'/portal/quizzes/attend/'+row.id+`"  class="btn btn-info btn-lg pt-3 pb-3 mains"><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Restart </a>`
                                                    } else if(row.status == 'Finished'){
                                                    quizAssignment += `<a href="`+url +'/portal/quizzes/attend/'+row.id+`"  class="btn btn-success btn-lg pt-3 pb-3 mains"><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Quiz Details </a>`
                                                    }
                        quizAssignment += `</div>
                                            </div>
                                        </div>
                                    </li> </ul>`
                })
                var avr_score = (quizzes_score/data.length)
                $("#attent_quizzes").html(quizAttentCount)
                $("#assignment_quizzes_score").html(avr_score.toFixed(2))
                $("#total_per_assignment_quiz").html(data.length)
                 $("#quizAssignments").html(quizAssignment);
            }
        });
    }
    assignmentQuizzes()

    assignmentSubjectid = function assignmentSubjectid(){
        var stuId = $("#student_id").val();
        $.ajax({
            url: url+'/admin/subject-assignment/'+stuId,
            cache: false,
            success: function (response) {
                var response  = JSON.parse(response);
                var data  = response['quizStudentassignment'];
                var quizStudentSubject = "";
                quizStudentSubject +=`<div class="no-gutters row mb-4" style="border-bottom: 1px solid #ddd;">
                         </div>`
                var sum =0;
                var total_score = 0;
                data.forEach(function (row){
                    sum = sum +row.quiz_numbers;
                    total_score = total_score +row.score;
                    var available_from = moment(row.available_from).format('Y-MM-DD');
                    var deadlineformat = moment(row.deadline).format('Y-MM-DD');
                    // var date = new Date();
                    // var currentDate = date.getFullYear() + "-" + (date.getMonth()+1) + "-" + date.getDate();
                    // var dateline = (deadlineformat<currentDate) ? 'disabled':'';
                    // `+dateline+`
                    quizStudentSubject += `<div class="tab-pane show active mb-2" id="assignmentSubject" role="tabpanel">`
                    quizStudentSubject += `<ul class="list-group "> <li class="list-group-item element-block-example">
                                        <div class="widget-content p-0">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left mr-3">
                                                    <div class="widget-content-left"><i class="fa fa-fw text-success" style="font-size: 25px;" aria-hidden="true" title="Copy to use check-circle"></i></div>
                                                </div>
                                                <div class="widget-content-left flex2">
                                                    <div class="widget-heading">`+row.title+` (`+available_from+` - `+deadlineformat+`)</div>
                                                    <div class="widget-subheading opacity-10">
                                                        <span class="pr-2">Total Quiz <b class="badge badge-warning"> `+row.quiz_numbers+` </b></span>
                                                        <span>Total Attened Quiz <b class="badge badge-success">`+row.total_attend+`</b></span>
                                                    </div>
                                                </div>
                                                <div class="widget-content-right mr-3">
                                                        <span> <strong>`+(row.score).toFixed(2)+`% </strong></span>
                                                </div>
                                                <div class="widget-content-right">
                                                    <div role="group" class="btn-group-sm btn-group"> </div> </div>
                                                <div class="widget-content-right">
                                                <a  href="`+url+`/portal/assignments/quizzes/`+row.assignment_id+`" class=" btn btn-primary btn-lg pt-3 pb-3 mains" ><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Show Quiz </a>
                                                </div>
                                            </div>
                                        </div>
                                    </li> </ul></div>`;
                });
                var avr_score = (total_score/data.length);
                var persubjectSocre = '';
                if(avr_score == 'NaN'){
                    persubjectSocre = 0.00;
                }else {
                    persubjectSocre = avr_score;
                }
                $("#total_assigment_quiz").html(sum)
                $("#total_assignment_score").html(persubjectSocre.toFixed(2))
                $("#total_assigment").html(data.length)
                $("#quizStudentAssignment").html(quizStudentSubject);

            }
        });
    }
    assignmentSubjectid()


   
})


