<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Levo Admin Theme</title>

	<link rel="apple-touch-icon" href="touch-icon-iphone.png" /> 
	<link rel="apple-touch-icon" sizes="76x76" href="touch-icon-ipad.png" /> 
	<link rel="apple-touch-icon" sizes="120x120" href="touch-icon-iphone-retina.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="touch-icon-ipad-retina.png" />
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

	<link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="/css/font-awesome-4.3.0/css/font-awesome.min.css">
	
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
	<link rel="stylesheet" href="/jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.css"/>
	<link href="/css/helper.css" rel="stylesheet" />
	<link href="/css/style.css" rel="stylesheet" />
	  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body> 
      <!-- header -->
		<%@ include file="/WEB-INF/views/common/f_header.jsp" %> 
	
  
	<div class="wrapper">
        
        <!-- left sidebar -->
		<aside class="sidebar" style="height: 67px;">
			<ul class="main-nav">
				<li class="main-nav--collapsible">
					<a class="main-nav__link" href="#" style="background: gainsboro">
						<span class="main-nav__icon"><i class="icon pe-7s-plus"></i></span>
						새로 만들기
					</a>
					<ul class="main-nav__submenu">
						<li style="height: 50px; background: antiquewhite" id="liupfold"><i class="pe-7s-help1"></i><button type="button" style="border: none; width: 100%; height: 100%; background: none;"  data-toggle="modal" data-target="#myModal">폴더</button></li>
						<li style="height: 50px; background: antiquewhite" id="liupfile"><i class="pe-7s-note"></i><span style="margin: 44%;">파일</span></li>
					</ul>
				</li>
			</ul>
			
			
			<div id="sidefoldertree">
			
			
			
			</div>
		</aside>
		
		<!-- /main-nav -->


		<section class="content">


		<div class="row" >
		
	<div style="width: 100%">
<span><strong>이미지</strong></span>
<hr style="border-top: 2px solid gray;">
</div>

<div style="width: 100%">
<c:forEach items="${filelist}" var="file">
	<c:choose>
	<c:when test="${file.filety eq 'img' }">
	

    <div class="col-md-3 col-sm-6">
				<article class="widget">
				
					<div class="imagediv" data-imgno="${file.fileno}">
					<div><img src="/drive/profile?fileno=${file.fileno}" style="max-width: 80%; max-height: 50%;"/></div>
					<div>
					${file.filenm}
					</div>
					<div class="deletefile" data-fileno="${file.fileno }">
					<span>삭제</span>
					</div>
					</div>
					
					
				</article><!-- /widget -->
			</div> <!-- /col -->
	</c:when>
	</c:choose>
	</c:forEach>
	</div>
	
	<br>
	<br>
	<div style="width: 100%; margin-top:auto;">
	<br>
	</div>
	<br>
	<hr style="border-top: 2px solid gray; width: 100%; margin-top:auto; ">
	<br>
	
	<div style="width: 100%">
<span><strong>파일</strong></span>
<hr style="border-top: 2px solid gray;">
</div>
	
	
	<!-- <span>파일</span> -->
	<!-- <br>
	<hr style="border-top: 2px solid gray; width: 100%; margin-top:auto; "> -->
	<div>
	<!-- <span><strong>파일</strong></span> -->
	<c:forEach items="${filelist}" var="file">
	<c:choose>
	<c:when test="${file.filety eq 'file' }" >
	
			<div class="col-md-3 col-sm-6" >
				<br>
				<article class="widget">
					
					<div class="filediv" data-fileno="${file.fileno}" >
					<div><img src="/img/file.png" style="max-width: 50%; max-height: 50%;" /></div>
					<div>
					${file.filenm}
					</div>
					<div class="deletefile" data-fileno="${file.fileno }">
					<span>삭제</span>
					</div>
					</div>
					
					
				</article>
				<!-- /widget -->
			</div> <!-- /col -->
	</c:when>
	</c:choose>
	</c:forEach>
	</div>
	
	<br>
	<br>
	
	<div> &nbsp;
	<br>
	<hr style="border-top: 2px solid gray; width: 100%; margin-top:auto; ">
	<!-- <span><strong>폴더</strong></span>  -->
	<!-- <br>
	<hr style="border-top: 2px solid gray; width: 100%;">
	<br> -->
	<div style="width: 100%">
	<br>
