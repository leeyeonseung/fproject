<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String resId =(String)request.getAttribute("userid");
 	
	if(resId != null){
%>		
	  { "sw" : " 사용불가능 아이디"	}
<%	}else { %>
	  { "sw" :   " 사용 가능 아이디"	}	
<%	}
%>