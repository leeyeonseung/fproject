<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항 등록</title>

	<link rel="apple-touch-icon" href="touch-icon-iphone.png" /> 
	<link rel="apple-touch-icon" sizes="76x76" href="touch-icon-ipad.png" /> 
	<link rel="apple-touch-icon" sizes="120x120" href="touch-icon-iphone-retina.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="touch-icon-ipad-retina.png" />
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

	<link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="../css/font-awesome-4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
	<link rel="stylesheet" href="../jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.css"/>
	<link href="../css/helper.css" rel="stylesheet" />
	<link href="../css/style.css" rel="stylesheet" />


<style>

</style>


</head>
<body>

	
	


		<section class="content">
			


		<!--
	 		////////////////////////
			Dynamic content STARTS here
			////////////////////////
		-->



		


	<div class="row" style="width: 100%; margin-left: 50px;">
		<form action="/notice/noticeInsertSave">
			<div class="col-md-12">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">공지사항 작성</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
							<a href="#"><i class="pe-7s-close"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<input type="text" class="input-text" placeholder="제목 입력" name="noticesj" />

						<textarea class="textarea" rows="6" placeholder="내용 입력" name="noticecn"></textarea>

					
						<button class="btn btn-light pull-right" type="submit">새글 등록</button>
						<div class="clearfix"></div>
					</div>

				</article>
			</div>
			</form>
		</div>
			



		<!--
	 		////////////////////////
			Dynamic content ENDS here 
			//////////////////////// 	
		-->

	</section> <!-- /content -->
	
	<!-- <footer class="main-footer">
		<a class="back-top" href="#"><i class="pe-7s-angle-up-circle"></i></a>
		<p>2013 Â© Levo by Pixeden.</p>
	</footer> -->







<!-- Scripts -->
	<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="../js/jquery-ui.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../amcharts/amcharts.js"></script>
	<script type="text/javascript" src="../amcharts/serial.js"></script>
	<script type="text/javascript" src="../amcharts/pie.js"></script>
	<script type="text/javascript" src="../js/chart.js"></script>
	<script type="text/javascript" src="../js/map.js"></script>
	<script src="../jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="../jquery-jvectormap-1.2.2/jquery-jvectormap-us-aea-en.js"></script>
	<script type="text/javascript" src="../js/main.js"></script>



</body>

<script>



</script>
</html>