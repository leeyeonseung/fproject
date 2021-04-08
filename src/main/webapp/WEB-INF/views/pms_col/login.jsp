<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>27AGE</title>

	<link rel="apple-touch-icon" href="touch-icon-iphone.png" /> 
	<link rel="apple-touch-icon" sizes="76x76" href="touch-icon-ipad.png" /> 
	<link rel="apple-touch-icon" sizes="120x120" href="touch-icon-iphone-retina.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="touch-icon-ipad-retina.png" />
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

	<link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="../css/font-awesome-4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
	<link href="/css/helper.css" rel="stylesheet" />
	<link href="/css/style.css" rel="stylesheet" />

	<!-- Scripts -->
	<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="/js/jquery-ui.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	
	<script>

$(function(){
		
		$('#idspan').on('click',function(){
			$('#popCmmn').fadeIn(100);	
		})
			
		$('.close-btn').on('click',function(){				
			$('#popCmmn').fadeOut(200);
		})
		
		$('#closeId').on('click',function(){
			$('#idPopup').fadeOut(200);
		})
			
		$('#authBtn').on('click', function(){
		
			var usernm = $('#nameText').val();
			
			var pnum1 = $("#p_no1 option:selected").val();
			var pnum2 = $("input[name=p_no2]").val();
			var pnum3 = $("input[name=p_no3]").val();
			var pno = pnum1+pnum2+pnum3;
			
			$.ajax({
				url:"/user/smsSend",
				type:"post",
				data : {
					"pno": pno,
					"usernm": usernm
				},
				
				success:function(res){
					console.log(res.sw);
					
					if(res.sw=="same"){
						$('#modal2').show();
						setTimeout(function(){ $('#modal2').hide();},1000);
					}else{
						alert("입력한 해당 정보가 없습니다");
						$('#nameText').val("");
						$('#p_no2').val("");
						$('#p_no3').val("");
					}
					
// 					이름하고 휴대전화 번호가 user테이블에 없을 떄 alert로 해당하는 정보가 없습니다
// 					띄우고 인증번호 발송 안되게 하기 정보가 있으면 인증번호 발송 성공하기
				},
				error: function(xhr){
					alert(xhr.status);
				}
			});
		});
		
	
		$('#sublogin').on('click', function(){
			
			 id = $('#usid').val();
			 pass = $('#password').val();
			console.log(id);
		$.ajax({
			url : "/user/jlogining",
			type : "post",
			data : {
				"usid": id,
				"password": pass
				},
			success: function(result){
								
				if(result.result=="fail"){
					$('#modal').show();
					setTimeout(function(){ $('#modal').hide();},1000);
					
					$('#password').val("");
					$('#usid').val("");
				}else{
					location.href="/project/projectpick";
				}
			},
			error : function(xhr){
				alert(xhr.status);			
				}			
			});
		});
		
		$('#findId').on('click',function(){
			var authno = $('#authNumber').val();
			
			$.ajax({
				url :"/user/idHere",
				type : "post",
				data : {"authno": authno},
				success : function(data){
					if(data.usid){
						
					$('#resultId').html("아이디는[ "+data.usid+" ]입니다");
					 $('#popCmmn ').fadeOut(100);
					 $('#idPopup').show();				 
					}
					if(data.fail){
						alert("인증번호가 다릅니다");
						$('#authNumber').val("");
					}
				},
				error : function(xhr){
					alert(xhr.status);
				}
				
			});
		});
		
		$('#passwordspan').on('click', function(){
			$('#popCmmnPs').fadeIn(100);
		});
		
		$('#closePs').on('click', function(){
			$('#popCmmnPs').fadeOut(100);
		});
		
		$('#transferPass').on('click', function(){
			var email = $('#UserEmail').val();
			
			$.ajax({
				url:"/user/transferPass",
				type: "post",
				data: {
					"email" : email
					},
				success : function(data){
					if(data.res == "Exist"){
						alert("임시비밀번호로 로그인하세요");
					}else{
						alert("존재하지 않는 이메일 입니다");	
					}
				},
				error : function(xhr){
					alert("상태"+xhr.status);
				}				
			})			
		});
				
});	
</script>
	
