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
					<i class="icon pe-7s-menu"></i>
					Tables &amp; forms <small>interactive</small>
				</h1>
				<ul class="main-header__breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active"><a href="#">Tables &amp; forms</a></li>
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
						<h3 class="widget__title">Simple form</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
							<a href="#"><i class="pe-7s-close"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<input type="text" class="input-text" placeholder="Usual input field" />
						<div class="dropdown">
							<select name="one" class="dropdown-select">
								<option value="">Dropdown Menu</option>
								<option value="1">Option #1</option>
								<option value="2">Option #2</option>
								<option value="3">Option #3</option>
							</select>
						</div>

						<input type="file" name="uploader" id="uploader">
						<label for="uploader">Single file uploader</label>

						<textarea class="textarea" rows="6" placeholder="Usual Text Area"></textarea>

						<input type="checkbox" id="chkbx-1" class="checkbox"><label for="chkbx-1">Checkbox</label>
						<input type="radio" id="radio-1" name="input-radio" class="radio"><label for="radio-1">Say yes!</label>
						<input type="radio" id="radio-2" name="input-radio" class="radio"><label for="radio-2">Say no :( </label>
						<button class="btn btn-light pull-right" type="submit">Submit</button>
						<div class="clearfix"></div>
					</div>

				</article>
			</div>
		</div>


		<div class="row">

			<div class="col-md-12">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">Basic Bootstrap table</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
							<a href="#"><i class="pe-7s-close"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<table class="table">
							<thead>
								<tr>
									<th>Column head 1</th>
									<th>Column head 1</th>
									<th>Column head 1</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Lorem ipsum dolor.</td>
									<td>Lorem ipsum dolor.</td>
									<td>Lorem ipsum dolor.</td>
								</tr>
								<tr>
									<td>Lorem ipsum dolor.</td>
									<td>Lorem ipsum dolor.</td>
									<td class="bg--orange">Orange cell.</td>
								</tr>
								<tr>
									<td>Lorem ipsum dolor.</td>
									<td>Lorem ipsum dolor.</td>
									<td>Lorem ipsum dolor.</td>
								</tr>
								<tr>
									<td>Lorem ipsum dolor.</td>
									<td class="bg--red">Red cell</td>
									<td>Lorem ipsum dolor.</td>
								</tr>
								<tr>
									<td>Lorem ipsum dolor.</td>
									<td>Lorem ipsum dolor.</td>
									<td>Lorem ipsum dolor.</td>
								</tr>
								<tr class="bg--green">
									<td>Green Row.</td>
									<td>Lorem ipsum dolor.</td>
									<td>Lorem ipsum dolor.</td>
								</tr>
								<tr>
									<td>Lorem ipsum dolor.</td>
									<td>Lorem ipsum dolor.</td>
									<td class="bg--orange">Orange cell.</td>
								</tr>
							</tbody>
						</table>

					</article><!-- /widget -->
				</div>

			</div> <!-- /row -->
			
			



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
	<script type="text/javascript" src="js/chart.js"></script>
	<script type="text/javascript" src="js/map.js"></script>
	<script src="jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="jquery-jvectormap-1.2.2/jquery-jvectormap-us-aea-en.js"></script>
	<script type="text/javascript" src="js/main.js"></script>


</body>
</html>