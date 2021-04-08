<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Levo Admin Theme</title>

<link rel="apple-touch-icon" href="touch-icon-iphone.png" />
<link rel="apple-touch-icon" sizes="76x76" href="touch-icon-ipad.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="touch-icon-iphone-retina.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="touch-icon-ipad-retina.png" />
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet"
	href="../css/font-awesome-4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet"
	href="../jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.css" />
<link href="../css/helper.css" rel="stylesheet" />
<link href="../css/style.css" rel="stylesheet" />

</head>
<style>
</style>
<script>
$(function() {
		$(".board").on("click", function() {
			var mno = $(this).data("mno");
			console.log(mno);
			var re_usid = $(this).data("re_usid");
			console.log(re_usid );
			
			$.ajax({
				url : "/msg/msgDetail",
				type : "get",
				dataType : "json",
				data:{
					"mssageno":mno,
					"re_usid":re_usid
				},
				error : function(xhr) {
					alert("상태 : " + xhr.status);
				},
				success : function(rs){
				
					$('#msgno').text(rs.msgvo.mssageno);
					$('#msgtitle').text(rs.msgvo.mssagesj);
					$('#msgcont').text(rs.msgvo.mssagecn);
					$('#msgusid').text(rs.msgvo.re_usid);
					$('#msgdate').text(rs.msgvo.mssagede);
					$('#balusid').val(rs.msgvo.re_usid);
				}
		
			});
			$("#Detailmodal").modal('show');
			$("#mssageno").val(mno);
			$("#re_usid").val(re_usid);
			
			
			$.ajax({
				url:"/msg/DeState",
				type:'post',
				dataType:"json",
				data:
				{
					"mssageno":mno
				}
				
			});
		
		});
		$('#reply').on("click",function(){
			
			$('#replymodal').modal('show');
		});
	});
</script>


