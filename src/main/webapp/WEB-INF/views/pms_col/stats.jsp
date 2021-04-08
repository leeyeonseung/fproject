<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Levo Admin Theme</title>

	<link rel="apple-touch-icon" href="touch-icon-iphone.png" /> 
	<link rel="apple-touch-icon" sizes="76x76" href="touch-icon-ipad.png" /> 
	<link rel="apple-touch-icon" sizes="120x120" href="touch-icon-iphone-retina.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="touch-icon-ipad-retina.png" />
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

	<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="css/font-awesome-4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
	<link rel="stylesheet" href="jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.css"/>
	<link href="css/helper.css" rel="stylesheet" />
	<link href="css/style.css" rel="stylesheet" />

</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp" %>

	<div class="wrapper">

	<%@ include file="/WEB-INF/views/common/left.jsp" %>

		<section class="content">
			<header class="main-header clearfix">
				<h1 class="main-header__title">
					<i class="icon pe-7s-graph"></i>
					Statistics <small>Charts &amp; graphs</small>
				</h1>
				<ul class="main-header__breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active"><a href="#">Statistics</a></li>
				</ul>
				<div class="main-header__date">
					<i class="icon pe-7s-date"></i>
					<span>December 27, 2013</span>
					<i class="pe-7s-angle-down-circle"></i>
				</div>
			</header>


		<!--
	 		////////////////////////
			Dynamic content STARTS here 
			//////////////////////// 	
		-->

		<div class="row">

			<div class="col-md-12">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">Line chart</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
							<a href="#"><i class="pe-7s-close"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, mollitia incidunt ipsa unde alias assumenda laboriosam delectus qui eos iure.</p>
						<figure>
							<div id="chartdiv" style="width: 100%; height: 362px;"></div>
						</figure>

					</div>
				</article><!-- /widget -->
			</div>

		</div>



		<div class="row">

			<div class="col-md-5">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">Donut chart</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
							<a href="#"><i class="pe-7s-close"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, mollitia incidunt ipsa unde alias assumenda laboriosam delectus qui eos iure.</p>
						<figure class="cont">
							<div class="donut-info">
								<h3>My balance</h3>
								<h1>+36&nbsp;</h1>
							</div>
							<div id="chartdonut" style="width: 100%; height: 362px;"></div>
						</figure>

						<div class="row center">
							<div class="mini-donut col-md-3">
								<div class="circle">
									<div class="arc" id="arc-1"><div class="arc-in skyblue"></div></div>
									<i>40%</i>
								</div> <!-- /circle -->
								<span>Visits</span>
							</div>

							<div class="mini-donut col-md-3">
								<div class="circle">
									<div class="arc" id="arc-2"><div class="arc-in violet"></div></div>
									<i>25%</i>
								</div> <!-- /circle -->
								<span>Members</span>
							</div>

							<div class="mini-donut col-md-3">
								<div class="circle">
									<div class="arc" id="arc-3"><div class="arc-in green"></div></div>
									<i>23%</i>
								</div> <!-- /circle -->
								<span>Sales</span>
							</div>

							<div class="mini-donut col-md-3">
								<div class="circle">
									<div class="arc" id="arc-4"><div class="arc-in red"></div></div>
									<i>12%</i>
								</div> <!-- /circle -->
								<span>Lose</span>
							</div>
						</div>

					</div>
				</article><!-- /widget -->
			</div>


			<div class="col-md-7">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">Stacked Column chart</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
							<a href="#"><i class="pe-7s-close"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, mollitia incidunt ipsa unde alias assumenda laboriosam delectus qui eos iure.</p>
						<figure class="cont">
							<div id="stchart" style="width: 100%; height: 362px;"></div>
						</figure>

					</div>
				</article><!-- /widget -->
			</div>


		</div> <!-- /row -->



		<div class="row">

			<div class="col-md-8">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">Candlestick chart with zoom</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
							<a href="#"><i class="pe-7s-close"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, mollitia incidunt ipsa unde alias assumenda laboriosam delectus qui eos iure.</p>
						<figure>
							<div id="cschart" style="width: 100%; height: 362px;"></div>
						</figure>

					</div>
				</article><!-- /widget -->
			</div>


			<div class="col-md-4">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">Gauge Chart</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
							<a href="#"><i class="pe-7s-close"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						<figure>
							<div id="gaugechart" style="width: 100%; height: 362px;"></div>
						</figure>

					</div>
				</article><!-- /widget -->
			</div>

		</div>
		
		
		<!--
	 		////////////////////////
			Dynamic content ENDS here 
			//////////////////////// 	
		-->

	</section> <!-- /content -->
	
	<footer class="main-footer">
		<a class="back-top" href="#"><i class="pe-7s-angle-up-circle"></i></a>
		<p>2013 Â© Levo by Pixeden.</p>
	</footer>

</div> <!-- /wrapper -->





<!-- Scripts -->
	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="amcharts/amcharts.js"></script>
	<script type="text/javascript" src="amcharts/serial.js"></script>
	<script type="text/javascript" src="amcharts/pie.js"></script>
	<script type="text/javascript" src="amcharts/gauge.js"></script>
	<script type="text/javascript" src="js/chart.js"></script>
	<script type="text/javascript" src="js/map.js"></script>
	<script src="jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="jquery-jvectormap-1.2.2/jquery-jvectormap-us-aea-en.js"></script>
	<script type="text/javascript" src="js/main.js"></script>


</body>
</html>