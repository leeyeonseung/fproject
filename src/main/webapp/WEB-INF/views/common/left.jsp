<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="myModal1" class="modal fade" role="dialog">
  <div class="modal-dialog">
  
  
    <!-- Modal content-->
    <form action="/project/registproject">
    <div class="modal-content">
      <div class="modal-header">
         <div style="color: black; font-weight: 800; text-align: center; padding-top: 10px; font-size: 25px;">
        <button type="button" class="close" data-dismiss="modal">x</button>
        <h4 class="modal-title">프로젝트 만들기</h4>
        </div>
        <hr>
        <br>
        <select name="prjctty" style="background: cadetblue; margin: 4px; width: 150px; height: 35px;">
        	<option value="1">팀프로젝트</option>
        	<option value="2">회사프로젝트</option>
        	<option value="3">개인프로젝트</option>
        </select>
        	
        <br><br>
        <input type="text" style="margin: 4px;" name="prjctnm" Placeholder="프로젝트 제목"/><br> 
        <input type="text" style="margin: 4px;" name="prjctcn" Placeholder="설명글 입력"/> 
      </div>
      <div class="modal-body">
    	<div class="radiobox">
    		<span>글 작성권한</span><br><br>
            <label class="first" for="All_MNGR_WR_CM_YN">
                <input type="radio" id="All_MNGR_WR_CM_YN" value="1" checked="" name="snwrtatr">
                <span data-langcode="FL557">전체</span>
            </label>
            
            <label for="Admin_MNGR_WR_CM_YN">
                <input type="radio" id="Admin_MNGR_WR_CM_YN" value="2" name="snwrtatr">
                <span data-langcode="CM1332">프로젝트 관리자만</span>
            </label>
            <hr>
    		<span>파일 다운로드 권한</span><br><br>
            <label class="first" for="All_MNGR_WR_CM_YN">
                <input type="radio" id="All_MNGR_WR_CM_YN" value="1" checked="" name="filedownatr">
                <span data-langcode="FL557">전체</span>
            </label>
            
            <label for="Admin_MNGR_WR_CM_YN">
                <input type="radio" id="Admin_MNGR_WR_CM_YN" value="2" name="filedownatr">
                <span data-langcode="CM1332">프로젝트 관리자만</span>
            </label>
        </div>
        <hr>
      </div>
    
      
      <div class="modal-footer">
      	<input type="submit" style="background: #333333;" class="btn btn-primary" value="등록완료"  />
        <button type="button" style="background:azure;" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
    </form>

  </div>
</div>
	<aside class="sidebar">
	<br>
		<button type="button" class="btn btn-green btn-lg" data-toggle="modal" 
		data-target="#myModal1" style="border-radius: 40px; font-weight: bolder; 
		color: black; margin-bottom: 10px;
   		margin-top: 10px;">&nbsp;+&nbsp; 새프로젝트</button>	
	<br>
	<br>
			<ul class="main-nav">
				<li>
					<a class="main-nav__link" href="/project/projectpick">
						<span class="main-nav__icon"><i class="pe-7s-bookmarks"></i></span>
						프로젝트 전체 <span class="badge main-nav__badge badge--red">8</span>
					</a>
				</li>
				<li>
					<a class="main-nav__link" href="#">
						<span class="main-nav__icon"><i class="icon pe-7s-star"></i></span>
						공지사항
					</a>
				</li>
				<li>
					<a class="main-nav__link" href="/task/task">
						<span class="main-nav__icon"><i class="pe-7s-copy-file"></i></span>
						전체 업무
					</a>
				</li>
				<li class="main-nav--collapsible">
					<a class="main-nav__link" href="/gantt/view">
						<span class="main-nav__icon"><i class="icon pe-7s-graph3"></i></span>
						간트차트
					</a>
<!-- 					<ul class="main-nav__submenu"> -->
<!-- 						<li><a href="#"><i class="pe-7s-help1"></i><span>Error 404</span></a></li> -->
<!-- 						<li><a href="#"><i class="pe-7s-note"></i><span>Login</span></a></li> -->
<!-- 					</ul> -->
				</li>
				<li>
					<a class="main-nav__link" href="/calendar/view">
						<span class="main-nav__icon"><i class="icon pe-7s-date"></i></span>
						일정 관리
					</a>
				</li>
				<li>
					<a class="main-nav__link" href="#">
						<span class="main-nav__icon"><i class="icon pe-7s-diskette"></i></span>
						파일 보관함
					</a>
				</li>
				<li>
					<a class="main-nav__link" href="#">
						<span class="main-nav__icon"><i class="pe-7s-credit"></i></span>
						결재함
					</a>
				</li>
				<li>
					<a class="main-nav__link" href="/project/complateproject">
						<span class="main-nav__icon"><i class="pe-7s-cloud"></i></span>
						완료 프로젝트 보관함
					</a>
				</li>
			</ul>
		</aside> <!-- /main-nav -->


</body>
</html>