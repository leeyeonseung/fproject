<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>27Age</title>
</head>
<body>

	<header class="top-bar">
		<a class="mobile-nav" href="#"><i class="pe-7s-menu"></i></a>
		<div class="main-logo"><span>마이페이지</span> </div>
		<input type="checkbox" id="s-logo" class="sw" />
		<label class="switch switch--dark switch--header" for="s-logo"></label>

		<div class="main-search">
			<input type="text" placeholder="Search for task, goal &amp; review" id="msearch">
			<label for="msearch">
				<i class="pe-7s-search"></i>
			</label>
		</div>
		<ul class="profile">
			<li>
				<a class="dropdown-toggle" data-toggle="dropdown" href="#" onclick="return false;" class="profile__user">
					<figure class="pull-left rounded-image profile__img">
						<img class="media-object" src="images/thumb0.jpg" alt="user">
					</figure>
					<span class="profile__name">
						George <span>Smith</span> <i class="pe-7s-angle-down"></i>
					</span>
				</a>
				<ul class="dropdown-menu pull-right">
					<li><a href="#"><i class="icon pe-7s-info"></i> Edit Profile</a></li>
					<li><a href="#"><i class="icon pe-7s-date"></i> My Calendar</a></li>
					<li><a href="login.html"><i class="icon pe-7s-close-circle"></i> Log Out</a></li>
				</ul>
			</li>
			<li class="profile--higlighted">
				<span class="badge profile__badge badge--red">8</span>
				<a class="dropdown-toggle" data-toggle="dropdown" onclick="return false;" href="#">
					<i class="pe-7f-mail"></i>
				</a>
				<ul class="dropdown-menu pull-right">
					<li><a href="#"><i class="icon pe-7s-mail"></i> You have 8 unread messages</a></li>
				</ul>
			</li>
			<li class="profile--higlighted">
				<span class="badge profile__badge badge--red">5</span>
				<a class="dropdown-toggle" data-toggle="dropdown" onclick="return false;" href="#">
					<i class="pe-7f-drawer"></i>
				</a>
				<ul class="dropdown-menu pull-right">
					<li><a href="#"><i class="icon pe-7s-drawer"></i> You have 5 new notifications</a></li>
				</ul>
			</li>
			<li>
				<a href="#">
					<i class="pe-7f-config"></i>
				</a>
			</li>
		</ul>

	</header> <!-- /top-bar -->

</body>
</html>