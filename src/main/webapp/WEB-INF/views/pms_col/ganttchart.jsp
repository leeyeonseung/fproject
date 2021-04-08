<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script>

$(function(){
	$.ajax({
		url : '/gantt/addTask',
		type : 'post',
		success : function(res){
			console.log(res);
			console.log(res.tasklist);
			
			google.charts.load('current', {'packages':['gantt']});
			google.charts.setOnLoadCallback(drawChart);

			function daysToMilliseconds(days) {
				return days * 24 * 60 * 60 * 1000;
			}

			function drawChart() {
				
				var data = new google.visualization.DataTable();
				
				data.addColumn('string', 'Task ID');
				data.addColumn('string', 'Task Name');
				//data.addColumn('string', 'Resource');
				data.addColumn('date', 'Start Date');
				data.addColumn('date', 'End Date');
				data.addColumn('number', 'Duration');
				data.addColumn('number', 'Percent Complete');
				data.addColumn('string', 'Dependencies');
				
				
				
				for(var i=0; i < res.tasklist.length; i++){
					if(res.tasklist[i].jobclosde == null ){
						data.addRow([res.tasklist[i].jobnm
										, res.tasklist[i].jobnm
										//, null
										, new Date(res.tasklist[i].jobbgnde)
										, res.tasklist[i].jobclosde
										, daysToMilliseconds(1)
										, parseInt(res.tasklist[i].prgsdo)
										, res.tasklist[i].upperjobnm
									])
					}else{
						data.addRow([res.tasklist[i].jobnm
										, res.tasklist[i].jobnm
										//, null
										, new Date(res.tasklist[i].jobbgnde)
										, new Date(res.tasklist[i].jobclosde)
										, null
										, parseInt(res.tasklist[i].prgsdo)
										, res.tasklist[i].upperjobnm
									])
					}
				}
				
				var options = {
					height: 1500,
					gantt: {
						criticalPathEnabled: false,
						innerGridHorizLine: {
							stroke: '#ffe0b2',
							strokeWidth: 2
						},
						innerGridTrack: {fill: '#fff3e0'},
						innerGridDarkTrack: {fill: '#CCCCFF'},
						arrow: {
							angle:100,
							width: 5,
							color: 'green',
							radius: 10
						}
					}
				};
				
				var chart = new google.visualization.Gantt(document.getElementById('chart_div'));
				
				console.log(JSON.stringify(res.tasklist));
				
				chart.draw(data, options);
			}
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
	})
})
</script>
<style>
</style>
</head>
<body>
	<div id="chart_div"></div>
</body>
</html>