<span><strong>폴더</strong></span>
<hr style="border-top: 2px solid gray;">
</div>
	<c:forEach items="${filelist}" var="file">
	<c:choose>
	<c:when test="${file.filety eq 'fold' }">
	
			<div class="col-md-3 col-sm-6"  >
				<article class="widget">
				
					<div class="folddiv" data-flpth="${file.filenm}">
					<div><img src="/img/file2.png" style="max-width: 50%; max-height: 50%;"/></div>
					<div>
					${file.filenm}
					</div>
					<div class="deletefile"data-fileno="${file.fileno }">
					<span>삭제</span>
					</div>
					</div>
					
				</article><!-- /widget -->
			</div> <!-- /col -->
	</c:when>
	
			

	</c:choose>
</c:forEach>
</div>

		</div> <!-- /row -->
		
		<!--
	 		////////////////////////
			Dynamic content ENDS here 
			//////////////////////// 	
		-->

	</section> <!-- /content -->
	
	

</div> <!-- /wrapper -->

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <form action="upfolder" method="post">
        <input type="hidden" name="flpth" value="${foldername}">
        <div class="modal-body">
        <input type="text" placeholder="폴더이름을 입력하세요" id="filenm" name="filenm">
        </div>
        <div class="modal-footer">
          <input type="submit" class="btn btn-default" value="확인">
          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        </div>
        </form>
      </div>
      
    </div>
  </div>
 


<form action="/drive/upfile" id="upfileform" method="post" enctype="multipart/form-data">
<input type="hidden" name="flpth" value="${ foldername}">
<input type="file" id="uppfile" name="profile" style="display:none;" onchange="changeValue(this)"/>
</form>

<form action="/drive/profileDownload" id="imgdownform" method="post">

<input type="hidden" id="downimgno" name="fileno">
</form>


<form action="/drive/fileDownload" id="filedownform" method="post">

<input type="hidden" id="downfileno" name="fileno">
</form>



<form action="/drive/foldfileList" id="foldselect" method="post">

<input type="hidden" id="foldflpth" name="flpth">
</form>


<form action="/drive/defile" id="deletefile" method="post">
<input type="hidden" name="flpth" value="${ foldername}">
<input type="hidden" id="defileno" name="fileno">
</form>








<!-- Scripts -->
	<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="../js/jquery-ui.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/chart.js"></script>
	<script type="text/javascript" src="../js/map.js"></script>
	<script src="../jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="../jquery-jvectormap-1.2.2/jquery-jvectormap-us-aea-en.js"></script>
	<script type="text/javascript" src="../js/main.js"></script>


</body>
<script>



	
	
	
	
	


$(function(){


	

    
	
	$( ".filediv" ).dblclick(function() {
		
		var fileno=($(this).data("fileno"));
		$("#downfileno").val(fileno);
		
		$("#filedownform").submit();
		});
	
	
		
	$( ".imagediv" ).dblclick(function() {
		
		var imgno=($(this).data("imgno"));
		$("#downimgno").val(imgno);
		
		
		
		$("#imgdownform").submit();
		});
	
	
	$( ".folddiv" ).dblclick(function() {
		
		var flpth=($(this).data("flpth"));
		$("#foldflpth").val(flpth);
		
		
		
		$("#foldselect").submit();
		});
		
	
	
	
	
	$('#liupfile').click(function (e) {
	    $('#uppfile').click();
	});   
	
	$('.deletefile').click(function (e) {
		var fileno=($(this).data("fileno"));
		$("#defileno").val(fileno);
		
		$("#deletefile").submit();
	});   
	
	





 

	
	
	
})
function changeValue(obj){
		   $("#upfileform").submit();

	}

</script>

</html>