<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.3.0/sockjs.min.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.js"></script> -->
<script>
var socket;
function initSocket(url) {
	socket = new SockJS(url);
	
	socket.onmessage = function(evt) {
		$("#data").append(evt.data + "<br/>");
	};
	
	$("#sendBtn").on("click", function() {
		var msg = $("#message").val();
		socket.send(msg);
		var userId = "${user.usid}";
		$.ajax({
			url : '/socket/insertMessage',
			type : 'post',
			data : {"chttcn" : msg, "usid" : userId},
			dataType : 'json'
		})
	});
	
	socket.onclose = function(evt) {
		$("#data").append("연결 종료");
	}
}
$(document).ready(function() {
	var userId = "${user.usernm}";	//사용자 아이디를 파라미터로 받는다
	
	$("#userId").text(userId);
	
	initSocket("/ws/chat?userId=" + userId);
});

	
</script>
</head>
<body>
	<h1 id="userId"></h1>

	<div id="data" style=" width:500px; height:500px; border:1px solid black;"></div>
	
	<input type="text" id="message" name="message"/> <br>
	<button id="sendBtn">전송</button><br>
	
</body>
</html>