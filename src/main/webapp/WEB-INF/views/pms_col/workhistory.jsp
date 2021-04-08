<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Levo Admin Theme</title>

	<link rel="apple-touch-icon" href="touch-icon-iphone.png" /> 
	<link rel="apple-touch-icon" sizes="76x76" href="touch-icon-ipad.png" /> 
	<link rel="apple-touch-icon" sizes="120x120" href="touch-icon-iphone-retina.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="touch-icon-ipad-retina.png" />
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="/css/font-awesome-4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
	<link rel="stylesheet" href="/jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.css"/>
	<link href="/css/helper.css" rel="stylesheet" />
	<link href="/css/style3.css" rel="stylesheet" />
	

</head>
<style>
.item.color1 {
    background-color: #4aaefb;
}
.item {
    display: inline-block;
    vertical-align: top;
    padding: 0 7px;
    margin-top: 4px;
    margin-right: 5px;
    height: 25px;
    line-height: 25px;
    font-size: 20px;
    color: #fff;
    font-weight: 700;
    border-radius: 4px;
}
th, td{
	text-align: center;
}

</style>

<script type="text/javascript">
$(function(){
	
$('#exceldown').on('click',function(){
	
	var charr = new Array(); 
	var charr2 = new Array(); 
 	var workradio =  $('input:radio[name=workradio]:checked').val();
 	var workradio1 = $('input:radio[name=workradio1]:checked').val();
 	var workradio2 = $('input:radio[name=workradio2]:checked').val();
	
    $('input:checkbox[name=sttus1]:checked').each(function() { 
    	charr.push(this.value);
    });
    $('input:checkbox[name=workcheck1]:checked').each(function() { 
    	charr2.push(this.value);
    });
    location.href="/task/excelDownload?charr="+charr+
    									"&charr2="+charr2+
    									"&workradio="+workradio+
    									"&workradio1="+workradio1+
    									"&workradio2="+workradio2;
    
});
});

    

</script>

