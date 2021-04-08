<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
$(function(){
// 	$(document).on('click', function(e){
// 		if(e.target.id == "invite"){
// 			alert("test");
// 			document.getElementById("inviteDiv").style.display="block";
// 		}else {
// 			document.getElementById("inviteDiv").style.display="none";
// 		}
// 	})
	
	$("#chatBt").on('click', function(){
		window.open("<%=request.getContextPath()%>/socket/view", "chat", "width=640, height=400")
	})
	
})
</script>


</head>
<body>
		
      <aside class="sidebar_r">
			<ul class="main-nav">
			
			<li class="ulstyle">
					<a class="ucc" href="#">
						
						파일함 <span class="badge main-nav__badge"></span>
					</a>
					
					
					<a class="ucc" href="#">
						업무 <span class="badge main-nav__badge"></span>
					</a>
					<a class="ucc" href="#">
						일정 <span class="badge main-nav__badge"></span>
					</a>
					<a class="ucc" href="#">
						할일 <span class="badge main-nav__badge"></span>
					</a>
				</li>
			</ul>
			
			<button class="btn btn-grey btn-block" style="height:60px; background: cadetblue;" id="invite" location.href="/mail"><img src="../icon/plus.png">&nbsp;&nbsp;초대하기</button>
			
						
				<article class="widget" style="height: 730px;">
					<header class="widget__header">
						<h3 class="widget__title">전체 참여자 명</h3>
						
						<!-- Trigger the modal with a button -->
						<!-- <form action="/user/profile"> -->
						<%-- <input type="hidden" value="${member.prjctno }" name="prjctno">  --%>
						
						<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" id="modal">전체보기
						</button>
						<!-- </form> -->
						<!-- Modal -->
						<div id="myModal" class="modal fade" role="dialog">
						  <div class="modal-dialog">
						
						    <!-- Modal content-->
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal">&times;</button>
						        <h4 class="modal-title"> 프로젝트 참여자 </h4>
						      </div>
						      <div class="modal-body">
								<br>
						        	<div>
						        		<c:forEach var="users" items="${users}">
						        	
						        		 	<img id="imguser" src="/user/profile?usid=${users.usid}">  
											<a href="#" style="cursor:pointer" class="amodal" >${users.usernm}</a><br><br><br>
										</c:forEach>
						        	</div>
						        
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						      </div>
						    </div>
						
						  </div>
						</div>
								<br>	<br><br>			
						<hr>
						<div class="manage" style="float: left;">
							<p>관리자</p><br>
							<c:forEach var="member" items="${member}">
							 <c:if test="${member.author eq 1}">
							<a href="#">${member.usernm}</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="#" class="messagei"><img src="../img/images.png" class="messagei"></a>
							</c:if>
								</c:forEach>
						</div>
						<br><br><br>
						<hr>
						<div class="manage" style="float: left;">
							<p>담당자</p><br>
							<c:forEach var="member" items="${member}">
							<c:if test="${member.author eq 2 }">
							<a href="#">${member.usernm }</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="#" class="messagei"><img src="../img/images.png" class="messagei"></a>
							</c:if>
							</c:forEach>
						</div>
						<br><br><br>
						<hr>
						<div class="manage" style="float: left;">
							<p>참여자</p><br>
							<c:forEach var="member" items="${member }">
							<c:if test="${member.author eq 3 }">
							<a href="#">${member.usernm }</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="#" class="messagei"><img src="../img/images.png" class="messagei"></a>
							</c:if>
							<br>
							
						</c:forEach>
						</div>
						<br><br><br><br><br><br>
						<hr>
						<button type="button" class="btn btn-green btn-lg" id="chatBt"><img src="../icon/chat.png">&nbsp;채팅하기</button>
						<hr>
					</header>

					
				</article>
			
		</aside>
		
		
</body>
</html>