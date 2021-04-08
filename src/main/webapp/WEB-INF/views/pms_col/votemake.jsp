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
td, th {
	text-align: center;
}
</style>
<script>
	

	function insRow() {
		oTbl = document.getElementById("addTable");
		var oRow = oTbl.insertRow();
		oRow.onmouseover = function() {
			oTbl.clickedRowIndex = this.rowIndex
		}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
		var oCell = oRow.insertCell();

		//삽입될 Form Tag
		var frmTag = "<br><input type=text name=votelist placeholder='보기를 입력하세요' style=width:340px; height:20px;> ";
		frmTag += "<input type=button class='btn btn-light btn-sm' value='삭제' onClick='removeRow()'style='cursor:hand'>";
		oCell.innerHTML = frmTag;
	}
	//Row 삭제
	function removeRow() {
		oTbl.deleteRow(oTbl.clickedRowIndex);
	}

	function frmCheck() {
		var frm = document.form;

		for (var i = 0; i <= frm.elements.length - 1; i++) {
			if (frm.elements[i].name == "addText") {
				if (!frm.elements[i].value) {
					alert("텍스트박스에 값을 입력하세요!");
					frm.elements[i].focus();
					return;
				}
			}
		}
	}
$(function() {
	$('.board').on('click', function() {
		var voteno = $(this).data("voteno");
		console.log(voteno);
		var prjctno=$(this).data("prjctno");
		console.log(prjctno);
		var votethema=$(this).data("votethema");
		console.log(votethema);
		var voteendde=$(this).data("voteendde");
		console.log(voteendde);
		
	$('#voteno').val(voteno);	
	$('#prjctno').val(prjctno);	
	$('#votethema').val(votethema);	
	$('#voteendde').val(voteendde);	
	
	$("#frm").submit();
		
	});
});
</script>


<body>

	<form id="frm" action="/vote/voteDetail" method="post">
		<input type="hidden" id="voteno" name="voteno" value="${vote.voteno }"/>
		<input type="hidden" id="prjctno" name="prjctno" value="${vote.prjctno }"/>
		<input type="hidden" id="votethema" name="votethema" value="${vote.votethema }"/>
		<input type="hidden" id="voteendde" name="voteendde" value="${vote.voteendde }"/>
	</form>
	

	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="wrapper">
		<%@ include file="/WEB-INF/views/common/left.jsp"%>



		<section class="content">
			<header class="main-header clearfix">

				<div class="btn-group"></div>
			</header>
			<div class="col-md-12">
				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">투표 만들기</h3>
						<div class="widget__config"></div>
					</header>


					<div class="widget__content">
						<form action="/vote/voteinsert" name="form">
							<input type="text" class="input-text" name="votethema"
								placeholder="투표제목"> 종료일시: &emsp;<input type="date"
								name="voteendde"><br>
							<br>
							<hr>

							<!-- 추가되는거 -->
							<table width="400" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td colspan="2" align="left" bgcolor="#FFFFFF">
										<table width="100%" border="0" cellpadding="0" cellspacing="0">
											<tr>
												<td colspan="5" bgcolor="#FFFFFF" height="25" align="left">
													<input name="addButton" type="button" class="btn btn-light"
													style="cursor: hand" onClick="insRow()" value="추가">
													&emsp;<font color="blue">*</font>보기 목록을 추가하세요(최대 5개까지)
												</td>
											</tr>
											<tr>
												<td height="25">
													<table id="addTable" width="400" cellspacing="0"
														cellpadding="0" bgcolor="#FFFFFF" border="0">
														<tr>
															<br>
															<td><input type="text" name="votelist"
																style="width: 340px; height: 27px;"
																placeholder="보기를 입력하세요"></td>

															<td align="left"></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<table width="400" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td height="10"></td>
								</tr>
								<tr>
									<td align="center"></td>
								</tr>
							</table>
							<input type="submit" class="btn btn-light pull-right" value="만들기">
						</form>
						<div class="clearfix"></div>
					</div>
				</article>

				<article class="widget">
					<header class="widget__header">
						<h3 class="widget__title">투표하기</h3>

					</header>

					<div class="widget__content">
						<table class="table">
							<thead>
								<tr>
									<th>투표번호</th>
									<th>투표내용</th>
									<th>시작일시</th>
									<th>종료일시</th>
									<th>종료여부</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${votelist}" var="vote">
									<tr class="board" data-voteno="${vote.realvoteno }" data-prjctno="${vote.prjctno }"
													  data-votethema="${vote.votethema }" data-voteendde="${vote.voteendde }">
										<td>${vote.voteno }</td>
										<td>${vote.votethema }</td>
										<td><fmt:formatDate value="${vote.votede }"
												pattern="yyyy-MM-dd" /></td>

										<td>${vote.voteendde }</td>
										<c:choose>
											<c:when test="${vote.clostt == 0}">
												<td>진행중</td>
											</c:when>
											<c:otherwise>
												<td>종료</td>
											</c:otherwise>
										</c:choose>

									</tr>
								</c:forEach>

							</tbody>
						</table>

					</div>
				</article>
			</div>

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