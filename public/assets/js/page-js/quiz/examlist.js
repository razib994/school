$(document).ready(function () {
    exanList = function exanList() {
        $.ajax({
            url: url + '/portal/exam-lists/',
            cache: false,
            success: function (response) {
                var response = JSON.parse(response);
                var data = response['quizStudentassignment'];
                var quizStudentSubject = "";
                quizStudentSubject += `<div class="no-gutters row mb-4" style="border-bottom: 1px solid #ddd;">
                         </div>`
                var sum = 0;
                var total_score = 0;
                data.forEach(function (row) {
                    sum = sum + row.quiz_numbers;
                    total_score = total_score + row.score;
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
                                                    <div class="widget-heading">` + row.title + ` (` + available_from + ` - ` + deadlineformat + `)</div>
                                                    <div class="widget-subheading opacity-10">
                                                        <span class="pr-2">Total Quiz <b class="badge badge-warning"> ` + row.quiz_numbers + ` </b></span>
                                                        <span>Total Attened Quiz <b class="badge badge-success">` + row.total_attend + `</b></span>
                                                    </div>
                                                </div>
                                                <div class="widget-content-right mr-3">
                                                        <span> ` + ((row.is_exam == 'Yes') ? '<strong class="badge badge-success">Exam</strong>' : '') + ` </span>
                                                </div>
                                                <div class="widget-content-right mr-3">
                                                        <span> <strong>` + (row.score).toFixed(2) + `% </strong></span>
                                                </div>
                                                <div class="widget-content-right">
                                                    <div role="group" class="btn-group-sm btn-group"> </div> </div>
                                                <div class="widget-content-right">`;
                    if (moment().format('YYYY-MM-DD') > deadlineformat) {
                        quizStudentSubject += `<a  href="` + url + `/portal/assignments/quizzes/` + row.assignment_id + `" class=" btn btn-primary btn-lg pt-3 pb-3 mains" ><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Result </a>`;
                    } else {
                        if (row.completed_status == 'No') {
                            quizStudentSubject += `<a  href="` + url + `/portal/assignments/quizzes/` + row.assignment_id + `" class=" btn btn-primary btn-lg pt-3 pb-3 mains mr-2" ><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Attend </a>`;
                        } else {
                            quizStudentSubject += `<a  href="` + url + `/portal/assignments/quizzes/` + row.assignment_id + `" class=" btn btn-primary btn-lg pt-3 pb-3 mains mr-2" ><i class="fa fa-fw" aria-hidden="true" title="Copy to use arrow-circle-right"></i> Result </a>`;
                        }
                    }
                    quizStudentSubject += `</div>
                                            </div>
                                        </div>
                                    </li> </ul></div>`;
                });
                var avr_score = (total_score / data.length);
                var persubjectSocre = '';
                if (avr_score == 'NaN') {
                    persubjectSocre = 0.00;
                } else {
                    persubjectSocre = avr_score;
                }
                $("#total_assigment_quiz").html(sum)
                $("#total_assignment_score").html(persubjectSocre.toFixed(2))
                $("#total_assigment").html(data.length)
                $("#quizStudentAssignment").html(quizStudentSubject);
            }
        });
    }
    exanList();
});