<style>
	#idspan{cursor: pointer;}
	#passwordspan{cursor: pointer;}

	#modal, #modal2{
			display: none;
			position: fixed;
			z-index: 1000; 
            left: 0;
            top: 0;
            width: 100%; 
            height: 100%; 
            overflow: auto; 	 
            background-color: rgb(0,0,0); 
            background-color: rgba(0,0,0,0.1);		
	}
	#modal-content{
			text-align: center;
			background-color: #FE642E;
			margin: 8% auto; 
            padding: 20px;
            border-style: none;
            width: 20%;  
            color: white; 
            font-size: 1.1em;
	}
	#idspan{
		color : white;
		margin-left: 40%;
	}
	#passwordspan {
		color : white;
		margin-right: 0%;
	}
 	#popCmmnPs{ 
		 z-index : 1060;  
		 display:none; 
   		 position:fixed; 
  		 top:0; 
  		 left:0; 
   		 width:100%; 
  		 height:100%; 
	} 
	
	#popCmmn {
/* 		display: none; */
/* 		position : absolute; */
 		z-index : 1050; 
/* 		left : 5%; */
/* 		top : 10%; */
/* 		bottom : 30%; */
/* 		border-radius : 30px; */
/* 		border-style : none; */
/* 		background-color : #E6E6E6; */
/* 		color: black; */
/* 		width: 600px; */
/* 		height: 600px; */
		 display:none;
  		 position:fixed;
 		 top:0;
 		 left:0;
  		 width:100%;
  		 height:100%;
	}
	#idPopup{
		 display:none;
		 z-index : 1030; 
  		 position:fixed;
 		 top:0;
 		 left:0;
  		 width:100%;
  		 height:100%;
	}	
	.popBg{
		position:absolute;
  		top:0;
 		left:0;
  		width:100%;
 		height:100%;
 		background:rgba(0,0,0,0.0);
	}
	.popInnerBox {
  		 display:inline-block; 
         position:absolute;         
         left:38%;
         width:500px;
         height:500px;
         bottom : 23%;
         background:white;
         border-radius:5px;
         border-style : none;
	}
	
	#close,#closePs,#closeId{
		margin-top : 1%;
		margin-left : 93%;
		right: 0;
		border-style: none;
		border-radius: 30px;
	}
	
	.namePut{
		margin-top : 30%;
		margin-bottom: 5%;
		margin-left: 10%;
		
	}
	#nameText{
		margin-left: 10%;
	}
	
	.phonePut{
		margin-left: 10%;
		margin-bottom: 5%;
	}
	
	.chk{
		margin-left: 3%;
	}
	input[type="text"]{
/* 	height: auto; /* 높이 초기화 */  */
	line-height: normal; /* line-height 초기화 */
	padding: .6em .5em; /* 여백 설정 */
	}
	
	select{
		width: 15%;
/* 		height: auto; /* 높이 초기화 */ */
		line-height: normal; /* line-height 초기화 */
		font-family: inherit; /* 폰트 상속 */
		padding: .8em .5em; /* 여백과 높이 결정 */
		border: 1px solid #999;		
	    border-radius: 0px;
		-webkit-appearance: none;
		-moz-appearance: none;
		appearance: none;
		background: url('/img/arrow.jpg') no-repeat 95% 50%;

	}
	select::-ms-expand{
		display: none;
	}
	
	.AuthPut {
		margin-left: 10%;
	}
	
	#authNumber{
		margin-left: 3%;
	}
	
	#tempEmail{
		margin-left: 3%;
	}
	
	#modal_find_pass{
		font-size: 1.5em;
		font-weight: bold;
	}
	
	#authBtn{
		margin-left: 2%;
		border: 1px solid skyblue;
		background-color: rgba(0,0,0,0);
		color : skyblue;
		border-radius: 10px;
		width: 100;
		line-height: 2.1em; 
		font-size: 1.0em;		
	}
	
	.findId{
		margin-top : 8%;
		margin-left: 10%;
		border-style : none;
		background-color: #5f9ea0;
		color : white;
		border-radius: 20px;
		width: 80%;
		line-height: 2.5em; 
		font-size: 1.0em;		
	}
	.transferPass{
		margin-top : 8%;
		margin-left: 10%;
		border-style : none;
		background-color: #5f9ea0;
		color : white;
		border-radius: 20px;
		width: 80%;
		line-height: 2.5em; 
		font-size: 1.0em;		
	}
	
	.errordiv span{
		margin-left: 28%;
		color: red;
	}
	#resultId{
		margin-left: 10%;
		font-size: 1.2em;
	}
	.modal-head{
		margin-top: 10%;
		margin-left: 34%;
	}
	#modal_find_pass_ct{
		color: #5f9ea0;
		margin-top: 3%;
		margin-left: 10%;
		margin-bottom: 15%;
		text-align: center;
	}
	.email-div{
		margin-left: 20%;
	}
</style>
	
</head>

