<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>

	<header class="top-bar">
		<a class="mobile-nav" href="#"><i class="pe-7s-menu"></i></a>
		<!-- <div class="">Levo <span>Theme</span></div> -->
		<!-- <input type="checkbox" id="s-logo" class="sw" /> -->
		 <div class="logo2" style=" width=20px; height=20px; ">
               <a href="/project/projectpick"><img src="/img/pms_logo_white.png" id="pmslogo2" 
               	alt="#" style="width: 3%; margin-left: 1%;"></a>
              <!--  <label class="switch switch--dark switch--header" for="s-logo"></label> -->
               
         </div>
		
		<!-- <div class="main-search">
			<input type="text" placeholder="Search for task, goal &amp; review" id="msearch">
			<label for="msearch">
				<i class="pe-7s-search"></i>
			</label>
		</div> -->
		<ul class="profile">
						<li class="profile--higlighted">메시지
				<span class="badge profile__badge badge--red">8</span>
				<a class="dropdown-toggle" data-toggle="dropdown" onclick="return false;" href="#">
					<i class="pe-7f-mail"></i>
				</a>
				<ul class="dropdown-menu pull-right">
					<li><a href="#"><i class="icon pe-7s-mail">메시지</i> You have 8 unread messages</a></li>
				</ul>
			</li>
			
			<li class="profile--higlighted">알림
				<span class="badge profile__badge badge--red">5</span>
				<a class="dropdown-toggle" data-toggle="dropdown" onclick="return false;" href="#">
					<i class="pe-7f-drawer"></i>
				</a>
				<ul class="dropdown-menu pull-right">
					<li><a href="#"><i class="icon pe-7s-drawer"></i> You have 5 new notifications</a></li>
				</ul>
			</li>
			
			<li>
				<a class="dropdown-toggle" data-toggle="dropdown" href="#" onclick="return false;" class="profile__user">
					
					<span class="profile__name">
						${S_USER.usernm }<span>님</span><i class="pe-7s-angle-down"></i>
					</span>
				</a>
				<ul class="dropdown-menu pull-right">
					<li><a href="/user/jmypage"><i class="icon pe-7s-info"></i> MyPage </a></li>
					<li><a href="/user/jlogout"><i class="icon pe-7s-close-circle"></i> LogOut </a></li>
				</ul>
			</li>
			
			
		</ul>

	</header> <!-- /top-bar -->

</body>
</html>