<script>


	
$(document).ready(function(){
	

	
	$(".main-nav").on("click",function(){
		
		var charr = new Array(); 
		var charr2 = new Array(); 

	    $('input:checkbox[name=sttus1]:checked').each(function() { 
	    	charr.push(this.value);
	    });
	    $('input:checkbox[name=workcheck1]:checked').each(function() { 
	    	charr2.push(this.value);
	    });
	    
		$.ajax({
			url:"/task/TaskAllViewAccess",
			type:"get",
			dataType:"json",
			data : {"workradio":$('input:radio[name=workradio]:checked').val(),
    			"charr":charr,	    		    		
    			"charr2":charr2	, 
				"workradio1":$('input:radio[name=workradio1]:checked').val(),
    			"workradio2":$('input:radio[name=workradio2]:checked').val()
	    			},
			error : function(xhr) {
				alert("상태 : " + xhr.status);
			},
			success: function(data){
			  $('#pageall').empty();
			  code = '';
			  code ='<table class="table" style="font-size: 18px;">';
			  code+='<thead>';
			  code+='<tr id="table">';
			  code+='<th class="num">번호</th>';
			  code+='<th class ="state">상태</th>';
			  code+='<th class ="rank">우선순위</th>';
			  code+='<th class= "name">제목</th>';
			  code+='<th class ="jin">진척도</th>';
			  code+='<th class="dang">담당자</th>';
			  code+='<th class="writer">작성자</th>';
					
			  code+='<th class="startd">시작일</th>';
			  code+='<th class="endd">마감일</th>';
			  code+='<th class="insert">등록일</th>';
					
			  code+='</tr>';
			  code+='</thead>';
		      $.each(data.tasklist,function(i, v){
				code+='<tr>';
				code+='		<td class="num">'+v.jobno+'</td>                                                              ';
				code+='		<td class ="state">                                                                ';
				code+='			<span id="taskStts" class="item color1" style="display: inline-block;">'+v.jobsttus+'</span> ';
				code+='		</td>                                                                              ';
				code+='		<td class ="rank">'+v.jobpriort+'</td>                                                           ';
				code+='		<td class= "name" id="jobname"> <a style="color:black">'+v.jobnm+'</a> </td>                     ';
				code+='		<td class ="jin"> '+v.prgsdo+'% </td>                                                          ';
				code+='		<td class="dang">'+v.manager+' 외  '+v.mcount+'명 </td>                                                     ';
				
				code+='		<td class="writer">'+v.jobwrter+' </td>                                                          ';
				code+='		<td class="startd">'+v.jobbgnde+' </td>                                                          ';
				if(v.jobclosde == null){
					code += '<td class=endd style="text-align: center;"> - </td>';
				}else{
					code += '<td class="endd"> '+v.jobclosde+' </td>';
				}
				
				code+='		<td class="insert">'+v.jobrgsde+' </td>                                                          ';
				code+='	</tr>                                                                                  ';
			    });
				code+='	</table>                                                                                  ';
	

			 $('#pageall').append(code);
			}
		
		});
	});
	
	///////////////////////////////////
	$('.table').on('click','#jobname',function(){
		$('#taskDetail').show();
	})
	$('#closeDet').on('click', function(){
		$('#taskDetail').hide();
	})
  		
	$('.modal-body').on('click','input:checkbox[name="num"]',function(){
		if($(this).prop('checked')){
			$(".num").show();
		}else{
			$(".num").hide();
			//alert($('input:checkbox[id="s2"]').val());
		}
	});
    	      
	$('input:checkbox[name="state"]').on('click',function(){
		if($(this).prop('checked')){
			$(".state").show();
		}else{
			$(".state").hide();
			//alert($('input:checkbox[id="s2"]').val());
		}
	});
    	      
	$('input:checkbox[name="rank1"]').on('click',function(){
		if($(this).prop('checked')){
			$(".rank").show();
		}else{
			$(".rank").hide();
			//alert($('input:checkbox[id="s2"]').val());
		}
	});
    	      
	$("#s4").on("click",function(){
		alert("제목은 필수 입력입니다.");
	})
    	      
	$('input:checkbox[name="jin1"]').on('click',function(){
		if($(this).prop('checked')){
			$(".jin").show();
		}else{
			$(".jin").hide();
			//alert($('input:checkbox[id="s2"]').val());
		}
	});
    	      
	$('input:checkbox[name="dang"]').on('click',function(){
		if($(this).prop('checked')){
			$(".dang").show();
		}else{
			$(".dang").hide();
			//alert($('input:checkbox[id="s2"]').val());
		}
	});
    	      
	$('input:checkbox[name="writer"]').on('click',function(){
		if($(this).prop('checked')){
			$(".writer").show();
		}else{
			$(".writer").hide();
			//alert($('input:checkbox[id="s2"]').val());
		}
	});
    	      
	$('input:checkbox[name="startd"]').on('click',function(){
		if($(this).prop('checked')){
			$(".startd").show();
		}else{
			$(".startd").hide();
			//alert($('input:checkbox[id="s2"]').val());
		}
	});
	
	$('input:checkbox[name="endd"]').on('click',function(){
		if($(this).prop('checked')){
			$(".endd").show();
		}else{
			$(".endd").hide();
			//alert($('input:checkbox[id="s2"]').val());
		}
	});
	
	$('input:checkbox[name="insert"]').on('click',function(){
		if($(this).prop('checked')){
			$(".insert").show();
		}else{
			$(".insert").hide();
			//alert($('input:checkbox[id="s2"]').val());
		}
	});
	
});
</script>
<body>
<%@ include file="/WEB-INF/views/common/2header.jsp" %>
	<div class="wrapper">
		<%@ include file="/WEB-INF/views/common/taskleft.jsp" %>

		
		<section class="content" >
			<header class="main-header clearfix">
				<h1 class="main-header__title" style="margin-top: 15px;">
					<i class="icon pe-7s-home" style=""></i>
					업무내역게시판
				</h1>
			</header>
	

			<div style="margin-top: 30px;">
				<h3 class="widget__title" style="font-size: 25px;">프로젝트 : ${prjctnm} </h3>
				
<<<<<<< .mine
								
				<button type="button" id="exceldown" style="position: absolute; right:33%; top:123px;">엑셀 내려받기</button>
				<button type="button" class="btn btn-light" style="position: absolute; right:25% " onclick="window.open('/gantt/view', '간트차트', 'width=1000, height=400')"><i class="pe-7f-share"></i>&nbsp;간트차트로 보기</button>
				<button type="button" class="btn btn-light" data-toggle="modal" data-target="#myModal" style="position: absolute; right:20% "><i class="pe-7f-note"></i>&nbsp;보기설정</button>
||||||| .r161088
				<a href="/task/excelDownload" style="position: absolute; right:33%; top:123px;" ><i class="pe-7f-download"></i>엑셀 내려받기</a>
				<button type="button" class="btn btn-light" style="position: absolute; right:25% " onclick="window.open('/gantt/view', '간트차트', 'width=1000, height=400')"><i class="pe-7f-share"></i>&nbsp;간트차트로 보기</button>
				<button type="button" class="btn btn-light" data-toggle="modal" data-target="#myModal" style="position: absolute; right:20% "><i class="pe-7f-note"></i>&nbsp;보기설정</button>
