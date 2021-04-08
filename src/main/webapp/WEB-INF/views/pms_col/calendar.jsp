<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Insert title here</title>

<link rel="apple-touch-icon" href="../icon/touch-icon-iphone.png" /> 
<link rel="apple-touch-icon" sizes="76x76" href="../icon/touch-icon-ipad.png" /> 
<link rel="apple-touch-icon" sizes="120x120" href="../icon/touch-icon-iphone-retina.png" />
<link rel="apple-touch-icon" sizes="152x152" href="../icon/touch-icon-ipad-retina.png" />
<link rel="shortcut icon" type="image/x-icon" href="../icon/favicon.ico" />

<link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="../css/font-awesome-4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" href="../jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.css"/>
<link href="../css/helper.css" rel="stylesheet" />
<link href="../css/style.css" rel="stylesheet" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="/fullcld_lib/main.css" rel="stylesheet">
<script src="/fullcld_lib/main.js"></script>
<script src="/fullcld_lib/locales-all.js"></script>
<script>
document.addEventListener('DOMContentLoaded', function() {
	var calendarEl = document.getElementById('calendar');
	var calendar = new FullCalendar.Calendar(calendarEl, {
		headerToolbar : {
			left : 'prev,next today',
			center : 'title',
			right : 'dayGridMonth,timeGridWeek,timeGridDay'
		},
  		initialView: 'dayGridMonth',
  		locale : 'ko',
  		selectable: true,
  		selectMirror: true,
		events: function(info, successCallback, failureCallback) {
			$.ajax({
				url: '/calendar/callAllCalendar',
				type: 'POST',
				dataType: 'json',
				success: function(data) {
					successCallback(
						$.each(data.AllList, function(i, vo){
							[{ title : vo.title, start : vo.start, end : vo.end }]
						})
					)
				}
			})
		},
  		
  		dayMaxEventRows : true,
  		views : {
  			timeGrid : {
  				dayMaxEventRows : 5
  			}
  		},
  		eventClick : function(info){
  			var startSt = info.event.startStr.split("T");
  			var endSt = info.event.endStr.split("T");
  			$('#schdTitle').html(info.event.title);
  			$('#workStartDate').html(startSt[0] + " 부터");
  			if(info.event.end){
				$('#workEndDate').html(endSt[0] + " 까지");
  			}
  			$('#schdDetailLayerPopup').css({ "top": info.jsEvent.pageY ,"left": info.jsEvent.pageX , "position": "absolute" }).show();
  		}
	});
	
	calendar.render();
});

</script>

<style>
button, a {
    cursor: pointer;
}
.schedulePop {
    position: absolute;
    width: 420px;
    background-color: #fff;
    border-radius: 6px;
    border: 1px solid rgba(0, 0, 0, 0.15);
    box-shadow: 0 0 10px 0 rgb(0 0 0 / 10%);
    box-sizing: border-box;
    font: inherit;
}
.schedulePop .top-box {
    padding: 0 15px;
}
.schedulePop.type2 .top {
    padding-top: 25px;
    padding-bottom: 10px;
}
.schedulePop .top {
    position: relative;
    padding-left: 8px;
    min-height: 90px;
    border-bottom: 1px solid #ebebeb;
    box-sizing: border-box;
}
.popClose {
    display: block;
    position: absolute;
    top: 0;
    right: -15px;
    width: 42px;
    height: 42px;
    background: url(../img/logo.png) no-repeat center center;
}
.blind {
    position: absolute;
    overflow: hidden;
    clip: rect(0 0 0 0);
    width: 1px;
    height: 1px;
    margin: -1px;
    visibility: hidden;
    text-indent: -9999999px;
    font-size: 0;
    line-height: 0;
}
.schedulePop .top h1 {
    line-height: 32px;
    padding-right: 28px;
    font-size: 22px;
    color: #111;
    font-weight: 500;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}
.item.color1 {
    background-color: #4aaefb;
}
.schedulePop .top h2 {
    max-width: 260px;
    line-height: 28px;
    padding-right: 15px;
    font-size: 14px;
    color: #969696;
    font-weight: 400;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}
.detailView {
    position: absolute;
    bottom: 14px;
    right: 0;
    display: inline-block;
    font-size: 14px;
    color: #505050;
    text-align: center;
    border: 1px solid #c8c9cb;
    border-radius: 4px;
    padding: 2px 7px;
}
.schedulePop .cont {
    padding: 16px 25px;
    min-height: 90px;
    line-height: 24px;
    font-size: 14px;
    color: #393a3c;
    box-sizing: border-box;
}
.schedulePop .cont > div {
    position: relative;
    text-overflow: ellipsis;
    white-space: nowrap;
    margin-bottom: 3px;
    overflow: hidden;
}
.schedulePop .ft {
    border-top: 1px solid #ebebeb;
    padding: 10px 0;
    text-align: center;
}
.schedulePop .top .item {
    display: inline-block;
    vertical-align: top;
    padding: 0 7px;
    margin-top: 4px;
    margin-right: 5px;
    height: 25px;
    line-height: 25px;
    font-size: 20px;
    color: #fff;
    font-weight: 700;
    border-radius: 4px;
}
.blind {
    position: absolute;
    overflow: hidden;
    clip: rect(0 0 0 0);
    width: 1px;
    height: 1px;
    margin: -1px;
    visibility: hidden;
    text-indent: -9999999px;
    font-size: 0;
    line-height: 0;
}
.schedulePop .cont div#worker:before {
	content: "";
	background-image: url("../img/1.png");
    background-position: -2px -47px;
    display: inline-block;
    vertical-align: middle;
    width: 16px;
    height: 16px;
    margin-top: 5px;
    margin-right: 5px;
    background-repeat: no-repeat;
    vertical-align: top;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
	<div class="wrapper">
	
	<%@ include file="/WEB-INF/views/common/left.jsp" %>
	
		<div id='calendar'></div>
	</div>
	
	<div id="schdDetailLayerPopup" class="schedulePop type2" style="z-index: 1000; top: 672px; left: 233px; position: fixed; display: none;">
		<div class="top-box">
			<div class="top">
				<a id="closeSchdDetailLayerPopup" class="popClose" onclick="this.parentNode.parentNode.parentNode.style.display = 'none'"><span class="blind">팝업 닫기</span></a>
				<h1 class="font-Noto"><span id="taskStts" class="item color1" style="display: inline-block;">요청</span><span id="schdTitle" title="test">test</span></h1>
				<h2 id="schdPrjTitle" style="display: block;">ddttest</h2>
				<a id="goToSchdPost" class="detailView">글 바로보기</a>
			</div>
		</div>
		<div class="cont">
			<div id="dateTime" style="display: none;">2021.02.11 (목)</div>
			<div id="workStartDate" style="display: block;"></div>
			<div id="workEndDate" style="display: block;"></div>
			<div id="worker" style="display: block;">이연승, 전영헌</div>	
			<div id="schdMemo" style="display: block;"></div>
		</div>
	</div>
	
</body>
</html>