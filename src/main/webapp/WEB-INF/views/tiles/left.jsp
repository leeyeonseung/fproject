<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
$(function(){
	
function come_notice(){
	console.log("gfdgdfgdf");
	$.ajax({
		url : "/project/notice1",
		type: "get",
		success : function(data){
			$(.content).html(data.url);
		},
		error: function(xhr){
			alert(xhr.status);
		}
	})
}
});
</script>

  

</head>
<body>

	<aside class="sidebar">
			<ul class="main-nav">
				<li>
					<a class="main-nav__link" href="/project/projectMain?prjctno=${prjctno}">
						<span class="main-nav__icon"><i class="icon pe-7s-home"></i></span>
						Main <span class="badge main-nav__badge badge--red">8</span>
					</a>
				</li>
				
				
				
				<li>
					<a class="main-nav__link" href="/project/projectpick">
						 <span class="main-nav__icon"><i class="icon pe-7s-plus"></i></span> 
						
						프로젝트 생성 / 관리
					</a>
				</li>
				
				<li>
					<a class="main-nav__link" href="/task/task">
						<span class="main-nav__icon"><i class="icon pe-7s-news-paper"></i></span>
						업무 관리
					</a>
				</li>
				
				<li>
					<a class="main-nav__link" href="#">
						<span class="main-nav__icon"><i class="icon pe-7s-note"></i></span>
						일지 관리 
					</a>
				</li>
				
				
				<li>
					<a class="main-nav__link" href="/calendar/view">
						<span class="main-nav__icon"><i class="icon pe-7s-date"></i></span>
						일정 관리
					</a>
				</li>
				
				<li>
					<a class="main-nav__link" href="/notice/pagingNotice">
						<span class="main-nav__icon"><i class="icon pe-7s-star"></i></span>
						공지 사항
					</a>
				</li>
				
				<li>
					<a class="main-nav__link" href="#">
						<span class="main-nav__icon"><i class="icon pe-7s-browser"></i></span>
						나의 게시글
					</a>
				</li>
				
					<li>
					<a class="main-nav__link" href="/project/fileList">
						<span class="main-nav__icon"><i class="icon pe-7s-diskette"></i></span>
						드라이브
					</a>
				</li>
				
				<li>
					<a class="main-nav__link" href="/gantt/view">
						<span class="main-nav__icon"><i class="icon pe-7s-graph3"></i></span>
						간트 차트
					</a>
				</li>
				
				
			</ul>
		</aside> <!-- /main-nav -->


</body>
</html>