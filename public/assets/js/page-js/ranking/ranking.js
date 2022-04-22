ranking = function ranking() {
    $.ajax({
        url: url + '/portal/ranking-list/',
        cache: false,
        success: function (response) {
            var response = JSON.parse(response);
            var data = response['data'];
            console.log(data);
            var rankingstudents = '';
            data.sort(function (row){
                rankingstudents += `<div class="col-lg-6 col-xl-4 col-md-4">
                                <div class="card mb-3 widget-content bg-premium-dark">
                                    <div class="widget-content-wrapper text-white">
                                    <div class="widget-content-left mr-2">
                                            <div class="widget-numbers text-warning"><span>`+row.number+`</span></div>
                                        </div>
                                        <div class="widget-content-left ml-2">
                                            <div class="widget-heading">`+row.name+`</div>
                                            <div class="widget-subheading">`+row.school_name+`</div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-warning"><span>`+row.marks+`%</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>`;
            });

            $('#result_ranking').html(rankingstudents);

        }
    })
}
ranking();
