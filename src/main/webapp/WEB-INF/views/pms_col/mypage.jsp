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
	<link href="/css/mypage.css" rel="stylesheet" />
	

	<!-- Scripts -->
	<script type="text/javascript" src="/js/map.js"></script>
	<script type="text/javascript" src="/js/main.js"></script>
	<script type="text/javascript" src="/js/jquery-ui.js"></script>
	<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
	<!-- 	유효성 검사 -->
	<script type="text/javascript" src="/js/join_check.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	
	<script>
	$(function(){
		
		$('#pass_change').on('click', function(){
			$('#content_setting').hide();
			$('#content_pass').show();
		})
		
		$('#pass_changeBtn').on('click', function(){
			$('#password').keyup(function(){
				if(reg_check()){
					
					return;
				 }
			 })
		    $('#password_ck').keyup(function(){
					if(reg_check()){
						
						return;
					 }
				})		
			
			var password = $('#password').val().trim();
			$.ajax({
				url:"/user/passchange",
				type:"post",
				data :{
					"password" : password
				},
				success : function(result){
					if(result.sw == "success"){
						alert("비밀번호가 변경되었습니다.");
						$('#password').val("");
						$('#password_ck').val("");
						
					}else{
						alert("실패");
					}
				},
				error : function(xhr){
					alert("상태"+xhr.status);
				}
			})
			
						
		})
		
		$('#changephotoicon').on('click', function(){
 			$('#baseProfileSetting').show();			
 			
 			})
			
		$('#changePhoto').click(function(e){
				e.preventDefault();
				$('#profile_file').click();
				$('#baseProfileSetting').hide();
				
// 			if($('.content').click()){
// 				$('#baseProfileSetting').hide();
// 			}
										
		})
		
		function removepf(){
			$.ajax({
				url:'/profile/removeProfile',
				type:'post',
				success : function(){
// 					removeafter();
				},
				error : function(xhr){
					alert("상태"+ xhr.status);
				}			
			})
		}
		
		$('#removePhoto').on('click', function(){
			removepf();
			$("#profile_file").change(function(){
					alert("치사하군");
	 			   readURL(this);
	 			})
						
			$('#baseProfileSetting').hide();
			
		})
		
// 		function removeafter(){
// 			$("#profile_file").change(function(){
// 			   readURL(this);
// 			})
// 			}
		
 		function uploadFile(){
 			var formData = new FormData();
 			var inputFile = $('input[name ="profile_file"]');
 			var files = inputFile[0].files;
			
			formData.append('uploadFiles', files[0]);
			
			$.ajax({
				url : '/profile/uploadFile',
				type : 'post',
				data : formData,
				contentType : false,
				processData : false,
				success : function(result){
					$('#nmmodal').show();
					
					setTimeout(function(){ $('#nmmodal').hide();},2000);
				},
				error: function(xhr){
					alert(xhr.status);
				}
						
 		})
 		}		
		
					// picture input의 파일 변경시 이벤트 
					
					
			$("#profile_file").change(function(){
			   uploadFile();
			   readURL(this);
			   alert($("#profile_file").val());
			  		
			})
			
		
				
		
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader(); 
			  
				reader.onload = function (e) {
					$('#pictureViewImg').attr('src', e.target.result);  
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		
		
		
		$('.usernm_edit').on('click', function(){
			$('.usernm_edit').hide();
			$('.usernm_save').show();
		})
		
		$('.usernm_cbtn').on('click', function(){
			$('.usernm_save').hide();
			$('.usernm_edit').show();
		})
		
		
		
		$(".over_edit").on('click', function(){
			$('.over_edit').hide();
			$(".save_edit").show();
		})
		
		$(".btn_telcancel").on('click', function(){
				$(".save_edit").hide();
				$('.over_edit').show();
		})
		
		$('#usernm_btn').on('click', function(){
			usid = $('#usid_input').val();
			usernm = $('#usernm').val().trim();
						
			$.ajax({
				
				url:"/user/nmedit",
				type:"post",
				data : {
					"usid" : usid,
					"usernm" : usernm
				},
 				async: true,
				success : function(data){
					
					$('.usernm_save').hide();
					$('#usernm_strong').html(data.user);
					$('.usernm_edit').show();
// 					alert("이름이 변경되었습니다");
// 					self.close();

					$('#nmmodal').show();
					
					setTimeout(function(){ $('#nmmodal').hide();},1000);

				},		
				error : function(xhr){
					alert("상태" + xhr.status);
					},
				dataType : "json"
			})
						
		})
		
		$('#tel_btn').on('click', function(){
			usid = $('#usid_input').val();
			telno = $('#telno').val();
			
			$.ajax({
				url : "/user/teledit",
				type : "post",
				data : {
					"usid" : usid,
					"telno" : telno
				},
				success : function(data){
					$('.save_edit').hide();
					$('.strong_tel').html(data.tel);
					$('.over_edit').show();

					$('#nmmodal').show();
					
					setTimeout(function(){ $('#nmmodal').hide();},1000);
				},
				error : function(xhr){
					alert(xhr.status);
				},
				dataType : "json"
			
			})
			
		})
		
		
		
 	})
		
	</script>
	
	<style>
		
			
	</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/tiles/header.jsp" %>
	

	<%@ include file="/WEB-INF/views/common/Mypageleft.jsp" %>	

		<section class="content">


			<div class="col-md-8" id="content_setting" style="margin-left: 100px;">
				<br>
				<h1 style="font-size: 1.5em; margin-top: 3%;">계정 정보</h1>
				<hr>
				<br>
				<h2>내 프로필</h2>
				<br>
				<div class="userphoto" 
					 style="border-radius: 90px;
    						margin-left : 45%;
    						height: 120px;
    						width: 120px;   						
    						position: relative;
    						display: block;
    						">
    			
    			
				<img src="/profile/picture?usid=${S_USER.usid}" 
					 id="pictureViewImg" 
					 style="
							transform: scale(1.5, 1.5);					 		
					 		bottom : 23%;
					 		position : absolute;
					 		background-size : cover;
					 		border-radius: 90px;
					 		background-repeat : no-repeat;"/>
				
    		<form id="uploadForm">
    			<a id="changephotoicon" style="margin-bottom: 0; margin-right: 10%; transform: scale(1.1, 1.1);">
				<input id="profile_file" name="profile_file" type ="file" style="display: none;"
						accept=".gif, .jpg, .png">
				</a>
			</form>
				</div>
    			  			
    			  	<div id="baseProfileSetting" class="settinglayer" 
    			  		style="left: 55%; top: 25%; display: none;">
    			  		<div class="settinglist" style="font-size: 12px; padding: 5px 0px 5px 0px;">
    			  			<a id="changePhoto" style="padding: 5px 10px 10px 10px; 
    			  				border-bottom: 1px solid #efefef;">프로필 사진 변경</a>
    			  			<a id="removePhoto" style="padding: 10px 10px 5px 10px;">프로필 사진 삭제</a>
    			  	
    			  		</div>			  	
    			  	</div>
<!-- 				</div> -->
			
			
<!-- 			modal 부분 -->
				<div id ="nmmodal" class="modal">
					<div class="modal-content">
						변경되었습니다
					</div>	
				</div>
						
				<hr>		
				<div class="col-md-8" style="margin-left: 5%; font-size: 1.0em;">
				<ul class="fix_info">
				
				<li>		
				<div class="usid_div" style="display: inline-block;">
				<label>아이디</label>
				<input id="usid_input" type="hidden" value="${S_USER.usid}">
				<strong class="s_usid">${S_USER.usid}</strong>
				</div>
				</li>
				
				<li>		
				<div class="usernm_edit" style="display: inline-block;">
				<label>이름</label>
				<strong id="usernm_strong">${S_USER.usernm}</strong>
				<a class="usernm_fix">수정</a>
				</div>
				
				<div class="usernm_save" style="display: none">
				<label>이름</label>
				<input type="text" id="usernm" name="usernm"
					placeholder ="이름" >
				<input type ="button" id="usernm_btn" class="btn btn-skyblue" value="저장" />
				<a class="usernm_cbtn">취소</a>
				</div>									
				</li>
				
				
				<li>
				<div style="display: inline-block;">
				<label>이메일</label>
				<strong>${S_USER.email}</strong>
				</div>
				
				</li>
				

				<li>
				<div class="over_edit" style="display: inline-block;">
				<label>휴대폰 번호</label>
				<strong class="strong_tel">${S_USER.telno}</strong>
				<a class="btn_teledit" id="btn_teledit">수정</a>
				</div>					
				<div class="save_edit" style="display:none;" >			
				<label >휴대폰 번호:</label>
				<input type="text" id="telno" name="telno" placeholder="010-0000-0000" />
				<input type="button" id="tel_btn" class="btn btn-skyblue" value="저장">
				<a class="btn_telcancel">취소</a>
				</div>
				
				</li>
				
				<li>
				<div style="display: inline-block;">
				<label>회사명</label>
				<strong><c:if test="${S_USER != null }">${S_USER.cmpnynm}</c:if></strong>
				</div>
				</li>
			</ul>
			</div> 
			</div>
<!-- 			비밀번호 변경 페이지 id="content_pass" -->
	<div class="col-md-8" id="content_pass">
		<div class="b_modify">
		<h1>비밀번호 변경</h1>
		<hr>
		</div>
	    <div class="b" style="margin-top: 200px;">
		<div class="b_identify" style="margin-left: 300px; margin-top: 100px;">
		<label>비밀번호</label>
		<input class="pass_toll" type="password" placeholder="비밀번호" name = "password" id="password">
		<br><br>
		
		<label>비밀번호 확인</label>
		<input class="passcheck_toll" type="password" placeholder="비밀번호 확인" name = "password_ck" id="password_ck" >
		<br>
		<span id="passwordspan"></span>
		<br>
		</div>
		
		
		<input type="button" id="pass_changeBtn" 
			style=" background-color:#5f9ea0; color: white; margin-left: 330px;" class="input-text form-control" value="변경하기">
	</div>
	</div>
	</section> <!-- /content -->
	


</body>
</html>