 adminSchoolOverview = function adminSchoolOverview(){
    $.ajax({
        url: url+'/admin-school-overview-ajax',
        cache: false,
        success: function(response){
            var response 	= JSON.parse(response);
            var data		= response['schoolData'];

            var  schoolData = '';
            data.forEach(function (row) {
                schoolData +=`<tr>
                                 <td class="text-center" style="width: 80px;">`;
                if(row.logo != ""){
                    schoolData +=`  <img class="rounded-circle" src="`+url+`/assets/images/school-logo/`+row.logo+`" alt="" width="40">`;
                } else {
                    schoolData +=` <img className="rounded-circle"
                                          src="`+url+`/assets/images/school-logo/no_image.png" alt="" width="40">`;
                }
                schoolData +=`</td>
                                 <td class="text-left"><a href="`+url+`/school-overview-report/`+row.id+`">`+row.name+`</a></td>
                                 <td class="text-center"><b>`+row.total_students+`</b></td>
                                 <td class="text-center"><b>`+row.total_teachers+`</b></td>
                                 <td class="text-center"><b>`+row.total_quizes+`</b></td>
                                 <td class="text-left">
                                  <div class="badge badge-pill badge-danger">`+row.agv_time+`</div>
                                 </td>
                                 <td class="text-center" style="width: 200px;">
                                 <div class=" progress">
                                    <div class="progress-bar progress-bar-animated progress-bar-striped bg-success" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">`+row.avg_score+`%</div>
                                 </div>
                                 </td>
                                 </tr>`;
            });
            $('#adminSchoolOverview').html(schoolData);
        }
    });
}
 adminSchoolOverview();