<body>

	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="wrapper">
		<%@ include file="/WEB-INF/views/common/left.jsp"%>

		<section class="content">
			<header class="main-header clearfix">

				<div class="btn-group">
								<button type="button" class="btn btn-default" onclick="location.href='/msg/msgAllList' ">수신함</button>
							<button type="button" class="btn btn-default" onclick="location.href='/msg/msgSentList' ">발신함</button>
				</div>
			</header>

		
		
		

			<article class="widget" id="fresh">
				<header class="widget__header">
					<h3 class="widget__title">보낸 메시지함</h3>
					<div class="widget__config">
						
					</div>
				</header>

				<div class="widget__content">
					<table class="table">
						<thead>
							<tr>
								<th>메세지번호</th>
								<th>제목</th>
								<th>받는사람</th>
								<!--msg.usid 가 발신자 re_usid 수신자 -->
								<th>날짜</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach items="${msgSentList }" var="msg">
								<tr class="board" data-mno="${msg.mssageno}"
									data-re_usid="${msg.re_usid}" data-cont="${msg.mssagecn}">
									<td>${msg.mssageno2}</td>
									<td>${msg.mssagesj}</td>
									<td>${msg.re_usid}</td>
									<td>${msg.mssagede}</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
							<div style="text-align: center;">
							
							<ul class="pagination" >
									 <li class="prev"><a href="/msg/msgSentList?page=1&pageSize=${pageVo.getPageSize()}">«</a>
									</li> 
									 <li class="prev"><a href="/msg/msgSentList?page=${pageVo.getPage() - 1 }&pageSize=${pageVo.getPageSize()}">＜</a>
									</li> 
	
									<c:forEach begin="1" end="${pagination }" var="i">
	
										<c:choose>
											<c:when test="${pageVo.getPage() == i}">
												<li class="active"><span>${i }</span></li>
	
											</c:when>
	
											<c:otherwise>
												<li><a
													href="/msg/msgSentList?page=${i }&pageSize=${pageVo.getPageSize()}">${i }</a></li>
											</c:otherwise>
	
										</c:choose>
									</c:forEach>
	
									<li class="next"><a
										href="/msg/msgSentList?page=${pageVo.getPage() + 1 }&pageSize=${pageVo.getPageSize()}">＞</a>
									</li> 
									<li class="next"><a
										href="/msg/msgSentList?page=${pagination}&pageSize=${pageVo.getPageSize()}">»</a>
									</li> 
								</ul>
				</div>
			</article>



			<div class="row"></div>
			<!-- /row -->
			<!-- <hr style="border:2px solid black;"> -->


		</section>
		<!-- /content -->

		<footer class="main-footer">
			<a class="back-top" href="#"><i class="pe-7s-angle-up-circle"></i></a>
			<p>2021 © hansome is yonghyun.</p>
		</footer>

	</div>
	<!-- /wrapper -->

	<!-- Modal -->
	<div class="modal fade" style="display:" id="Detailmodal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLongTitle"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">메시지 보내기</h5>

				</div>
				<div class="modal-body">

					

						<div class="form-group row">
							<label for="id" class="col-sm-3" style="font-size: 0.9em;">
								<span style="color: red; font-weight: bold;">*</span>번호
							</label>

							<div class="col-sm-9 input-group-sm">
								<label class="form-control" id="msgno"></label>
							</div>
						</div>
						<div class="form-group row">
							<label for="id" class="col-sm-3" style="font-size: 0.9em;">
								<span style="color: red; font-weight: bold;">*</span>제목
							</label>

							<div class="col-sm-9 input-group-sm">
								<label class="form-control"id="msgtitle"></label>
							</div>
						</div>
						<div class="form-group row">
							<label for="id" class="col-sm-3" style="font-size: 0.9em;">
								<span style="color: red; font-weight: bold;">*</span>내용
							</label>

							<div class="col-sm-9 input-group-sm">
								<label class="form-control"id="msgcont"></label>
							</div>
						</div>
						<div class="form-group row">
							<label for="id" class="col-sm-3" style="font-size: 0.9em;">
								<span style="color: red; font-weight: bold;">*</span>발신자
							</label>

							<div class="col-sm-9 input-group-sm">
								<label class="form-control" id="msgusid"></label>
							</div>
						</div>
						<div class="form-group row">
							<label for="id" class="col-sm-3" style="font-size: 0.9em;">
								<span style="color: red; font-weight: bold;">*</span>날짜
							</label>

							<div class="col-sm-9 input-group-sm">
								<label class="form-control" id="msgdate"></label>
							</div>
						</div>

						<br>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" id="modalx" onClick="window.location.reload()">닫기</button>
						<!-- data-dismiss="modal">닫기</button> -->
						
					<button type="button" id="reply" class="btn btn-secondary">답장하기</button>

				</div>
				
			</div>
		</div>
	</div>
	
	
	<!-- Modal -->
	<div class="modal fade" style="display:" id="replymodal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLongTitle"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">메시지 보내기</h5>

				</div>
				<form action="/msg/replysend">
				<div class="modal-body">
					수신자: &emsp;<input type="text" name="re_usid" id="balusid" /> <br><br>
			    	
			    	제목 &emsp;: &emsp;<input type="text" name="mssagesj" id="mssagesj"/>  <br><br>
			        내용	 &emsp;: &emsp;	
		       		<br><br>
		       		<textarea name="mssagecn" id="mssagecn"  cols="50" rows="10"></textarea>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" id="modalx" onClick="window.location.reload()">닫기</button>
							<!-- data-dismiss="modal">닫기</button> -->
						 <input type="submit" id="send" class="btn btn-secondary" value="보내기"/>

				</div>
				</form>
				
			</div>
		</div>
	</div>




	<!-- Scripts -->
	<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="../js/jquery-ui.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<!-- <script type="text/javascript" src="../amcharts/amcharts.js"></script>
		<script type="text/javascript" src="../amcharts/serial.js"></script>
		<script type="text/javascript" src="../amcharts/pie.js"></script> -->
	<script type="text/javascript" src="../js/chart.js"></script>
	<script type="text/javascript" src="../js/map.js"></script>
	<script src="../jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="../jquery-jvectormap-1.2.2/jquery-jvectormap-us-aea-en.js"></script>

	<!-- <script type="text/javascript" src="../js/main.js"></script>  -->


</body>
</html>