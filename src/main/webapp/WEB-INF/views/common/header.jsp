<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
$(function(){
	$.ajax({
		url:"/msg/count",
		type:"get",
		dataType:"json",
		error : function(xhr) {
			alert("상태 : " + xhr.status);
		},
		success:function(result){
			
			code='';
			
			if(result.cntcn != 0){
				code+='<span class="badge profile__badge badge--red" id="cnt">'+result.cntcn+'</span>';
			}
			
			$('.profile--higlighted1').append(code);
		}
	});
	
	$('#sendajax').click(function(e){
		
		$.ajax({
			url:"/msg/msgsend",
			type:"get",
			dataType:'json',
			data:{
				"re_usid":$('input[name="re_usid"]').val(),
				"mssagesj":$('input[name="mssagesj"]').val(),
				"mssagecn":$('input[name="mssagecn"]').val()
			},
			success:function(result){
				
				$('#exampleModalLong').modal('hide');
				code='';
				code+='';
				code+='<span class="badge profile__badge badge--red">'+result.cntcn+'</span>';
				location.href="/msg/msgAllList";
				$('.profile--higlighted1').append(code);
				$("#re_usid").val("");
				$("#mssagesj").val("");
				$("#mssagecn").val("");
			},
			error : function(xhr) {
				alert("상태 : " + xhr.status);
			}
		})
	});
});
</script>
</head>
<body>

	<header class="top-bar">
		<!-- <a class="mobile-nav" href="#"><i class="pe-7s-menu"></i></a>
		<div class="main-logo"><a href="/project/projectpick">Levo</a> <span>Theme</span></div>
		<input type="checkbox" id="s-logo" class="sw" />
		<label class="switch switch--dark switch--header" for="s-logo"></label> -->

		<!-- <div class="main-search">
			<input type="text" placeholder="Search for task, goal &amp; review" id="msearch">
			<label for="msearch">
				<i class="pe-7s-search"></i>
			</label>
		</div> -->
		
		<div class="logo2">
               <a href=""><img src="../img/PMS-logo-white.png" id="pmslogo2" alt="#"></a>
              <!--  <label class="switch switch--dark switch--header" for="s-logo"></label> -->
               
         </div>
		
		<ul class="profile">
			<li>
				<a class="dropdown-toggle" data-toggle="dropdown" href="#" onclick="return false;" class="profile__user">
					<!-- <figure class="pull-left rounded-image profile__img">
						<img class="media-object" src="images/thumb0.jpg" alt="user">
					</figure> -->
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
			
			<li class="profile--higlighted1">
				<span class="badge profile__badge badge--red" id="cnt"></span>
				<a class="dropdown-toggle" data-toggle="dropdown" onclick="return false;" href="#">
					<i class="pe-7f-mail"></i>
				</a>
				<ul class="dropdown-menu pull-right">
					<li><a style="color:white;"><button style="background:#333" type="button" data-toggle="modal" data-target="#exampleModalLong">메시지 작성하기💌</button></a></li>
					<li><a href="/msg/msgAllList"><i class="icon pe-7s-mail"></i>메시지함</a></li>
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
	<!-- Modal -->
	<div class="modal fade" style="display: " id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		<div class="modal-dialog" role="document">
  			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">메시지 보내기</h5>
				</div>
				<div class="modal-body">
    				수신자: &emsp;<input type="text" name="re_usid" id="re_usid"/> <br><br>
  					제목 &emsp;: &emsp;<input type="text" name="mssagesj" id="mssagesj"/>  <br><br>
     				내용	 &emsp;: &emsp;<input type="text" name="mssagecn" id="mssagecn" /><br><br>
					<br>
				</div>
    			<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
					<button type="button" id="sendajax" class="btn btn-secondary" >보내기</button>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>