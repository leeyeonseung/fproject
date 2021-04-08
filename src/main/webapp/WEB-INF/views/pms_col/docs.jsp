<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Levo Admin Theme | Documentation</title>

	<link rel="apple-touch-icon" href="touch-icon-iphone.png" /> 
	<link rel="apple-touch-icon" sizes="76x76" href="touch-icon-ipad.png" /> 
	<link rel="apple-touch-icon" sizes="120x120" href="touch-icon-iphone-retina.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="touch-icon-ipad-retina.png" />
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/font-awesome-4.3.0/css/font-awesome.min.css">
	
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <link rel="stylesheet" href="jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.css"/>
		<link href="css/prism.css" rel="stylesheet" />
		<link href="css/style.css" rel="stylesheet" />

		<style type="text/css">
		.main-doc { margin: 0!important; width: 100%!important; }
		.main-doc.content { padding: 30px 15px; }
		.main-footer { position: relative; bottom: 0; left: 0; text-align: center;}
		.file-structure { margin: 0px 0px 20px 20px; clear: both; }
		.folder, .file { display: block; }
		.folder > i { color:#e86f56; }
		.folder .folder i{ color: #b5adac; }
		.folder .file, .folder .folder { margin-left: 10px; }
		.file i { color: #7a706e; }
		.folder > .folder, .folder > .file { display: none;}
		.folder.open > .folder, .folder.open > .file { display: block; }
		.folder { cursor: pointer; }
		h4 { font-size: 20px;	margin-bottom: 5px; }
		p { margin-bottom: 10px; }
		.heading { line-height: 28px!important; }
		input[type=radio]#tab1:checked ~ .tabs__content .tabs__content--1, input[type=radio]#tab2:checked ~ .tabs__content .tabs__content--2, input[type=radio]#tab3:checked ~ .tabs__content .tabs__content--3,input[type=radio]#tab4:checked ~ .tabs__content .tabs__content--4 {
			width: 100%;
		}
		.italic {
			font-style: italic;
			}
			blockquote {
			padding: 10px 20px;
			margin: 0 0 20px;
			border-left: 5px solid #eeeeee;
			font-size: .85em;
			line-height: 1.3em;
			}
			strong {
				color:#444;
			}
		@media (max-width: 480px) { 
			.main-logo { margin-left: 20px;}
			.main-doc { margin-top: 72px !important; }
		}
	</style>	

</head>
<body>
		
		<header class="top-bar">
			<div class="main-logo">Levo <span>Theme</span></div>
		</header> <!-- /top-bar -->

		<div class="wrapper container">

			
			<section class="content main-doc">
				<header class="main-header clearfix">
					<h1 class="main-header__title">
						<i class="icon pe-7s-home"></i>
						Documentation <small>Get to know Levo</small>
					</h1>
					<ul class="main-header__breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li class="active"><a href="#">Documentation</a></li>
					</ul>
					<div class="main-header__date">
						<i class="icon pe-7s-date"></i>
						<span>December 27, 2013</span>
						<i class="pe-7s-angle-down-circle"></i>
					</div>
				</header>

				<div class="row">
					
					<div class="col-md-12">
						<article class="widget widget--tabbed">
							<div class="tabs">
								<input type="radio" name="t" id="tab1" checked>
								<label for="tab1" class="tabs__tab">Introduction</label>
								<input type="radio" name="t" id="tab2">
								<label for="tab2" class="tabs__tab">Components</label>
								<input type="radio" name="t" id="tab3">
								<label for="tab3" class="tabs__tab">Libraries</label>
								<input type="radio" name="t" id="tab4">
								<label for="tab4" class="tabs__tab">License</label>
								<div class="tabs__content">
									<div class="tabs__content--1">
										<div class="widget__content innerpadding">
												<p class="paddingTop20"><strong>Levo</strong> is a very modern and beautiful dashboard design with everything you could need to create subtle and striking admin panels.</p>
									<hr>
									<div class="row">

									<div class="col-md-6">
									<h4>File structure</h4>

									<p><strong>Important:</strong> <span class="italic">If you need to add some custom CSS, do not use the style.css file but for instance the yourname-custom.css file (rename, add css, link it) to avoid loosing your customization when upgrading to a newer version of <strong>Levo</strong>.</span></p>
									<p><span class="italic">You also could modify directly the SASS files to compile your custom <strong>Levo</strong> project.</span></p>
									<div class="file-structure">
										<span class="file"><i class="fa fa-file"></i> index.html</span>
										<span class="file"><i class="fa fa-file"></i> ui.html</span>
										<span class="file"><i class="fa fa-file"></i> grid.html</span>
										<span class="file"><i class="fa fa-file"></i> tables.html</span>
										<span class="file"><i class="fa fa-file"></i> stats.html</span>
										<span class="file"><i class="fa fa-file"></i> 404.html</span>
										<span class="file"><i class="fa fa-file"></i> login.html</span>
										<span class="file"><i class="fa fa-file"></i> config.rb</span>
										
										<div class="folder open">
											<i class="fa fa-folder-open"></i> css
											<span class="file"><i class="fa fa-file"></i> style.css</span>
											<span class="file"><i class="fa fa-file"></i> prism.css</span>
											<span class="file"><i class="fa fa-file"></i> yourname-custom.css</span>
											<div class="folder">
												<i class="fa fa-folder-open"></i> bootstrap
												<span class="file"><i class="fa fa-file"></i> bootstrap.css</span>
												<span class="file"><i class="fa fa-file"></i> bootstrap.min.css</span>
												<span class="file"><i class="fa fa-file"></i> bootstrap-theme.css</span>
												<span class="file"><i class="fa fa-file"></i> bootstrap-theme.min.css</span>
											</div>
											<div class="folder">
												<i class="fa fa-folder-open"></i> font-awesome-4.0.3
												<span class="folder"><i class="fa fa-folder"></i> css</span>
												<span class="folder"><i class="fa fa-folder"></i> font</span>
											</div>
											<div class="folder">
												<i class="fa fa-folder-open"></i> fonts
												<span class="folder"><i class="fa fa-font"></i> font files</span>
											</div>
										</div>
										
										<div class="folder">
											<i class="fa fa-folder-open"></i> js
											<span class="file"><i class="fa fa-file"></i> chart.js</span>
											<span class="file"><i class="fa fa-file"></i> main.js</span>
											<span class="file"><i class="fa fa-file"></i> bootstrap.js</span>
											<span class="file"><i class="fa fa-file"></i> jquery-1.10.2.min.js</span>
											<span class="file"><i class="fa fa-file"></i> jquery-ui.js</span>
											<span class="file"><i class="fa fa-file"></i> map.js</span>
											<span class="file"><i class="fa fa-file"></i> prism.js</span>
										</div>
										<div class="folder open">
											<i class="fa fa-folder-open"></i> images
											<span class="file"><i class="fa fa-picture-o"></i> map.svg</span>
											<span class="file"><i class="fa fa-picture-o"></i> thu.png</span>
											<span class="file"><i class="fa fa-picture-o"></i> thumb0.png</span>
											<span class="file"><i class="fa fa-picture-o"></i> thumb1.png</span>
											<span class="file"><i class="fa fa-picture-o"></i> thumb2.png</span>
											<span class="file"><i class="fa fa-picture-o"></i> thumb3.png</span>
											<span class="file"><i class="fa fa-picture-o"></i> thumb4.png</span>
											<span class="file"><i class="fa fa-picture-o"></i> thumb5.png</span>
											<span class="file"><i class="fa fa-picture-o"></i> thumb6.png</span>
										</div>
										<span class="file"><i class="fa fa-picture-o"></i> apple-touch-icon-ipad-retina.png</span>
										<span class="file"><i class="fa fa-picture-o"></i> apple-touch-icon-ipad.png</span>
										<span class="file"><i class="fa fa-picture-o"></i> apple-touch-icon-iphone-retina.png</span>
										<span class="file"><i class="fa fa-picture-o"></i> apple-touch-icon-iphone.png</span>
										<span class="file"><i class="fa fa-picture-o"></i> favicon.ico</span>
										<div class="folder open">
											<i class="fa fa-folder-open"></i> sass
											<span class="file"><i class="fa fa-file"></i> style.scss</span>
											<div class="folder">
												<i class="fa fa-folder-open"></i> modules
												<span class="file"><i class="fa fa-file"></i> _all.scss</span>
												<span class="file"><i class="fa fa-file"></i> _colors.scss</span>
												<span class="file"><i class="fa fa-file"></i> _mixins.scss</span>
											</div>
											<div class="folder">
												<i class="fa fa-folder-open"></i> partials
												<span class="file"><i class="fa fa-file"></i> _base.scss</span>
												<span class="file"><i class="fa fa-file"></i> _layout.scss</span>
												<span class="file"><i class="fa fa-file"></i> _modules.scss</span>
												<span class="file"><i class="fa fa-file"></i> _resets.scss</span>
												<span class="file"><i class="fa fa-file"></i> _responsive.scss</span>
												<span class="file"><i class="fa fa-file"></i> _typography.scss</span>
											</div>
											
										</div>
									<span class="folder"><i class="fa fa-folder"></i> amcharts <small>plugin</small></span>
									<span class="folder"><i class="fa fa-folder"></i> jquery-jvectormap-1.2.2 <small>plugin</small></span>
									</div>

									</div>
									<div class="col-md-6">
										<h4>HTML Structure</h4>
	<p>All the html files have the same base structure and every blocks are commented.</p>

<pre class="language-markup"><code>&lt;header class=&quot;top-bar&quot;&gt;

 &lt;!-- Logo, main-search &amp; profile --&gt;

&lt;/header&gt;

&lt;div class=&quot;wrapper&quot;&gt;

 &lt;aside class=&quot;sidebar&quot;&gt;
 
  &lt;ul class=&quot;main-nav&quot;&gt;
	
	 &lt;!-- main-nav --&gt;
  
  &lt;/ul&gt;
 
 &lt;/aside&gt;

 &lt;section class=&quot;content&quot;&gt;
		
  &lt;header class=&quot;main-header&quot;&gt;
  
   &lt;!-- page-title, breadcrumbs &amp; date --&gt;
  
  &lt;/header&gt;

  &lt;!-- 
  
  		every other page content 

  --&gt;

 &lt;/section&gt;

&lt;/div&gt;

</code></pre>
									</div>
									
									</div><!-- /row -->
										


										</div>
									
									</div> <!-- /tabs__content 1 -->

									<div class="tabs__content--2">
										<div class="widget__content innerpadding">
											
								<div class="row">
									<div class="col-md-6">
										<article class="widget">
											<header class="widget__header">
												<h3 class="widget__title">Widget container</h3>
												<div class="widget__config">
													<a href="#"><i class="pe-7f-refresh"></i></a>
													<a href="#"><i class="pe-7s-close"></i></a>
												</div>
											</header>

											<div class="widget__content">
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut, doloribus, vitae quidem totam voluptates possimus soluta consequatur repellat corporis quis in illum nemo a qui alias dolor laboriosam esse ipsum accusantium numquam. Reprehenderit, quas perferendis eveniet unde est molestiae expedita animi fuga vitae dicta! Repellat, amet quaerat quia dolor tempora!</p>
											</div>
										</article>
									
									
									</div>
									<div class="col-md-6">
<pre class="language-markup"><code>&lt;article class=&quot;widget&quot;&gt;
	&lt;header class=&quot;widget__header&quot;&gt;
		
		&lt;h3 class=&quot;widget__title&quot;&gt;
			Widget container
		&lt;/h3&gt;
		&lt;div class=&quot;widget__config&quot;&gt;&lt;/div&gt;
	
	&lt;/header&gt;

	&lt;div class=&quot;widget__content&quot;&gt;
	&lt;/div&gt;
&lt;/article&gt;

</code></pre>
									</div>
									
									</div><!-- /row -->
<hr>
									<div class="row">
										<div class="col-md-6">
											<p><strong>Fontawesome button icons</strong></p>
											<a href="#" onclick="return false;" class="btn btn-light"><i class="fa fa-lock"></i></a>
											<a href="#" onclick="return false;" class="btn btn-violet"><i class="fa fa-location-arrow"></i></a>
											<a href="#" onclick="return false;" class="btn btn-skyblue"><i class="fa fa-microphone"></i></a>
											<a href="#" onclick="return false;" class="btn btn-grey"><i class="fa fa-magnet"></i></a>
											<a href="#" onclick="return false;" class="btn btn-orange"><i class="fa fa-lightbulb-o"></i></a>
											<a href="#" onclick="return false;" class="btn btn-red"><i class="fa fa-map-marker"></i></a>
											<a href="#" onclick="return false;" class="btn btn-light">
												<i class="fa fa-heart"></i>
												<span class="badge badge--red">10</span>
											</a>
										</div>
										<div class="col-md-6">
											<pre class="language-markup"><code>&lt;a class=&quot;btn btn-light&quot;&gt;&lt;i class=&quot;fa fa-lock&quot;&gt;&lt;/i&gt;&lt;/a&gt;

&lt;!-- with badge --&gt;
&lt;a class=&quot;btn btn-light&quot;&gt;&lt;i class=&quot;fa fa-heart&quot;&gt;&lt;/i&gt;
	&lt;span class=&quot;badge badge--red&quot;&gt;10&lt;/span&gt;
&lt;/a&gt;</code></pre>
										</div>
									</div>

<hr>
									<div class="row">
										<div class="col-md-6">
											<p><strong>Pixeden Stroke 7 button icons</strong></p>
											<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7s-lock"></i></a>
											<a href="#" onclick="return false;" class="btn btn-violet"><i class="pe-7s-paper-plane"></i></a>
											<a href="#" onclick="return false;" class="btn btn-skyblue"><i class="pe-7s-micro"></i></a>
											<a href="#" onclick="return false;" class="btn btn-grey"><i class="pe-7s-magnet"></i></a>
											<a href="#" onclick="return false;" class="btn btn-orange"><i class="pe-7s-light"></i></a>
											<a href="#" onclick="return false;" class="btn btn-red"><i class="pe-7s-map-marker"></i></a>
											<a href="#" onclick="return false;" class="btn btn-light">
												<i class="pe-7s-like"></i>
												<span class="badge badge--red">10</span>
											</a>
										</div>
										<div class="col-md-6">
											<pre class="language-markup"><code>&lt;a class=&quot;btn btn-light&quot;&gt;&lt;i class=&quot;pe-7s-lock&quot;&gt;&lt;/i&gt;&lt;/a&gt;

&lt;!-- with badge --&gt;
&lt;a class=&quot;btn btn-light&quot;&gt;&lt;i class=&quot;pe-7s-like&quot;&gt;&lt;/i&gt;
	&lt;span class=&quot;badge badge--red&quot;&gt;10&lt;/span&gt;
&lt;/a&gt;</code></pre>
										</div>
									</div>
<hr>
									<div class="row">
										<div class="col-md-6">
											<p><strong>Pixeden Filled 7 button icons</strong></p>
											<a href="#" onclick="return false;" class="btn btn-light"><i class="pe-7f-lock"></i></a>
											<a href="#" onclick="return false;" class="btn btn-violet"><i class="pe-7f-paper-plane"></i></a>
											<a href="#" onclick="return false;" class="btn btn-skyblue"><i class="pe-7f-micro"></i></a>
											<a href="#" onclick="return false;" class="btn btn-grey"><i class="pe-7f-magnet"></i></a>
											<a href="#" onclick="return false;" class="btn btn-orange"><i class="pe-7f-light"></i></a>
											<a href="#" onclick="return false;" class="btn btn-red"><i class="pe-7f-map-marker"></i></a>
											<a href="#" onclick="return false;" class="btn btn-light">
												<i class="pe-7f-like"></i>
												<span class="badge badge--red">10</span>
											</a>
										</div>
										<div class="col-md-6">
											<pre class="language-markup"><code>&lt;a class=&quot;btn btn-light&quot;&gt;&lt;i class=&quot;pe-7f-lock&quot;&gt;&lt;/i&gt;&lt;/a&gt;

&lt;!-- with badge --&gt;
&lt;a class=&quot;btn btn-light&quot;&gt;&lt;i class=&quot;pe-7f-like&quot;&gt;&lt;/i&gt;
	&lt;span class=&quot;badge badge--red&quot;&gt;10&lt;/span&gt;
&lt;/a&gt;</code></pre>
										</div>
									</div>

<hr>
									<div class="row">
										<div class="col-md-6">
											<p class="heading"><strong>Buttons colors:</strong><br> <code class="language-css">.btn-light</code>, <code class="language-css">.btn-skyblue</code>, <code class="language-css">.btn-orange</code>, <code class="language-css">.btn-green</code>, <code class="language-css">.btn-red</code>, <code class="language-css">.btn-violet</code>, <code class="language-css">.btn-grey</code>, <code class="language-css">.btn-dark</code>
											</p>
											<button type="button" class="btn btn-light">Light</button>
											<button type="button" class="btn btn-skyblue">SkyBlue</button>
											<button type="button" class="btn btn-orange">Orange</button>
											<button type="button" class="btn btn-green">Green</button>
											<button type="button" class="btn btn-red">Red</button>
											<button type="button" class="btn btn-violet">Violet</button>
											<button type="button" class="btn btn-grey">Grey</button>
											<button type="button" class="btn btn-dark">Dark</button>
										</div>
										<div class="col-md-6">
											<pre class="language-markup"><code>&lt;button type=&quot;button&quot; class=&quot;btn btn-light&quot;&gt;Button&lt;/button&gt;

&lt;button type=&quot;button&quot; class=&quot;btn btn-skyblue&quot;&gt;Button&lt;/button&gt;</code></pre>
										</div>
									</div>
<hr>
									<div class="row">
										<div class="col-md-6">
											<p class="heading"><strong>Buttons sizes &amp; behaviors:</strong><br><code class="language-css">.btn-xs</code>, <code class="language-css">.btn-sm</code>, <code class="language-css">.btn-lg</code>, <code class="language-markp">&lt;disabled&gt;</code>, <code class="language-css">.btn-block</code>
											</p>
											<button type="button" class="btn btn-light btn-xs">Xtra Small</button>
											<button type="button" class="btn btn-skyblue btn-sm">Small</button>
											<button type="button" class="btn btn-orange">Normal</button>
											<button type="button" class="btn btn-green btn-lg">Large</button>
											<button type="button" class="btn btn-red" disabled>Disabled</button>
											<button type="button" class="btn btn-grey btn-block">Block button</button>
										</div>
										<div class="col-md-6">
											<pre class="language-markup"><code>&lt;button type=&quot;button&quot; class=&quot;btn btn-light btn-xs&quot;&gt;Button&lt;/button&gt;

&lt;button type=&quot;button&quot; class=&quot;btn btn-skyblue btn-sm&quot;&gt;Button&lt;/button&gt;</code></pre>
										</div>
									</div>
<hr>
									<div class="row">
										<div class="col-md-6">
											<p class="heading"><strong>Switch 1</strong>: <code class="language-markp">class=&quot;switch&quot;</code></p>
											<input type="checkbox" id="s1" class="sw" />
										  <label class="switch" for="s1"></label>
										  <input type="checkbox" id="s2" class="sw" checked />
										  <label class="switch" for="s2"></label>
										  <input type="checkbox" id="s3" class="sw" checked />
										  <label class="switch switch--violet" for="s3"></label>
										</div>
										<div class="col-md-6">
											<pre class="language-markup"><code>&lt;input type=&quot;checkbox&quot; id=&quot;s1&quot; class=&quot;sw&quot; /&gt;
&lt;label class=&quot;switch&quot; for=&quot;s1&quot;&gt;&lt;/label&gt;

&lt;!-- another color --&gt;
&lt;input type=&quot;checkbox&quot; id=&quot;s3&quot; class=&quot;sw&quot; checked/&gt;
&lt;label class=&quot;switch switch--violet&quot; for=&quot;s3&quot;&gt;&lt;/label&gt;</code></pre>
										</div>
									</div>
<hr>
									<div class="row">
										<div class="col-md-6">
											<p class="heading"><strong>Switch 2</strong>: <code class="language-markp">class=&quot;switch2&quot;</code></p>
											<input type="checkbox" id="sa" class="sw" />
										  <label class="switch2" for="sa"></label>
										  <input type="checkbox" id="sb" class="sw" checked />
										  <label class="switch2" for="sb"></label>
										  <input type="checkbox" id="sc" class="sw" checked />
										  <label class="switch2 switch--green" for="sc"></label>
										</div>
										<div class="col-md-6">
											<pre class="language-markup"><code>&lt;input type=&quot;checkbox&quot; id=&quot;sa&quot; class=&quot;sw&quot; /&gt;
&lt;label class=&quot;switch2&quot; for=&quot;sa&quot;&gt;&lt;/label&gt;

&lt;!-- another color --&gt;
&lt;input type=&quot;checkbox&quot; id=&quot;sc&quot; class=&quot;sw&quot; checked/&gt;
&lt;label class=&quot;switch2 switch--green&quot; for=&quot;sc&quot;&gt;&lt;/label&gt;</code></pre>
										</div>
									</div>
<hr>
									<div class="row">
										<div class="col-md-6">
											<div class="media user user--added">
												<figure class="pull-left rounded-image user__img">
												  <img class="media-object" src="images/thumb3.jpg" alt="user">
												</figure>
												<div class="media-body">
												  <h4 class="media-heading user__name">Paul Robert Smith</h4>
												  <small class="user__location"><i class="pe-7f-map-marker"></i> Manhattan, United States</small>

												  <a class="c-btn--check"></a>
													<input type="checkbox" class="btn-more-check" id="more1">
													<label class="c-btn--more" for="more1"></label>

													<div class="accordion__details">
														<p>EMAIL <span><a href="#">paul@smith.com</a></span></p>
														<p>SITE <span><a class="color--dark-grey" href="#">www.smith.com</a></span></p>
														<p>COMPANY <span>CompanyName</span></p>
														<p>PLAN <span class="btn-badge bg--orange">Base</span></p>
														<p>MESSAGES <span class="color--skyblue-light">76</span></p>
													</div>
												</div>
											</div> <!-- /user -->
										</div>
										<div class="col-md-6">
											<pre class="language-markup"><code>&lt;div class=&quot;media user user--added&quot;&gt;
	&lt;figure class=&quot;pull-left rounded-image user__img&quot;&gt;
		&lt;img class=&quot;media-object&quot; src=&quot;images/thumb3.jpg&quot; alt=&quot;user&quot;&gt;
	&lt;/figure&gt;
	
	&lt;div class=&quot;media-body&quot;&gt;
		&lt;h4 class=&quot;media-heading user__name&quot;&gt;Paul Robert Smith&lt;/h4&gt;
		&lt;small class=&quot;user__location&quot;&gt;&lt;i class=&quot;pe-7f-map-marker&quot;&gt;&lt;/i&gt; Manhattan, United States&lt;/small&gt;

	&lt;a class=&quot;c-btn--check&quot;&gt;&lt;/a&gt;
	&lt;input type=&quot;checkbox&quot; class=&quot;btn-more-check&quot; id=&quot;more1&quot;&gt;
	&lt;label class=&quot;c-btn--more&quot; for=&quot;more1&quot;&gt;&lt;/label&gt;

	&lt;div class=&quot;accordion__details&quot;&gt;
														
	&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt; &lt;!-- /user --&gt;
											</code></pre>
										</div>
									</div>
<hr>
									<div class="row">
										<div class="col-md-6">
												<p class="heading"><strong>Bootstrap 3.x, Fontawesome 4.x</strong></p>

												<p>Levo is based on the latest version of <strong>Twitter Bootsrap 3.x</strong>. Bootstrap is a: </p><blockquote class="italic">Sleek, intuitive, and powerful mobile first front-end framework for faster and easier web development.</blockquote> 
												<p>It offers a full range of components that will allow you to create all the pieces needed in your project easily and proficiently.<br/>
												<small><a href="http://getbootstrap.com/">Visit the official website for the full documentation</a></small>
												</p>
												<hr>
												<p>We include the latest <strong>Fontawesome</strong> icon font. Fontawesome is a: </p><blockquote class="italic">scalable vector icons that can instantly be customized â size, color, drop shadow, and anything that can be done with the power of CSS.</blockquote> <p>You can quickly add the necessary visual clues for your project without having to create or hunt down specific graphics.
												<br/>
												<small><a href="http://fontawesome.io">Visit the official website for the full documentation</a></small>
												</p>												
										</div>
										<div class="col-md-6">
											<p class="heading"><strong>Responsive @media queries</strong></h4>
												<p>We use <strong>@media queries</strong> in our style.css file to add specific css in order to make our template responds best to different devices resolution. </p>
											<blockquote class="italic">A media query consists of a media type and zero or more expressions that check for the conditions of particular media features. Among the media features that can be used in media queries are âwidthâ, âheightâ, and âcolorâ. By using media queries, presentations can be tailored to a specific range of output devices without changing the content itself.</blockquote>

											<p>Those <strong>@media queries</strong> are in addition to the ones included in bootstrap.css file. They are mostly here to adapt our specific layout and demo content to different screen width.
											</p>
											<p>For example we use it to change the sidebar navigation display <code>.sidebar<br/> { width: 69px; }</code>, and for other uses similar to those.
											</p>
											<p>
											According to your needs you might want to add new <strong>@media queries</strong> for your specific content or to override ours. You should not do it in the styles.css file but create a new specific css file and link it to your HTML. Otherwise if you use SASS, use the partials scss file "typography.scss" See file structure section for more details. 
											</p>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<hr>
												<p>
												We also use two custom <strong>Pixeden Icon Fonts</strong>:<br/><br/>
												<strong>Stroke 7 Icon Font</strong> <code>Pe-icon-7-stroke</code> using the class: <code class="language-css">.pe-7s-</code><br/>
												With the following HTML markup for instance:
												</p>
												<pre class="language-markup"><code>&lt;i class=&quot;pe-7s-name-of-icon&quot;&gt;&lt;/i&gt;</code></pre>
												<p><small><a href="http://www.pixeden.com/icon-fonts/stroke-7-icon-font-set">Visit the icon font page for more details</a></small></p>
												<p>
												<strong>Filled 7 Icon Font</strong> <code>Pe-icon-7-filled</code> using the class: <code class="language-css">.pe-7f-</code><br/>
												With the following HTML markup for instance:
												</p>
												<pre class="language-markup"><code>&lt;i class=&quot;pe-7f-name-of-icon&quot;&gt;&lt;/i&gt;</code></pre>
												<p><small><a href="http://www.pixeden.com/icon-fonts/filled-7-icon-font-set">Visit the icon font page for more details</a></small></p>

										</div>
									</div>			

										</div> <!-- /widget__content -->
									</div> <!-- /tabs__content 2 -->
									



									<div class="tabs__content--3">
										<div class="widget__content innerpadding">
											<div class="row">
												<div class="col-md-12">
													<p class="heading">Here are all the dependencies that <strong>Levo</strong> uses for different scopes. <br> We recommend to include the <code>.css</code> files inside the <code>&lt;head&gt;</code> tag and the <code>.js</code> files before the closing of the <code>&lt;body&gt;</code> tag</p>
													<hr>
													<p><strong>Twitter Bootstrap 3.3.4</strong> <small><a href="http://getbootstrap.com/">Official website</a></small></p>
													<p><code class="language-markup">&lt;link href=&quot;css/bootstrap/bootstrap.css&quot; rel=&quot;stylesheet&quot; /&gt;
&lt;script type=&quot;text/javascript&quot; src=&quot;js/bootstrap.min.js&quot;&gt;&lt;/script&gt;</code>
</p>
											<p><strong>jQuery 1.11.3</strong> <small><a href="http://jquery.com/">Official website</a></small></p>
											<p><code class="language-markup">&lt;script type=&quot;text/javascript&quot; src=&quot;js/jquery-1.11.3.min.js&quot;&gt;&lt;/script&gt;</code></p>

											<p><strong>jQuery UI 1.11.4</strong> <small><a href="http://jqueryui.com/">Official website</a></small></p>
											<p><code class="language-markup">&lt;link rel=&quot;stylesheet&quot; href=&quot;http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css&quot; /&gt;</code></p>
											<p><code class="language-markup">&lt;script type=&quot;text/javascript&quot; src=&quot;js/jquery-ui.min.js&quot;&gt;&lt;/script&gt;</code></p>

											<p><strong>FontAwesome 4.3.0</strong> <small><a href="http://www.fontawesome.io/">Official website</a></small></p>
											<p><code class="language-markup">&lt;link rel=&quot;stylesheet&quot; href=&quot;css/font-awesome-4.0.3/css/font-awesome.min.css&quot;&gt;</code></p>

											<p><strong>Amcharts v.3</strong> <small><a href="http://www.amcharts.com/">Official website</a></small></p>
											<p><code class="language-markup">/amchart/*</code></p>

											<p><strong>jVectorMap 1.2.2</strong> <small><a href="http://jvectormap.com/">Official website</a></small></p>
											<p><code class="language-markup">/jquery-jvectormap-1.2.2/*</code></p>


												</div>
											</div>
										</div>
									</div> <!-- /tabs__content 3 -->

									<div class="tabs__content--4">
										<div class="widget__content innerpadding">
											<div class="row">
												<div class="col-md-12">
											<h3>Unlimited Usage Granted:</h3>
<p>You have the right to use Pixeden web templates on as many sites as you want. After your membership expires, you may continue to use the templates with no time restrictions.</p>

<h3>License:</h3>
<p>Pixeden web templates are GPL compliant. All PHP portions of the templates, themes and styles are licensed under the appropriate GPL license of the platform (Bootstrap, Wordpress etcâ¦). The non-compiled portions including source file, images, cascading style sheets and JavaScript are licensed under the The âPixeden Proprietary Use License" in accordance with the rest of these Terms of Service.</p>

<h3>Modifications:</h3>
<p>You are authorized to make any necessary modification(s) to our web templates to fit your purposes. You may not however redistribute or release non-GPL portions of the templates as GPL or otherwise. You may remove our copyright from the footer of the web templates if needed. Porting non-GPL portions of our templates to other platforms and content management systems and redistributing as GPL or otherwise is also strictly prohibited. Please contact us if you have any requirements that are not covered by these terms.</p>

<h3>Unauthorized use:</h3>
<p>You may not place any non-GPL portions of our templates, modified or unmodified, on any medium and offer them for redistribution or resale of any kind without prior written consent from Pixeden. Please contact us if you require more clarification.
All templates are always designed for the latest version of the platform they are designed for, as such we can give no guarantee that the templates will run with previous versions of those platforms. </p>

<h3>Assignability:</h3>
<p>You may not sub-license, assign, or transfer this license or Pixeden subscription to anyone else without prior written consent from Pixeden.</p>

<h3>Ownership:</h3>
<p>Our resources are provided âas isâ without warranty of any kind, either expressed or implied. In no event shall Pixeden be liable for any damages including, but not limited to, direct, indirect, special, incidental or consequential damages or other losses arising out of the use of or inability to use our products.</p>

<h3>Use of Content:</h3>
<p>You acknowledge that our resources contain or may contain material (collectively the âContentâ) which is protected by copyright, trademark or other proprietary rights; therefore, you are only permitted to use the material as expressly authorized by Pixeden. You may not transfer or sell, reproduce, create derivative works from, distribute, or in any way exploit any of the Content, in whole or in part, except with an expressly permitted Agreement from the developer.</p>

<h3>Refund policy:</h3>
<p>Since Pixeden is offering non-tangible goods we do not issue refunds after the membership is made, which you are responsible for understanding upon registering at our site.<br/>
We however can look at specific cases and issue an exceptional one-off refund. If you think that your case should grant you a partial or full refund please contact us.</p>

<h3>Warranty:</h3>
<p>Pixeden expressly disclaims all warranties of any kind, whether express or implied, including, but not limited to the implied warranties of title, merchantability including, but not limited to merchantability of computer programs, and fitness for a particular purpose. Pixeden does not warrant or guarantee these templates in any manner. We cannot guarantee they will function with all 3rd party templates as there is currently no certification process for such components. Browser compatibility should be tested against the demonstration templates on the demo server. Please ensure that the browsers you use will work with the templates as we can not guarantee that Pixeden templates will work with all browser combinations. Some states or jurisdictions do not allow the exclusion of certain warranties. Nothing in this section should be construed as excluding or limiting any warranty beyond what is permissible under applicable law.</p>

<h3>Support:</h3>
<p>Pixeden offers these templates and designs âas isâ, with no implied meaning that they will function exactly as you wish or with all 3rd party components and modules. Further, we offer no support via email or otherwise for installation, customization, administration, etc. You acknowledge by your use of the templates that it is at your sole risk, and that you assume full responsibility for all costs associated with all necessary servicing or repairs of any equipment you use in connection with the templates.</p>

<h3>Complete terms of service:</h3>
<p>This specific Web Templates License completes our general terms of service that can be found on our website:<br/>
<a href="http://www.pixeden.com/terms-of-use">http://www.pixeden.com/terms-of-use</a></p>
											</div>
										</div>
										</div>
									</div> <!-- /tabs__content 4 -->
								
								</div> <!-- /tabs__content CONTAINER -->

							</div> <!-- /widget__tabs -->

						</article>
					</div>

				</div> <!-- /row -->

			</section> <!-- /content -->
	
		<footer class="main-footer">
			<p>2013 Â© Levo by <a href="http://pixeden.com">Pixeden.</a></p>
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
	<script type="text/javascript" src="js/prism.js"></script>
	<script type="text/javascript" src="js/main.js"></script>

	<script type="text/javascript">
	$(document).ready(function(){
		$('.folder > i').click(function(){
			$(this).parent().toggleClass('open');
		})
	})
	</script>

</body>
</html>