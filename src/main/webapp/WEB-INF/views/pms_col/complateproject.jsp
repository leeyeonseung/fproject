<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Levo Admin Theme</title>

	<link rel="apple-touch-icon" href="/img/touch-icon-iphone.png" /> 
	<link rel="apple-touch-icon" sizes="76x76" href="/img/touch-icon-ipad.png" /> 
	<link rel="apple-touch-icon" sizes="120x120" href="/img/touch-icon-iphone-retina.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="/img/touch-icon-ipad-retina.png" />
	<link rel="shortcut icon" type="/image/x-icon" href="/img/favicon.ico" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="/css/font-awesome-4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
	<link rel="stylesheet" href="/jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.css"/>
	<link href="/css/helper.css" rel="stylesheet" />
	<link href="/css/style.css" rel="stylesheet" />

</head>
<style>
</style>
<script>
 $(function(){
	 $('.prj').on("click", '#fa1',function(){
		 //ajax를 써서 값이 바뀌면 cheked
		 console.log($(this).attr('class'))
		 if($(this).attr('class') == 'fa fa-star'){
			 
			 $(this).attr('class', 'fa fa-star-o');
			 
			 var prjctno =  $(this).parents().children("#prjctno").val();
			 console.log(prjctno)
			 location.href="${cp}/project/favorite?prjctno="+prjctno;
			 alert("즐겨찾기 해제")
			 
		 }else{
			 $(this).attr('class', 'fa fa-star');
			 
			 var prjctno = $(this).parents().children('#prjctno').val();
			 
			 location.href="${cp}/project/favoritepro?prjctno="+prjctno;
			 alert("즐겨찾기 추가")
		 }
		 
	 });
	 
 })
</script>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<div class="wrapper">
<%@ include file="/WEB-INF/views/common/left.jsp" %>
		
		<section class="content">
			<header class="main-header clearfix">
				<h1 class="main-header__title">
					<i class="icon pe-7s-home"></i>
					프로젝트 선택
				</h1>
			
			</header>
			
	
		<c:forEach items="${prolist1}" var="pro">
			<div class="col-md-3 col-sm-6 prj" onclick="location.href='#'">
				<form action="/project/modifybtnpro">
					<input type="hidden" id="prjctno" name="prjctno" value="${pro.prjctno }"/>
<%-- 		<c:if test="${pro.ctgry=='1'||pro.ctgry=='2'||pro.ctgry=='3' }"> --%>
					<article class="widget"<c:choose>
											<c:when test="${pro.prjctty==1 }">style="background: lightblue;border-radius: 15px;"</c:when>
											<c:when test="${pro.prjctty==2 }">style="background: lightpink;border-radius: 15px;"</c:when>
											<c:otherwise>style="background: lightgray;border-radius: 15px;"</c:otherwise>
										</c:choose>>				
						<header class="widget__header">
					
						<h3 class="widget__title" style="display: none;">${pro.prjctty}</h3>
						<c:set var="name" value="" />

							<c:if test="${pro.prjctty=='1'}">
							 <h2> 팀 프로젝트</h2>
							</c:if>
							<c:if test="${pro.prjctty=='2'}">
							    <h2>회사 프로젝트</h2>
							</c:if>
							<c:if test="${pro.prjctty=='3'}">
							   <h2>개인 프로젝트</h2> 
							</c:if>


						
						<div class="widget__config">
							<input type="submit" value="진행" id ="updatebtn"class="btn btn-violet" style="border-radius: 100px;" data-langcode="CLP1003"/>
						</div>
					</header>
				<div class="thumbnail">
				<div class="titlebox">
					<span id="TITLE">${pro.prjctnm }</span><br>
					<span id="officialProject" class="official-project">${pro.prjctcn }</span>
				</div>
				
					<span id="officialProject" class="official-project">
						시작일&emsp;:&emsp;<fmt:formatDate value="${pro.prjctcreatde}" pattern="yyyy-MM-dd"/> 
					</span>
					<br>
					<span id="officialProject" class="official-project">
						종료일&emsp;:&emsp; 
					</span>
				<section class="condibox_1">
					<div id="sendience-summary-info" class="parti"><span>${pro.membercnt}</span><span data-langcode="CC1785">명 참여중</span></div>
				</section>

					</div>
					
					<input type="button" value="선택" class="btn btn-violet" data-langcode="CLP1003"/>
					<c:if test="${pro.bkmkat =='1'}">						 
						<span class="fa fa-star" id="fa1" data-star="0" style="font-size: 40px; color : yellow; float:right;"></span>
					</c:if>
				
					<c:if test="${pro.bkmkat =='0'}">						 
						<span class="fa fa-star-o" id="fa1" data-star="0" style="font-size: 40px; color : yellow; float:right;"></span>
					</c:if>
					
					
						
				</article><!-- /widget -->
			</form>
<%-- 			</c:if> --%>

			</div> <!-- /col -->
		</c:forEach>
		
		

			<div class="row">
		
				</div> <!-- /row -->
				<!-- <hr style="border:2px solid black;"> -->


			</section> <!-- /content -->
			
			<footer class="main-footer">
				<a class="back-top" href="#"><i class="pe-7s-angle-up-circle"></i></a>
				<p>2021 © hansome is yonghyun.</p>
			</footer>

		</div> <!-- /wrapper -->


		

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