=======
				<a href="/task/excelDownload" style="position: absolute; right:36%; top:123px;" ><i class="pe-7f-download"></i>엑셀 내려받기</a>
				<button type="button" class="btn btn-light" style="position: absolute; right:27%; width: 150px;" onclick="window.open('/gantt/view', '간트차트', 'width=1000, height=400')"><i class="pe-7f-share"></i>&nbsp;간트차트로 보기</button>
				<button type="button" class="btn btn-light" data-toggle="modal" data-target="#myModal" style="position: absolute; right:21%; width: 100px; "><i class="pe-7f-note"></i>&nbsp;보기설정</button>
>>>>>>> .r161368
<!-- 				<button type="button" class="btn btn-dark btn-lg" style="position: absolute; right:16.5% ">닫기</button> -->
			</div>
			<div class="row"></div> <!-- /row -->
			<!-- <hr style="border:2px solid black;"> -->
			
			<article class="widget" style="width: 100%;">
				<header class="widget__header">
					<div class="widget__config"></div>
				</header>

				<div class="widget__content">
					<!-- 상세보기 페이지 예시 지워서 다른거 써야됨  -->
					<div id="taskDetail" style="position: absolute; display:none;background: lightgray; height: auto; width:28%; left:55%;" >
					<div style="float : right; background-color: green; width:30px; height:30px; cursor: pointer;" id="closeDet">X</div>
						<!-- 상세 창 시작-->



						<div class="col-md-12">
							<article class="widget">

								<div class="post_write_tab">
									<input type="button" value="업무완료 결재하기" style="float: right;">
									<br> <br>


									<hr>

									<div id="inserttask" style="display: show;">
									
										<form action="/project/등록">
											<input type="hidden" id="progress" value=""> <input
												type="hidden" id="worktype" value="">

											<div class="titleBx">
												<input type="text"
													style="display: block; border: 0; width: 95%; font-size: 18px; line-height: 18px; font-family: inherit; background: none; font-weight: bolder;"
													placeholder="업무명을 입력하세요">
											</div>




											<hr>

											<div class="photo"
												style="cursor: pointer; margin-top: 15px; float: left; position: relative; width: 40px; height: 40px; overflow: hidden; border-radius: 40px;">
												<img id="user-prfl"
													style="width: 30px; object-fit: cover; background-image: url(&amp;quot;https://flow.team/flowImg/FLOW_202102271570543_bff097c5-5feb-411a-b610-e93c6cf1a42d.jpg&amp;quot;); background-size: cover; background-repeat: no-repeat;"
													onerror="" alt=""
													src="https://flow.team/flowImg/FLOW_202102271570543_bff097c5-5feb-411a-b610-e93c6cf1a42d.jpg">

											</div>

											<div class="user" style="margin-left: 30px;">
												<strong id="user-name" class="name"
													style="cursor: pointer; margin-right: 6px; vertical-align: middle;"><span
													class="user_val">이연승</span></strong><strong id="vertical-line"
													style="border-left: 2px solid #e9eaed; vertical-align: middle; font-size: 12px; display: none;">&nbsp;</strong><span
													id="company-name"
													style="color: #969696; padding-left: 3px; vertical-align: middle;"></span>
												<span class="date"> <span id="post-rgsn-dttm">2021-03-02
														12:26</span>
												</span>

											</div>



											<div class="workTab">
												<label> </label>
												<div onclick="worktype(this.id)" id="요청" class="tab1">
													<label>요청</label>
												</div>
												<div onclick="worktype(this.id)" id="진행" class="tab2"
													style="margin-left: -5px;">
													<label>진행</label>
												</div>
												<div onclick="worktype(this.id)" id="완료" class="tab3"
													style="margin-left: -5px;">
													<label>완료</label>
												</div>
												<div onclick="worktype(this.id)" id="보류" class="tab4 on"
													style="margin-left: -5px;">
													<label>보류</label>
												</div>
											</div>

											<br>
											<hr>
											<div class="subtask-header">
												<span class="subtask-title"> "하위업무" <em></em>


												</span>


											</div>

											<div class="container-fluid" style="min-height: 100px;">
												<div style="margin: 10px;">

													<button data-toggle="collapse" href="#collapseExample"
														aria-expanded="false" aria-controls="collapseExample">↓
														항목 추가 입력</button>
												</div>
												<div class="collapse" id="collapseExample">
													<div class="well">
														<div class="workTab">

															<label><img src="../img/audience.png"
																style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;">
															</label> <input type="text" id="person" placeholder="담당자 추가">
															<div id="userlist"
																style="position: absolute; display: none; z-index: 1; left: 164.625px; background: white;">
																<div id="member" style="width: 100%;">test</div>
															</div>
														</div>
														<br>
														<hr>
														<div class="workTab">
															<label><img src="../img/calendar.png"
																style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;">
															</label> <input type="text" class="datepicker" id="stdate"
																placeholder="시작일시 추가">
														</div>
														<br>
														<hr>
														<div class="workTab">
															<label><img src="../img/calendar2.png"
																style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;">
															</label> <input type="text" class="datepicker" id="eddate"
																placeholder="마감일시 추가">


														</div>
														<br>
														<hr>


														<div class="workTab">
															<label><img src="../img/choice.png"
																style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;">
															</label> <input type="text" id="importance" placeholder="우선순위 선택">

															<div id="imp"
																style="position: absolute; display: none; z-index: 1; left: 164.625px; background: white;">
															
															</div>


														</div>

														<br>
														<hr>
														<div class="worktab">
															<label><img src="../img/percentage.png"
																style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;">
															</label>
															<div onclick="progress(this.id)" id="0" class="bar1"
																style="width: 20px; margin-top: 5px;"></div>
															<div onclick="progress(this.id)" id="20" class="bar2"
																style="margin-left: -8px; margin-top: 5px;"></div>
															<div onclick="progress(this.id)" id="40" class="bar3"
																style="margin-left: -8px; margin-top: 5px;"></div>
															<div onclick="progress(this.id)" id="60" class="bar4"
																style="margin-left: -8px; margin-top: 5px;"></div>
															<div onclick="progress(this.id)" id="80" class="bar5"
																style="margin-left: -8px; margin-top: 5px;"></div>
															<div onclick="progress(this.id)" id="100" class="bar6"
																style="margin-left: -8px; margin-top: 5px;"></div>
															<span id="percent">0%</span>
														</div>
													</div>
												</div>
											</div>
											<br>
											<hr>
										</form>
									</div>
								</div>
							</article>
							<!-- /widget -->
						</div>


					</div>

					</div>
					<!--여기까지  -->
					<div id="pageall">
					<table class="table" style="font-size: 18px;">
						<thead>
							<tr id="table">
								<th class="num">번호</th>
								<th class ="state">상태</th>
								<th class ="rank">우선순위</th>
								<th class= "name">제목</th>
								<th class ="jin">진척도</th>
								
								<th class="dang">담당자</th>
								<th class="writer">작성자</th>
								<th class="startd">시작일</th>
								<th class="endd">마감일</th>
								<th class="insert">등록일</th>
							</tr>
						</thead>
						<tbody class="tabtab1">
							<c:forEach items="${tasklist}" var="task">
								 <tr>
									<td class="num">${task.jobno }</td>
									<td class ="state">
										<span id="taskStts" class="item color1" style="display: inline-block;">${task.jobsttus }</span>
									</td>
									<td class ="rank"> ${task.jobpriort} </td>
									<td class= "name" id="jobname"> <a style="color:black">${task.jobnm}</a> </td>
									<td class ="jin"> ${task.prgsdo}% </td>
									<td class="dang"> ${task.manager } 외 ${task.mcount} 명 </td>
									<td class="writer"> ${task.jobwrter } </td>
									<td class="startd">  ${task.jobbgnde} </td>
									<td class="endd">  ${task.jobclosde} </td>
									<td class="insert">  ${task.jobrgsde}</td>							
								</tr> 
							</c:forEach>
						
						</tbody>
						
					</table>
					
					<div style="text-align: center;">
							
							<ul class="pagination" >
									 <li class="prev"><a href="/task/task?page=1&pageSize=${pageVo.getPageSize()}">«</a>
									</li> 
									 <li class="prev"><a href="/task/task?page=${pageVo.getPage() - 1 }&pageSize=${pageVo.getPageSize()}">＜</a>
									</li> 
	
									<c:forEach begin="1" end="${pagination }" var="i">
	
										<c:choose>
											<c:when test="${pageVo.getPage() == i}">
												<li class="active"><span>${i }</span></li>
											</c:when>
	
											<c:otherwise>
												<li><a
													href="/task/task?page=${i }&pageSize=${pageVo.getPageSize()}">${i }</a></li>
											</c:otherwise>
	
										</c:choose>
									</c:forEach>
	
									<li class="next"><a
										href="/task/task?page=${pageVo.getPage() + 1 }&pageSize=${pageVo.getPageSize()}">＞</a>
									</li> 
									<li class="next"><a
										href="/task/task?page=${pagination}&pageSize=${pageVo.getPageSize()}">»</a>
									</li> 
								</ul>
				</div>
					</div>
					
				</div>
		
		
		<footer class="main-footer"></footer>


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