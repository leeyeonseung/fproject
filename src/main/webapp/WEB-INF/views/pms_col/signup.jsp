<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>27Age</title>

	<link rel="apple-touch-icon" href="touch-icon-iphone.png" /> 
	<link rel="apple-touch-icon" sizes="76x76" href="touch-icon-ipad.png" /> 
	<link rel="apple-touch-icon" sizes="120x120" href="touch-icon-iphone-retina.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="touch-icon-ipad-retina.png" />
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

	<link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="/css/font-awesome-4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
	<link href="/css/helper.css" rel="stylesheet" />
	<link href="/css/style.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- 	datepicker -->
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.8.18/thems/base/jquery-ui.css" type="text/css"/>
		  
	
<!-- Scripts -->
	<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="/js/jquery-ui.js"></script>
	<script type="text/javascript" src="/js/main.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- 	유효성 검사 -->
	<script type="text/javascript" src="/js/join_check.js"></script>
	<script type="text/javascript" src="/js/JYH_jquery.serializejson.min.js"></script>
<!-- 	datepicker -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	
		
	<script>
	 $(function() {
		 

			
		$("#usid").keyup(function(){
			if(reg_check()){
				return false;
			}
		}); 
		
		$("#password").keyup(function(){
			if(reg_check()){
				return false;
			}
		});
		
		$("#password_ck").keyup(function(){
			if(reg_check()){
				return false;
			}
		});
		
		$('#usernm').keyup(function(){
			if(reg_check()){
				return false;
			}
		});
		
		
		$('#emailBtn').on('click',function(){
			email = $('#email').val().trim();
					
			$.ajax({
				url: "/user/sendMail",
				type:"post",
				data : {
						"email" : email
						},
				success : function(data){
// 					$('#jcode').val(${session.joinCode});
					alert("메일을 보냈습니다. 인증코드를 확인하세요");
				},
				error: function(xhr){
					
					alert("상태"+xhr.status());
				},
					dataType:"json"
			})
			
		})
		$('#emailchkBtn').on('click', function(){
				code = $('#emailchk').val().trim();
				
				$.ajax({
					url:"/user/checkcode",
					type : "post",
					data :{ "code" : code
						},
					success : function(result){
						alert("비교결과"+result.result);
						if(result.result=="true"){
						$('#jcode').val("true");							
						}else{
						$('#jcode').val("false");
						}
					},
					error : function(xhr){
						alert("인증실패");
					},
					dataType : "json"
						
					});
					
				});
			
// 			$('#emailchkBtn').on('click', function(){
// 				inputcode = $('#emailchk').val().trim();
// 				joinC = $('jcode').val().trim();
// 			})
			
// 			if(putjc.equals(joinCode)){
// 				alert("인증되었습니다");
// 			}else{
// 				alert("다시 시도해주세요");
// 			}
						
	
		
		 $('#overcheck').on('click',function(){
							 
				idvalue = $('#usid').val().trim();
				
				$.ajax({
					url : "/user/idcheck",
					type:"post",
					data : {
						"usid" : idvalue
					},
					success : function(res){						
						if(res.sw=="1"){
						$('#checkspan').html("이미 사용중인 아이디 입니다").css('color','green');
						$('#idAuth').val("false");
						}else{
							$('#checkspan').html("사용 가능한 아이디 입니다").css('color','green');
							$('#idAuth').val("true");
						}
					},
					error : function(xhr){
						alert("상태 : " + xhr.status);
					},
					dataType : "json"
				})
			})
		 
	
								 
	   $('#datepicker').datepicker();
	  
	   // Getter
	   var dateFormat = $( "#datepicker" ).datepicker( "option", "dateFormat" );
	    
	   // Setter
	   $( "#datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
		
// 	   var today = new Date();
// 	   var endDay = new Date(today.getFulYear()-13, today.getMonth(), today.getDate());
   	   
	   $.datepicker.setDefaults({
        dateFormat: 'yyyy-MM-dd',
        yearRange: "1900:2008",
        changeMonth : true,
        changeYear : true,
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
        yearSuffix: '년'
    });
	   
//  	   $('#emailBtn').on('click',function(){
//  		  alert("매핑성공");
//  		   $('#frm').attr("method", 'post');
//  		   $('#frm').attr("action", '/juser/sendMail');
//  		   $('#frm').submit();
 		   
//  	   });
 	   
 	   $("#joinBtn").on('click',function(){
 		   if($('#idAuth').val() == 'false'){
 			   alert("아이디 중복 확인 부탁드려요");
 			   $('#usid').focus();
 			   return false;
 		   } 	
 		   if($('#jcode').val()=="false"){
 			   alert("인증코드를 양식에 맞게 입력하세요");
 			   $('#jcode').focus();
 			   return false;
 		   } 
 		   
 		   
 		  $('#frm').attr("method", 'post');
		  $('#frm').attr("action", '/user/loginview');
		  $('#frm').submit();
		  alert("회원가입이 되었습니다.");
 	   });
   	
});
   
	</script>
	
<style type="text/css">

	.valid, .invalid {
	
	font-size: 11px;
	font-weight: bold;
	}
	
	.valid{color : green;}
	
	.invalid {color : red;}
	

	
</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp" %>


	

	<div class="widget__content">
						<table class="table">
							<thead>
								<tr>
									<th>27Age에 계정을 만들어보세요</th>
								
								</tr>
							</thead>
							</table>
							</div>
	
<!-- 		회원가입 -->
		<div class="row" style="position: absolute; left: 33%; top:20%; min-width: 1200px">
					<h1 style="position: absolute; left:30%; font-size: 30px; color:white">27Age</h1>
					<br><br>
			<div class="col-md-8">
				<article class="widget" style="width: 100%">
					
					<div class="widget__content">
						
		 <form role="form" id="frm">
						<header class="widget__header">
						<h3 class="widget__title" style="font-weight: bold ;">이메일</h3>						
						</header>
						<input type="text" id="email" name="email" class="chk" maxlength="30" style="border: none;" placeholder="27Age@gmail.com" />
					    <input type="button" id="emailBtn" class="btn btn-skyblue" value="인증코드 받기"></input>
					    <hr>
				   
				   		<input type="text" id="emailchk" name="emailchk" maxlength="8" style="border: none;" placeholder="인증코드입력" />
					    <input type="button" id="emailchkBtn" class="btn btn-skyblue" value="인증하기"></input>
				   	    <input id="jcode" type="hidden" value="false"/> 
				   	    <hr align="left" style="max-width: 180px;">
					  	
					  
				 	    <header class="widget__header">
						<h3 class="widget__title" style="font-weight: bold ;">아이디</h3>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" id="overcheck" class="btn btn-skyblue" value="중복 확인">
						<span id="checkspan"></span>					
						</header>						
						<input type="text" name="usid" id="usid" maxlength="15" class="chk" style="border: none;" placeholder="아이디 입력" />						
						<input id="idAuth" type="hidden" value="false"/>
						<hr>
						<span id="idspan"></span>
						
												
						<br><br>
						<header class="widget__header">
						<h3 class="widget__title" style="font-weight: bold ;">비밀번호</h3>						
						</header>
						<input type="password" id="password" name="password" maxlength="13" class="chk" style="border: none;" placeholder="최소 6 ~ 12자 이내" />
						<hr>
						
						
						<header class="widget__header">
						<h3 class="widget__title" style="font-weight: bold ;">비밀번호 확인</h3>
						</header>
						<input type="password" id="password_ck" name="password_ck" maxlength="13" class="chk" style="border: none;" placeholder="최소 6 ~ 12자 이내" />
						<hr>
						<span id="passwordspan"></span>
						
						
						<br><br>
						<header class="widget__header">
						<h3 class="widget__title" style="font-weight: bold ;">이름</h3>
						</header>
						<input type="text" name="usernm" id="usernm" maxlength="20" style="border: none;"						
						class="chk" placeholder="이름" />
						<hr>
						<span id="namespan"></span>
						
						<br><br>
						<header class="widget__header">
						<h3 class="widget__title" style="font-weight: bold ;">생년월일</h3>						
						</header>
						<input type="text" name="brthday" id="datepicker" style="border: none;" placeholder="생년월일">
						<hr>
						
						
						<header class="widget__header">
						<h3 class="widget__title" style="font-weight: bold ;" style="border: none;">전화번호</h3>
						</header>
						
							<select name="p_no1" class="chk" style="border: none;">
								<option value="010">010</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select>							
					
	-				
<input type="text" maxlength='4' name="p_no2"  placeholder="1234" style="width: 60px; border: none;"
    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>-
<input type="text" maxlength='4' name="p_no3" placeholder="5678" style="width: 60px; border: none;" 
    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
    <br><hr><br>
    		<div style="text-align: center;">
				<input type="button" id="joinBtn" class="btn btn-skyblue" value="회원가입"
					style="width: 300px; height:50px; font-size: 1.1em"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
				<a href="/user/jlogin">취소</a>
					 </div>									
		</form>	
					</div>
					
				</article>
			</div>
		</div>			





</body>
</html>