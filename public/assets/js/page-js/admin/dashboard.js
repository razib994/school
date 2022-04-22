var Index = function () {

	var setDashboardTotalStatisticsData = function(data){
		var total_statistics_div_html = `
			<div class="col-md-6 col-xl-3 p-2">
				<div class="widget-content card  bg-tempting-azure">
					<div class="widget-content-wrapper text-center" style="display: block">
						<div class="widget-content-right ml-0 mr-3">
							<div class="widget-numbers text-success">`+data['total_school']+`</div>
							<div class="widget-heading font-size-lg" style="font-weight: bold;">Total Schools</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-xl-3 p-2">
				<div class="widget-content card  bg-tempting-azure">
					<div class="widget-content-wrapper text-center" style="display: block">
						<div class="widget-content-right ml-0 mr-3">
							<div class="widget-numbers text-success">`+data['total_students']+`</div>
							<div class="widget-heading font-size-lg" style="font-weight: bold;">Total Students</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-xl-3  p-2">
				<div class="widget-content card  bg-tempting-azure">
					<div class="widget-content-wrapper text-center" style="display: block">
						<div class="widget-content-right ml-0 mr-3">
							<div class="widget-numbers text-success">`+data['total_avg_time']+`</div>
							<div class="widget-heading font-size-lg" style="font-weight: bold;">Average Time</div>
						</div>
<!--						<div class="widget-content-left">-->
<!--							<div class="widget-heading">Average Time</div>-->
<!--							<div class="widget-subheading">-->
<!--							</div>-->
<!--						</div>-->
					</div>
				</div>
			</div>
			<div class="col-md-6 col-xl-3  p-2">
				<div class="widget-content card bg-tempting-azure">
					<div class="widget-content-wrapper text-center" style="display: block">
						<div class="widget-content-right ml-0 mr-3">
							<div class="widget-numbers text-success">`+data['total_quiz']+`</div>
							<div class="widget-heading font-size-lg" style="font-weight: bold;">Total Quiz</div>
						</div>
<!--						<div class="widget-content-left">-->
<!--							<div class="widget-heading">Total Quiz</div>-->
<!--							<div class="widget-content-left">-->
<!--							<div class="widget-subheading">-->
<!--							</div>-->
<!--						</div>-->
<!--						</div>-->
					</div>
				</div>
			</div>`;
		$('#total_statistics_div').html(total_statistics_div_html);
	}

	var setDashboardBarchartData = function(data){
		if (document.getElementById('dashboard-chart')) {
			if(!jQuery.isEmptyObject(data)){
				lebels_arr 		= new Array();
				total_time_arr 	= new Array();
				avg_time_arr 	= new Array();
				$.each(data, function(month,times){
					lebels_arr.push(month);
					let times_arr = times.split('*');
					total_time_arr.push(parseInt(times_arr[0]));
					avg_time_arr.push(times_arr[1]);
				});
			}
			var barchartOptions = {
				chart: {
					height: 397,
					type: 'line',
					toolbar: {
						show: false,
					}
				},
				series: [{
					name: 'Total Time',
					type: 'column',
					data: total_time_arr,//[8000, 1200, 3000, 4000, 8000, 2200, 7000, 1000, 2100, 1000, 4000, 4500]
				}, {
					name: 'Average Time',
					type: 'line',
					data: avg_time_arr //[75, 12, 25, 40, 80, 13, 60, 10, 21, 01, 30, 45]
				}],
				stroke: {
					width: [0, 4]
				},
				labels: lebels_arr, //["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
				//labels: ['01 Jan 2001', '02 Jan 2001', '03 Jan 2001', '04 Jan 2001', '05 Jan 2001', '06 Jan 2001', '07 Jan 2001', '08 Jan 2001', '09 Jan 2001', '10 Jan 2001', '11 Jan 2001', '12 Jan 2001'],
				xaxis: {
					type: 'category'
				},
				yaxis: [{
					title: {
						text: 'Total Time',
					},

				}, {
					opposite: true,
					title: {
						text: 'Average Time'
					}
				}]

			};
			var dashboardBarChart = new ApexCharts(document.querySelector("#dashboard-chart"),barchartOptions);
            dashboardBarChart.render();
        }
	}

	var setDashboardActiveStudentsData = function(data){
		let last_month_percentage_html=`
			<div class="widget-content-outer">
				<div class="widget-content-wrapper">
					<div class="widget-content-left pr-2 fsize-1">
						<div class="widget-numbers mt-0 fsize-3 text-warning" ><span id="last_month_percentage_html">`+data.last_month+`</span>%</div>
					</div>
					<div class="widget-content-right w-100">
						<div class="progress-bar-xs progress">
							<div class="progress-bar bg-warning" role="progressbar" aria-valuenow="`+(parseInt(data.last_month))+`" aria-valuemin="0" aria-valuemax="100" style="width: `+(parseInt(data.last_month))+`%;"></div>
						</div>
					</div>
				</div>
				<div class="widget-content-left fsize-1">
					<div class="text-muted opacity-6">Last Month</div>
				</div>
			</div>`;
		$('#last_month_percentage_div').html(last_month_percentage_html);
		if (document.getElementById('active-student-chart')) {
			var radialChartOptions = {
				chart: {
					height: 350,
					type: 'radialBar',
					toolbar: {
						show: true
					}
				},
				plotOptions: {
					radialBar: {
						startAngle: -135,
						endAngle: 225,
						hollow: {
							margin: 0,
							size: '70%',
							background: '#fff',
							image: undefined,
							imageOffsetX: 0,
							imageOffsetY: 0,
							position: 'front',
							dropShadow: {
								enabled: true,
								top: 3,
								left: 0,
								blur: 4,
								opacity: 0.24
							}
						},
						track: {
							background: '#fff',
							strokeWidth: '67%',
							margin: 0, // margin is in pixels
							dropShadow: {
								enabled: true,
								top: -3,
								left: 0,
								blur: 4,
								opacity: 0.35
							}
						},

						dataLabels: {
							showOn: 'always',
							name: {
								offsetY: -10,
								show: true,
								color: '#888',
								fontSize: '17px'
							},
							value: {
								formatter: function (val) {
									return parseInt(val);
								},
								color: '#111',
								fontSize: '36px',
								show: true,
							}
						}
					}
				},
				fill: {
					type: 'gradient',
					gradient: {
						shade: 'dark',
						type: 'horizontal',
						shadeIntensity: 0.5,
						gradientToColors: ['#ABE5A1'],
						inverseColors: true,
						opacityFrom: 1,
						opacityTo: 1,
						stops: [0, 100]
					}
				},
				series: [data.this_month],
				stroke: {
					lineCap: 'round'
				},
				labels: ['Percent'],

			};
			var dashboardRadialChart = new ApexCharts(document.querySelector("#active-student-chart"),radialChartOptions);
            dashboardRadialChart.render();
        }
	}

	var setDashboardSchoolData = function(data){
		var school_table_html = ``;
		if(!jQuery.isEmptyObject(data)){
			$.each(data, function(i,school){
				let logo = (school['logo']!="")?school['logo']:'no_image.png';
				school_table_html +=`
					<tr>
						<td class="text-center" style="width: 80px;"><img width="40" class="rounded-circle" src="`+school_logo_url+logo+`" alt=""></td>
						<td class="text-left"><a href="`+url+`/school-overview-report/`+school['id']+`" >`+school['name']+`</a></td>
						<td class="text-center"><b>`+school['total_students']+`</b></td>
						<td class="text-center"><b>`+school['total_teachers']+`</b></td>
						<td class="text-center"><b>`+school['total_quizes']+`</b></td>
						<td class="text-left">
							<div class="badge badge-pill badge-danger">`+school['agv_time']+`</div>
						</td>
						<td class="text-center" style="width: 200px;">
							<div class=" progress">
								<div class="progress-bar progress-bar-animated progress-bar-striped bg-success" role="progressbar" aria-valuenow="`+school['avg_score']+`" aria-valuemin="0" aria-valuemax="100" style="width: `+school['avg_score']+`%;">`+school['avg_score']+`%</div>
							</div>


						</td>
					</tr>
				`;
			});
		}
		$('#school_table tbody').html(school_table_html);
	}

	var setDashboardLeaderSchoolData = function(data){
		var leader_school_table_html = ``;
		if(!jQuery.isEmptyObject(data)){
			$.each(data, function(i,school){
				leader_school_table_html +=`
					<tr class="`+school['color_code']+`">
						<td class="text-left"><a href="`+url+`/school-overview-report/`+school['id']+`"><span class="badge badge-pill badge-primary" >`+school['serial']+`</span> &nbsp; `+school['name']+`</a></td>
						<td class="text-center">
							<strong>`+school['total_time']+`</strong>
						</td>
					</tr>
				`;
			});
		}
		$('#leader_school_table tbody').html(leader_school_table_html);
	}

	return {
        init: function () {
			$.ajax({
				url: url+'/dashboard-content/'+$('#select_report_period').val(),
				cache: false,
				success: function(response){
					var response 	= JSON.parse(response);
					var data		= response['data'];
					if(typeof data['totalStatisticsData'] !== 'undefined') setDashboardTotalStatisticsData(data['totalStatisticsData']);
					if(typeof data['barchartData'] !== 'undefined') setDashboardBarchartData(data['barchartData']);
					if(typeof data['activeStudentsData'] !== 'undefined') setDashboardActiveStudentsData(data['activeStudentsData']);
					if(typeof data['schoolData'] !== 'undefined') setDashboardSchoolData(data['schoolData']);
					if(typeof data['leaderSchoolData'] !== 'undefined') setDashboardLeaderSchoolData(data['leaderSchoolData']);
				}
			});
        }
    };
}();