<body>

	<div class="wrapper login-page">

		<div class="row mtop-100">
			<div class="col-md-4 col-md-offset-4 clearfix bg--dark">
				
				<div class="main-logo">27AGE <br><span></span>
					<p>Project Management System</p>
				</div>
				
<!-- 				로그인 정보 전송 -->
			
				<div class="input-group">
					<span class="input-group-addon"><i class="pe-7f-user pe-fw"></i></span>
					<input type="text" id="usid" name="usid" class="input-text form-control" placeholder="아이디" />
				</div>
				<div class="input-group mtop-25">
					<span class="input-group-addon"><i class="pe-7f-lock pe-fw"></i></span>
					<input type="password"  id="password" name="password" class="input-text form-control" placeholder="비밀번호" />
				</div>
				<br>
				<div>
				<input type="checkbox"/> <span style="color: #E6E6E6">Remember me</span>
				<span id="idspan">아이디 찾기</span>&nbsp;&nbsp;&nbsp;
				<span id="passwordspan">비밀번호 찾기</span>
				
				</div>
				<hr>				
				
				
				<input type="button" id="sublogin" 
				 style="background-color:#5f9ea0; color: white;"
				 class="input-text form-control" value="로그인"/>
				
			
				<input type="button" onclick="location.href='/user/joinView'" style="background-color:#395f60; color: white;" class="input-text form-control" value="회원가입"/>
				
<!-- 				로그인 실패 되었을 때 나오는 모달창 -->
				<div id="modal">
					<div id="modal-content">
						일치하는 회원 정보가 없습니다
					</div>
				</div>
				
				<!-- 	인증번호를 보냈을 때 나오는 모달창 -->
				<div id="modal2">
					<div id="modal-content">
						귀하의 번호로 인증번호를 발송하였습니다
					</div>
				</div>
				
				<div id="idPopup">
					<div class="popBg">
						<div class="popInnerBox">
							<button class="close-btn" id="closeId">
        						<i class="fa fa-times"></i>
     					 	</button>
     					 	<div class="namePut">
							<label id="resultId"></label>
							</div>
     					 	
     					 </div>
     				</div>	 
				</div>
								
				
				<div id="popCmmn">
					<div class="popBg">
						<div class="popInnerBox">
							<button class="close-btn" id="close">
        						<i class="fa fa-times"></i>
     					 	</button>
						
							<div class="namePut">
							<label>이름</label>
							<input type="text" id="nameText" style="width: 49%; border: 1px solid #E6E6E6;" placeholder="이름" >
							</div>
							
							<div class="phonePut">
							<label>휴대전화</label>
							<select name="p_no1" id="p_no1" class="chk" style=" border: 1px solid #E6E6E6;">
								<option value="010">010</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select>-						
									
						<input type="text" maxlength='4' name="p_no2" id="p_no2" style="width: 15%; border: 1px solid #E6E6E6; "
    						oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>-
						<input type="text" maxlength='4' name="p_no3" id="p_no3" style="width: 15%; border: 1px solid #E6E6E6;" 
   							 oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
						
						<input type="button" id="authBtn" style="width: 22%;"  value="인증번호"/>
						</div>
						
						<div class="AuthPut">
						<label>인증번호</label>
						<input type="text" maxlength='6' id="authNumber" name="authNumber" style="width: 49%; border: 1px solid #E6E6E6; "
    						oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
    						placeholder="인증번호 6자리 숫자 입력"/>
						</div>
						
						<input type="button" id="findId" class="findId" value="아이디 찾기">
						
						</div>
					</div>
				</div>
				
<!-- 				비밀번호 찾기 -->
				<div id="popCmmnPs">
					<div class="popBg">
						<div class="popInnerBox">
							<button class="close-btn" id="closePs">
        						<i class="fa fa-times"></i>
     					 	</button>

						<div class="modal-head">
						<label id = "modal_find_pass">비밀번호 찾기</label>
						</div>
						<div class="modal-head-content">
						<label id = "modal_find_pass_ct">회원님의 해당하는 이메일로 임시 비밀번호를 전송합니다.
							<br> 발급 받은 임시 비밀번호로 로그인 해주세요. </label>
						</div>
						<div class="email-div">
						<label>이메일</label>
						<input type="text" maxlength='30' id="UserEmail" name="UserEmail"
							 style="width: 60%; border: 1px solid #E6E6E6; "
    							placeholder="27age@google.com"/>
						</div>
						
						<input type="button" id="transferPass" class="transferPass" value="임시비밀번호 전송">
						
						</div>
					</div>
				</div>

				
			</div>
		</div>

	</div> <!-- /wrapper -->
