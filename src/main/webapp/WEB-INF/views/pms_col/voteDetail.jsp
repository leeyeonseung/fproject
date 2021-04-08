<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Levo Admin Theme</title>

<link rel="apple-touch-icon" href="touch-icon-iphone.png" />
<link rel="apple-touch-icon" sizes="76x76" href="touch-icon-ipad.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="touch-icon-iphone-retina.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="touch-icon-ipad-retina.png" />
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

<!-- CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="/css/font-awesome-4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" href="/jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.css" />
<link href="/css/helper.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="/css/mypage.css" rel="stylesheet" />



</head>
<style>
td, th {
	text-align: center;
	
}
.title{
	display: inline-block;
}
.d_ve{
	display:inline-block;
	position: absolute;

}
.d_v{
	
/* 	position: absolute; */
/* 	display:inline-block; */
	left: 30%;
	height: 100%;
		 
}
.d_vv{
	display:inline-block;
}
.tt_count{
	display:inline-block;
	position: relative;
	left: 20%;
	
}
</style>
<script>
$(function(){

	
$("#voteDetailList").on("click",function(){
	
	
	var voteno =$("#voteno").text();
	console.log(voteno);

	var voarr = new Array();
	
	
	console.log(voarr);
	
	
	$.ajax({
		url:"/vote/votecheck",
		type:"get",
		dataType:"json",
		data:{
			"voteone":$('input:radio[name=voteone]:checked').val(),
			"voteno":voteno,
			"votelistno":$('input:radio[name=voteone]:checked').val()
		},
		error : function(xhr) {
			alert("상태 : " + xhr.status);
		},
		success: function(data){
			
			$('.title').empty();
			code="";
			$.each(data.voteDelist,function(i, v){

			code+='<div class="d_ve">    ';  
			code+='<label style="font-weight: bold;">'+v.votelistno +' .</label>';
			code+='<span style="margin-left:30px; margin-right: 10px;">'+v.votelist+'</span></div> ';
			code+=' <br>'; 
			code+=' <br>'; 

			});
			$('.title').append(code);
			
			code="";
			$.each(data.votecontlist,function(i, v1){
				code+='<div class="d_v">';
				code+='<div class="d_vv"><label style="font-weight: bold;">'+v1.novote +' 표</label></div>  ';
				code+=' <br>'; 
				code+=' <br>'; 
				code+='</div>';
				
			});
			$('.tt_count').append(code);
			
		}
	});
});
});

</script>


<body>

	<%@ include file="/WEB-INF/views/common/header.jsp"%>
<!-- 	<div class="wrapper"> -->
		<%@ include file="/WEB-INF/views/common/left.jsp"%>



		<section class="content">
			<header class="main-header clearfix">

				<div class="btn-group"></div>
			</header>
<!-- 			<div class="col-md-12"> -->
				
			
				
				<div class="col-md-8" style="margin-left: 150px; margin-top: 50px; font-size: 17px;">
			<article class="widget" style="background: linen;">
				<ul class="fix_info" style="margin-top:5%; margin-left: 30%;">
				
				
				<li>		
					<div class="usid_div" style="display: inline-block;">
					<label>투표번호:</label>
					<strong id="voteno">${param.voteno }</strong>
					</div>
				</li>
				<li>		
					<div class="usid_div" style="display: inline-block;">
					<label>제목:</label>
					<strong class="s_usid">${param.votethema }</strong>
					</div>
				</li>
				
				<li>		
					<div class="usernm_edit" style="display: inline-block;">
					<label>종료일시:</label>
					<strong id="usernm_strong">${param.voteendde }</strong>
					
					</div>					
				</li>
		
			</ul>
			<hr>
			
			<div class="title"style="margin-top:5%; margin-left: 5%; width:20%;">
			
<!-- 					<div> -->
				<c:forEach items="${voteDelist }" var="vote" varStatus="status">
					<label style="font-weight: bold;" id="votevotelistno"  data-votelistno="${vote.votelistno }">${vote.votelistno } </label>
					 <input id="rdoVoteone${status.count}" type="radio" class="voteone" name="voteone" value="${vote.votelistno }"> 
					<label for="rdoVoteone${status.count}" style="margin-left:5px; margin-right: 10px;">${vote.votelist }</label> 
					 <br>
					 <br>
				</c:forEach>
<!-- 					 </div> -->
				<div>
				   <input type="button" id="voteDetailList" class="btn btn-light2" value="전송" style="background: #444444; margin-left: 570px;">
				</div>
			</div>
			<div class="tt_count">
			</div>
			
		<div>
		<br><br><br>
		<strong>다른의견</strong>
		<br><br>
			<span>다른의견이있습니다</span><br><br>
			
			
		<input type="text" id="comentbox"/>
		
		<input type="button" id="comentBtn" value="입력" class="btn btn-light2"style="background: #444444;"/>
		
		
		</div>
			
			
		</article>
			</div> 
<!-- 			</div> -->

<!-- 			<div class="row"></div> -->
			<!-- /row -->
			<!-- <hr style="border:2px solid black;"> -->

		</section>
		<!-- /content -->

		<footer class="main-footer">
			<a class="back-top" href="#"><i class="pe-7s-angle-up-circle"></i></a>
			<p>2021 © hansome is yonghyun.</p>
		</footer>

<!-- 	</div> -->
	<!-- /wrapper -->






	<!-- Scripts -->
	<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="../js/jquery-ui.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<!-- <script type="text/javascript" src="../amcharts/amcharts.js"></script>
		<script type="text/javascript" src="../amcharts/serial.js"></script>
		<script type="text/javascript" src="../amcharts/pie.js"></script> -->
	<script type="text/javascript" src="../js/chart.js"></script>
	<script type="text/javascript" src="../js/map.js"></script>
	<script src="../jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="../jquery-jvectormap-1.2.2/jquery-jvectormap-us-aea-en.js"></script>

	<!-- <script type="text/javascript" src="../js/main.js"></script>  -->


</body>
</html>