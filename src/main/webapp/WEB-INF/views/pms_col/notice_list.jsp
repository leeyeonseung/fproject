<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항 리스트</title>

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


<style>
#aclick:link {
		color: black;
	}
#aclick:hover {
		color: black;
		text-decoration: none;
	}
#aclick:visited {
		color: black;
		text-decoration: none;
	}
	
.pagination{
	margin-left : 42%;
	}
#insertbt{
	float: right;
}
</style>


</head>
<body>
<form id="frm" action="/notice/noticeDetail">
	<input type="hidden" id="sntncno" name="sntncno" value=""/>
</form>
	


	
	
	


		<section class="content">
			

		<!--
	 		////////////////////////
			Dynamic content STARTS here
			////////////////////////
		-->



		


		<div class="row" style="width: 100%; margin-left: 50px;" >

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
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>날짜</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="noticeList" items="${noticeList}">
								<tr class="noticeClick" data-sntncno="${noticeList.sntncno }" >
									<td>${noticeList.sntncno }</td>
									<td>${noticeList.noticesj } </td>
									<td>${noticeList.wrterid }</td>
									<td>${noticeList.writngde }</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
						<ul class="pagination">
									 <li class="prev"><a
										href="/notice/pagingNotice?page=1&pageSize=${pageVo.getPageSize()}">«</a>
									</li> 
									 <li class="prev"><a
										href="/notice/pagingNotice?page=${pageVo.getPage() - 1 }&pageSize=${pageVo.getPageSize()}">＜</a>
									</li> 
	
									<c:forEach begin="1" end="${pagination }" var="i">
	
										<c:choose>
											<c:when test="${pageVo.getPage() == i}">
												<li class="active"><span>${i }</span></li>
	
											</c:when>
	
											<c:otherwise>
												<li><a
													href="/notice/pagingNotice?page=${i }&pageSize=${pageVo.getPageSize()}">${i }</a></li>
											</c:otherwise>
	
										</c:choose>
									</c:forEach>
	
									<li class="next"><a
										href="/notice/pagingNotice?page=${pageVo.getPage() + 1 }&pageSize=${pageVo.getPageSize()}">＞</a>
									</li> 
									<li class="next"><a
										href="/notice/pagingNotice?page=${pagination}&pageSize=${pageVo.getPageSize()}">»</a>
									</li> 
								</ul>
					
						<c:choose>
							<c:when test="${author eq 1 }">
								<button type="button" class="btn btn-violet" style="display: block;" id="insertbt" onclick="location.href='/notice/noticeInsert'">새글등록</button>
							</c:when>

							<c:otherwise>
								<button type="button" class="btn btn-violet" style="display: none;" id="insertbt" onclick="location.href='/notice/noticeInsert'">새글등록</button>
							</c:otherwise>

						</c:choose>
					
					</article><!-- /widget -->
				</div>
				

			</div> <!-- /row -->
			
			



		<!--
	 		////////////////////////
			Dynamic content ENDS here 
			//////////////////////// 	
		-->

	</section> <!-- /content -->
	
	<!-- <footer class="main-footer">
		<a class="back-top" href="#"><i class="pe-7s-angle-up-circle"></i></a>
		<p>2013 Â© Levo by Pixeden.</p>
	</footer> -->







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

<script>

$(function(){
	$(".noticeClick").on("click",function(){
		//this : 클릭 이벤트가 발생한 element
		// data-속성명 data-userid, 속성명은 대소문자 무시하고 소문자로 인식
		// data-userId ==> data-userid
		var sntncno=($(this).data("sntncno"));
		$("#sntncno").val(sntncno);
		$("#frm").submit();
	});
});



</script>
</html>