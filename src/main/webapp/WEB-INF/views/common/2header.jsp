<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
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
	
	$('#schoolList').on('click','li',function(){		
		console.log(school);
		var school = $(this).text();
		$('#word').val(school);		
		$('#schoolList').hide();
	});
});

function search(target){
	var word = target.value;
	console.log(word);
	
	//start Ajax 
	$.ajax({
		type : 'GET', 
		dataType : 'json', 
		url : "/msg/msgkeydown",
		error : function(err) { 
		console.log("실행중 오류가 발생하였습니다."); 
		}, 
		data:{
			"value":word
		},
		success : function(data) { 
			
			console.log("data확인 : "+data.content);
			console.log("data확인 : "+data);
			console.log("결과 갯수 : "+data.content.length); 
			console.log("첫번째 결과 : "+data.content[0]);
			
			var checkWord = $("#word").val(); //검색어 입력값 
			$("#schoolList").empty(); 
			
			console.log(data.content.length);
			
			if(checkWord.length > 0 && data.content.length > 0){
				for (i = 0; i < data.content.length; i++) {
					$("#schoolList").append(
					"<li class='schoolList' data-school="+data.content[i].usid+" value='"+ data.content[i].usid+ "' data-input='" + data.content[i].usid + ">" 
					+ "<a href='javascript:void(0);'>"+ data.content[i].usid + "</a>" + "</li>");
				}
			} 
		}
	});//end Ajax 
 		
	$('.exampleModalLong').on('hidden.bs.exampleModalLong', function (e) {
		$(this).find('exampleModalLong')[0].reset()
	});
}

</script>
</head>
<body>

	<header class="top-bar">
        <div class="logo2">
               <a href=""><img src="../img/PMS-logo-white.png" id="pmslogo2" alt="#"></a>

        </div>
	
		
		<ul class="profile">
			
			<li class="profile--higlighted1"><span
				class="badge profile__badge badge--red" id="cnt"></span> <a
				class="dropdown-toggle" data-toggle="dropdown"
				onclick="return false;" href="#"> <i class="pe-7f-mail"></i>
			</a>
				<ul class="dropdown-menu pull-right">
					<li><a style="color: white; width:200px;">
						<button style="background: azure; color: black;" type="button" data-toggle="modal" data-target="#exampleModalLong">메시지 작성하기💌</button></a></li>
					<li><a href="/msg/msgAllList"><i class="icon pe-7s-mail" style="margin-left:35px; color:white;"></i>메시지함</a></li>
				</ul>
			</li>
				
			<li class="profile--higlighted">
				 
				<a class="dropdown-toggle" data-toggle="dropdown" onclick="return false;" href="#"> <i class="pe-7f-drawer"></i></a>
				<ul class="dropdown-menu pull-right">
					<li><a href="/vote/votemake" style="color:white; width:200px;"><i class="icon pe-7s-drawer"></i>&nbsp;투표 만들기 & 투표함</a></li>
				</ul>
			</li>
			
			<li>
				<a class="dropdown-toggle" data-toggle="dropdown" href="#" onclick="return false;" class="profile__user">

					<span class="profile__name"> ${S_USER.usernm }<span>님</span> <i class="pe-7s-angle-down"></i></span>
				</a>
				<ul class="dropdown-menu pull-right">
					<li><a href="/user/jmypage"><i class="icon pe-7s-info"></i> 마이 페이지 </a></li>
					<li><a href="/user/jlogout"><i class="icon pe-7s-close-circle"></i> 로그아웃</a></li>
				</ul>
			</li>
			
			
		</ul>

	</header>
	<!-- /top-bar -->

	
	<!-- Modal -->
	<div class="modal fade" style="display:" id="exampleModalLong"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header" style="background: cadetblue;">
					<h5 class="modal-title" id="exampleModalLongTitle" style="font-weight: normal; color:aliceblue; text-align: center;" >메시지 보내기</h5>

				</div>
				<div class="modal-body" style="margin:10px;">
				
					<div style="postion:relative;" id="sendmsging">
					수신자 : 
					<input style="margin-left:12px;" type="text" id="word" name="re_usid" placeholder="검색어를 입력하세요." autocomplete="off" onkeyup="search(this);">
					<ul id="schoolList" >
					
					</ul>
					<hr>
					</div>
					<div style="margin-top: 20px;">	
					제목 &emsp;: &emsp;<input style="margin-bottom:10px;" type="text" name="mssagesj" id="mssagesj" /><br>
					내용 &emsp;: &emsp;<input type="text" name="mssagecn" id="mssagecn" />
					</div>		
					</div>
					
					<div style="position:absolute; z-index: 100; width:400px; background-color: white; top:43px;">
					
					
				</div>
				
				
					
				<div class="modal-footer" style="background:cadetblue";>
					<button type="button" class="btn btn-secondary" style="background: #333333;"
						data-dismiss="modal">닫기</button>
					<button type="button" id="sendajax" style="background: #333333;" class="btn btn-secondary">보내기</button>

				</div>

			</div>
		</div>
	</div>


</body>
</html>