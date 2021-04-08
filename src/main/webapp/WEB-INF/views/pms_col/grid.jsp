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
					<i class="icon pe-7s-crop"></i>
					Grid <small>Layout organization</small>
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

			<div class="col-md-12">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">12 Columns</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid ad animi vel cupiditate saepe suscipit commodi debitis nulla consequatur eum? Quod, voluptate, repellat numquam consequuntur quia modi qui sint temporibus sapiente labore unde ullam eos dolorum doloremque totam. Repudiandae, explicabo, sit, magnam, odio blanditiis dolorem eveniet odit repellendus veritatis voluptate obcaecati quisquam excepturi! Accusantium, nesciunt, minus, dolores, ullam deleniti illo ratione veritatis suscipit debitis optio porro inventore maxime quidem. Quos inventore corporis reprehenderit! Quisquam, dolorum, eligendi, ipsum eaque modi aliquid ullam quaerat impedit obcaecati magnam dolor magni sit maxime id cum. A, libero natus impedit commodi ad quasi. Corporis, perspiciatis deserunt culpa delectus libero vel dicta autem necessitatibus laborum nemo. Cum, vitae incidunt placeat expedita consequatur fugiat blanditiis sunt natus enim excepturi. Assumenda, repellat, eum corporis iusto officiis excepturi architecto laboriosam quaerat libero aspernatur alias ipsam impedit cum. Voluptatum, soluta quas beatae numquam nostrum aliquam aut nam. Esse, error tempore vel eius ut voluptates autem. Voluptates, ab eum hic nemo illo earum sapiente dolore quia vel reprehenderit nihil assumenda maxime nesciunt sint tempore inventore provident minima laudantium ex laboriosam deserunt distinctio omnis quisquam fuga magni tenetur nostrum perferendis? Hic, accusantium maiores architecto harum eos ex reprehenderit modi adipisci molestias dolorem!</p>


					</div>
				</article><!-- /widget -->
			</div> <!-- /col -->

		</div> <!-- /row -->

		<div class="row">

			<div class="col-md-6">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">6 Columns</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid ad animi vel cupiditate saepe suscipit commodi debitis nulla consequatur eum? Quod, voluptate, repellat numquam consequuntur quia modi qui sint temporibus sapiente labore unde ullam eos dolorum doloremque totam. Repudiandae, explicabo, sit, magnam, odio blanditiis dolorem eveniet odit repellendus veritatis voluptate obcaecati quisquam excepturi! Accusantium, nesciunt, minus, dolores, ullam deleniti illo ratione veritatis suscipit debitis optio porro inventore maxime quidem. Quos inventore corporis reprehenderit! Quisquam, dolorum, eligendi, ipsum eaque modi aliquid ullam quaerat impedit obcaecati magnam dolor magni sit maxime id cum. </p>


					</div>
				</article><!-- /widget -->
			</div> <!-- /col -->

			<div class="col-md-6">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">6 Columns</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid ad animi vel cupiditate saepe suscipit commodi debitis nulla consequatur eum? Quod, voluptate, repellat numquam consequuntur quia modi qui sint temporibus sapiente labore unde ullam eos dolorum doloremque totam. Repudiandae, explicabo, sit, magnam, odio blanditiis dolorem eveniet odit repellendus veritatis voluptate obcaecati quisquam excepturi! Accusantium, nesciunt, minus, dolores, ullam deleniti illo ratione veritatis suscipit debitis optio porro inventore maxime quidem. Quos inventore corporis reprehenderit! Quisquam, dolorum, eligendi, ipsum eaque modi aliquid ullam quaerat impedit obcaecati magnam dolor magni sit maxime id cum.</p>


					</div>
				</article><!-- /widget -->
			</div> <!-- /col -->

		</div> <!-- /row -->




		<div class="row">

			<div class="col-md-4">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">4 Columns</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid ad animi vel cupiditate saepe suscipit commodi debitis nulla consequatur eum? Quod, voluptate, repellat numquam consequuntur quia modi qui sint temporibus sapiente labore unde ullam eos dolorum doloremque totam. </p>


					</div>
				</article><!-- /widget -->
			</div> <!-- /col -->

			<div class="col-md-4">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">4 Columns</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid ad animi vel cupiditate saepe suscipit commodi debitis nulla consequatur eum? Quod, voluptate, repellat numquam consequuntur quia modi qui sint temporibus sapiente labore unde ullam eos dolorum doloremque totam.</p>


					</div>
				</article><!-- /widget -->
			</div> <!-- /col -->


			<div class="col-md-4">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">4 Columns</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid ad animi vel cupiditate saepe suscipit commodi debitis nulla consequatur eum? Quod, voluptate, repellat numquam consequuntur quia modi qui sint temporibus sapiente labore unde ullam eos dolorum doloremque totam.</p>


					</div>
				</article><!-- /widget -->
			</div> <!-- /col -->

		</div> <!-- /row -->




		<div class="row">

			<div class="col-md-3 col-sm-6">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">3 Columns</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid ad animi vel cupiditate saepe suscipit commodi debitis nulla consequatur eum?</p>


					</div>
				</article><!-- /widget -->
			</div> <!-- /col -->

			<div class="col-md-3 col-sm-6">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">3 Columns</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid ad animi vel cupiditate saepe suscipit commodi debitis nulla consequatur eum?</p>


					</div>
				</article><!-- /widget -->
			</div> <!-- /col -->


			<div class="col-md-3 col-sm-6">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">3 Columns</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid ad animi vel cupiditate saepe suscipit commodi debitis nulla consequatur eum?</p>


					</div>
				</article><!-- /widget -->
			</div> <!-- /col -->


			<div class="col-md-3 col-sm-6">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">3 Columns</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid ad animi vel cupiditate saepe suscipit commodi debitis nulla consequatur eum?</p>


					</div>
				</article><!-- /widget -->
			</div> <!-- /col -->

		</div> <!-- /row -->




		<div class="row">

			<div class="col-md-4">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">4 Columns</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid ad animi vel cupiditate saepe suscipit commodi debitis nulla consequatur eum? Quod, voluptate, repellat numquam consequuntur quia modi qui sint temporibus sapiente labore unde ullam eos dolorum doloremque totam. </p>


					</div>
				</article><!-- /widget -->
			</div> <!-- /col -->

			<div class="col-md-8">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">8 Columns</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid ad animi vel cupiditate saepe suscipit commodi debitis nulla consequatur eum? Quod, voluptate, repellat numquam consequuntur quia modi qui sint temporibus sapiente labore unde ullam eos dolorum doloremque totam. Repudiandae, explicabo, sit, magnam, odio blanditiis dolorem eveniet odit repellendus veritatis voluptate obcaecati quisquam excepturi! Accusantium, nesciunt, minus, dolores, ullam deleniti illo ratione veritatis suscipit debitis optio porro inventore maxime quidem. Quos inventore corporis reprehenderit!</p>


					</div>
				</article><!-- /widget -->
			</div> <!-- /col -->

		</div> <!-- /row -->




		<div class="row">

			<div class="col-md-7">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">7 Columns</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro, aut, enim, inventore, odio in ea nam alias fugit facilis vitae non quae natus sit veniam voluptate ducimus a voluptates quisquam ab excepturi. Blanditiis, nobis, magni nisi doloribus commodi voluptatum illo reiciendis expedita rem quam facilis unde deserunt eveniet maiores qui?</p>


					</div>
				</article><!-- /widget -->
			</div> <!-- /col -->

			<div class="col-md-5">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">5 Columns</h3>
						<div class="widget__config">
							<a href="#"><i class="pe-7f-refresh"></i></a>
						</div>
					</header>

					<div class="widget__content">
						<div class="row">
							<p class="col-lg-4 col-md-12">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid ad animi vel cupiditate saepe?</p>
							<p class="col-lg-4 col-md-12">Quod, voluptate, repellat sapiente labore unde ullam eos dolorum doloremque totam.</p>
							<p class="col-lg-4 col-md-12">Accusantium, nesciunt, minus, dolores, quidem. Quos inventore corporis reprehenderit!</p>
						</div>


					</div>
				</article><!-- /widget -->
			</div> <!-- /col -->

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