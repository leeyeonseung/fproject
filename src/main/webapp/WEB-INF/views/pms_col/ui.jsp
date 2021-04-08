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

	<link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="../css/font-awesome-4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
	<link rel="stylesheet" href="../jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.css"/>
	<link href="../css/helper.css" rel="stylesheet" />
	<link href="../css/style.css" rel="stylesheet" />
<script>
$(function(){
	
})
</script>
</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp" %>

	<div class="wrapper">
		
	<%@ include file="/WEB-INF/views/common/left.jsp" %>

		<section class="content">
			<header class="main-header clearfix">
				<h1 class="main-header__title">
					<i class="icon pe-7s-edit"></i>
					UI Elements <small>Sliders and buttons</small>
				</h1>
				<ul class="main-header__breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active"><a href="#">UI Elements</a></li>
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

			<div class="col-md-6">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">Notifications</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
							<a href="#"><i class="pe-7s-close"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<div class="alert alert-danger alert-dismissable">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
							<div class="media">
								<figure class="pull-left alert--icon">
									<i class="pe-7s-close-circle"></i>
								</figure>
								<div class="media-body">
									<h3 class="alert--title">There was an error loading</h3> 
									<p class="alert--text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
								</div>
							</div>
						</div> <!-- /alert -->

						<div class="alert alert-warning alert-dismissable">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
							<div class="media">
								<figure class="pull-left alert--icon">
									<i class="pe-7s-attention"></i>
								</figure>
								<div class="media-body">
									<h3 class="alert--title">Warning notification</h3> 
									<p class="alert--text">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>
								</div>
							</div>
						</div> <!-- /alert -->

						<div class="alert alert-info alert-dismissable">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
							<div class="media">
								<figure class="pull-left alert--icon">
									<i class="pe-7s-info"></i>
								</figure>
								<div class="media-body">
									<h3 class="alert--title">For your information</h3> 
									<p class="alert--text">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
								</div>
							</div>
						</div> <!-- /alert -->
					</div>
				</article><!-- /widget -->
			</div>

			<div class="col-md-6">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">UI Elements</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
							<a href="#"><i class="pe-7s-close"></i></a>
						</div>	
					</header>

					<div class="widget__content">
						<div class="row">
							<div class="col-md-12">
								<h3 class="subtitle">Switches</h3>
								<div class="col-md-3 col-sm-3">
									<input type="checkbox" id="s1" class="sw" />
									<label class="switch" for="s1"></label>
									<input type="checkbox" id="s2" class="sw" checked />
									<label class="switch" for="s2"></label>
									<input type="checkbox" id="s3" class="sw" checked />
									<label class="switch switch--violet" for="s3"></label>
								</div>
								<div class="col-md-3 col-sm-3">
									<input type="checkbox" id="s4" class="sw" checked />
									<label class="switch switch--green" for="s4"></label>
									<input type="checkbox" id="s5" class="sw" checked />
									<label class="switch switch--red" for="s5"></label>
									<input type="checkbox" id="s6" class="sw" checked />
									<label class="switch switch--orange" for="s6"></label>
								</div>
								<div class="col-md-3 col-sm-3">
									<input type="checkbox" id="sa" class="sw" />
									<label class="switch2" for="sa"></label>
									<input type="checkbox" id="sb" class="sw" checked />
									<label class="switch2" for="sb"></label>
									<input type="checkbox" id="sc" class="sw" checked />
									<label class="switch2 switch--green" for="sc"></label>
								</div>
								<div class="col-md-3 col-sm-3">
									<input type="checkbox" id="sd" class="sw" checked />
									<label class="switch2 switch--violet" for="sd"></label>
									<input type="checkbox" id="se" class="sw" checked />
									<label class="switch2 switch--orange" for="se"></label>
									<input type="checkbox" id="sf" class="sw" checked />
									<label class="switch2 switch--red" for="sf"></label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
							<h3 class="subtitle">Sliders</h3>
								<div class="slider"></div>
								<div class="slider range-min"></div>
								<div class="slider range"></div>
							</div>
						</div>

					</div> <!-- /widget-content -->
				</article><!-- /widget -->
			</div>


		</div> <!-- /row -->


		<div class="row">

			<div class="col-md-8">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">PE-icons</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
							<a href="#"><i class="pe-7s-close"></i></a>
						</div>
					</header>

					<div class="widget__content">

						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-lock"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-video"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-upload"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-unlock"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-umbrella"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-trash"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-tools"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-timer"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-ticket"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-target"></i></a>

						<a href="#" onclick="return false;" class="btn btn-light">
							<i class="pe-7f-home"></i>
							<span class="badge badge--green">1</span>
						</a>

						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-sun"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-study"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-stopwatch"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light">
							<i class="pe-7f-star"></i>
							<span class="badge">3</span>
						</a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-speaker"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-signal"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-shuffle"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-shopbag"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light">
							<i class="pe-7f-share"></i>
							<span class="badge badge--skyblue">5</span>
						</a>

						<a href="#" onclick="return false;" class="btn btn-light">
							<i class="pe-7f-server"></i>
							<span class="badge badge--red">10</span>
						</a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-search"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-science"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-ribbon"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-repeat"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-radio"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-print"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-power"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-portfolio"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-plane"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-phone"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-pen"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-paint"></i></a>
						<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-notebook"></i></a>
						<a href="#" onclick="return false;" class="btn btn-dark"><i class="pe-7f-note"></i></a>
						<a href="#" onclick="return false;" class="btn btn-grey"><i class="pe-7f-mouse"></i></a>
						<a href="#" onclick="return false;" class="btn btn-orange"><i class="pe-7f-moon"></i></a>
						<a href="#" onclick="return false;" class="btn btn-red"><i class="pe-7f-micro"></i></a>
						<a href="#" onclick="return false;" class="btn btn-violet"><i class="pe-7f-mail"></i></a>
						<a href="#" onclick="return false;" class="btn btn-skyblue"><i class="pe-7f-magnet"></i></a>

					</div>
				</article><!-- /widget -->
			</div>

			<div class="col-md-4">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">Buttons</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
							<a href="#"><i class="pe-7s-close"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<button type="button" class="btn btn-light">Light</button>
						<button type="button" class="btn btn-skyblue">SkyBlue</button>
						<button type="button" class="btn btn-orange">Orange</button>
						<button type="button" class="btn btn-green">Green</button>
						<button type="button" class="btn btn-red">Red</button>
						<button type="button" class="btn btn-violet">Violet</button>
						<button type="button" class="btn btn-grey">Grey</button>
						<button type="button" class="btn btn-dark">Dark</button>
					</div> <!-- /widget-content -->
				</article>
			</div>


		</div> <!-- /row -->


		<div class="row">

			<div class="col-md-12">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">Buttons variants</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
							<a href="#"><i class="pe-7s-close"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<div class="btn-group">
							<button type="button" class="btn btn-default">Left</button>
							<button type="button" class="btn btn-default">Middle</button>
							<button type="button" class="btn btn-default">Right</button>
						</div>
						<div class="dropdown mtop-10">
							<select name="one" class="dropdown-select">
								<option value="">Drowpdown</option>
								<option value="1">Option 1</option>
								<option value="2">Option 2</option>
								<option value="3">Option 3</option>
							</select>
						</div>	
						<hr>
						<button type="button" class="btn btn-light btn-xs">Xtra Small</button>
						<button type="button" class="btn btn-skyblue btn-sm">Small</button>
						<button type="button" class="btn btn-orange">Normal</button>
						<button type="button" class="btn btn-green btn-lg">Large</button>
						<button type="button" class="btn btn-violet" disabled>Disabled</button>
						<button type="button" class="btn btn-red" disabled>Disabled</button>
						<button type="button" class="btn btn-dark" disabled>Disabled</button>
						<button type="button" class="btn btn-grey btn-block">Block button</button>
					</div>

				</article>

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
</html>