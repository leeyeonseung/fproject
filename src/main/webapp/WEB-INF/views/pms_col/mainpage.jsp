<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

 	<link rel="apple-touch-icon" href="../touch-icon-iphone.png" /> 
	<link rel="apple-touch-icon" sizes="76x76" href="../touch-icon-ipad.png" /> 
	<link rel="apple-touch-icon" sizes="120x120" href="../touch-icon-iphone-retina.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="../touch-icon-ipad-retina.png" />
	<link rel="shortcut icon" type="image/x-icon" href="../favicon.ico" />

	<link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="/css/font-awesome-4.3.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
	<link rel="stylesheet" href="../jquery-jvectormap-1.2.2/jquery-jvectormap-1.2.2.css"/>
	<link href="/css/style.css" rel="stylesheet" />
<!-- 	<link href="/css/style2.css" rel="stylesheet" /> -->
	<link href="/css/pms_style.css" rel="stylesheet" />
	
	
<!-- 	<script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
<!-- 	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
<!-- 	<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script> -->
<!-- 	<script type="text/javascript" src="/js/jquery-ui.js"></script> -->
<!-- 	<script type="text/javascript" src="/js/bootstrap.min.js"></script> -->
<!-- 	<script type="text/javascript" src="/js/main.js"></script> -->

	
	
	<style>
	.imgjyh{
		style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;"
	}
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:400px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:230px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
#keyword {border-color: 1px solid darkgray; border: 0; border-bottom: 1px solid darkgray; }
.searchBtn{background:url("/img/돋보기.jpg")no-repeat; border: none; cursor: pointer; width: 25px; height: 25px; vertical-align:middle;}
#memberList{margin-left: 5%;}


	</style>
</head>


<body>

      <section class="content">
      
      
         
       <!-- <div class="row"> -->
         <div class="col-md-8">
            <article class="widget">
      
            <div class="post_write_tab">
               <ul id="post-category-btn-list">

               
               <li class="ico4 off" style="width: 50%; display: block; float: left;">
                  <a href="#" id="task" style="background-image:url('/img/업무.png'); background-repeat: no-repeat;
                  			 vertical-align:middle; color: darkgray;
                  			margin-right: 50px; margin-top: -2px; text-align: center; font-weight: 800; font-size: 1.3em;">업무</a>
                  <span></span>
               </li>
               <li class="ico3 off" style="width: 50%; display: block; float: left;">
                  <a onclick="kakaozido();" href="#" id="calendar" style="background-image:url('/img/일정.jpg');background-repeat: no-repeat;
                  			 vertical-align:middle; color: darkgray;margin-right: 50px; margin-top: -2px; text-align: center;
                  			  font-weight: 800; font-size: 1.3em;">일정</a>
               
                  
                  <span></span>
               </li>
               </ul>
               <br>
               <br>
                            
               <hr>
               </div>
               
               <div id="inserttask" style="display: show;">
               <form action="/project/등록">
               <input type="hidden" id="progress" value="">
               <input type="hidden" id="worktype" value="">
               <div class="titleBx">
               <input type="text" style="display: block; border: 0; width: 95%;font-size: 18px; line-height: 18px; font-family: inherit; background: none; font-weight: bolder;"  placeholder="업무명을 입력하세요">
               </div>
               <hr>
               <div class="workTab"> 
               <label> </label>
                  <div onclick="worktype(this.id)" id="요청" class="tab1 on" ><label>요청</label></div>
                  <div onclick="worktype(this.id)" id="진행" class="tab2" style="margin-left: -10px;"><label>진행</label></div>
                  <div onclick="worktype(this.id)" id="완료" class="tab3" style="margin-left: -10px;" ><label>완료</label></div>
                  <div onclick="worktype(this.id)" id="보류" class="tab4" style="margin-left: -10px;"><label>보류</label></div>
               </div>
                 
               <br>   
               <hr>
                  
               <div class="container-fluid" style="min-height: 100px;">
                   <div style="margin:10px;">
                  
                     <button id="workmore" data-toggle="collapse"  href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">항목 추가 입력</button>
                  </div>
                  <div class="collapse" id="collapseExample">
                     <div class="welldone" style="    background-color: white; border-style: none; margin-top: 3%;">
                     <div class="workTab"> 
             
                        <label><img src="/img/audience.png" class="imgjyh"  > </label>   
                        <input type="text" id="person" placeholder="담당자 추가" autocomplete="off" onkeyup="search(this);"> 
                        <div id="userlist" style="position: absolute; display: none; z-index: 1; left: 164.625px; background: white;" >
                        </div>            
                     </div> 
                     <br>
                     <hr>
                     <div class="workTab">
                        <label><img src="/img/calendar.png" class="imgjyh" > </label>   
                           <input type="text" class="datepicker" id="stdate" placeholder="시작일시 추가">    
                        </div>
                     <br>
                     <hr>
                           <div class="workTab">
                        <label><img src="../img/calendar2.png" class="imgjyh" > </label>   
                        <input type="text" class="datepicker" id="eddate" placeholder="마감일시 추가" > 
                        
                        
                        </div>
                     <br>
                     <hr>
                     
                              
                        <div class="workTab">
                        <label><img src="../img/choice.png" class="imgjyh"  > </label>   
                        <input type="text" id="importance" placeholder="우선순위 선택"> 
                        
                        <div id="imp" style="position: absolute; display: none; z-index: 1; left: 11%; background: white;" >
                    	<ul id="ranking">
							<li>낮음</li>
							<li>보통</li>
							<li>높음</li>
						</ul>
                        </div>
                        
                     
                           </div>
                      
                      <br>
                      <hr>
                      <div class="worktab">
               <label><img src="/img/percentage.png" style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;" >진척도 </label>   
                  <div onclick="progress(this.id)" id="0" class="bar1" style="width: 20px; margin-top: 5px;"></div>
                  <div onclick="progress(this.id)" id="20" class="bar2" style="margin-left: -8px; margin-top: 5px;"></div>
                  <div onclick="progress(this.id)" id="40" class="bar3" style="margin-left: -8px; margin-top: 5px;"></div>
                  <div onclick="progress(this.id)" id="60" class="bar4" style="margin-left: -8px; margin-top: 5px;"></div>
                  <div onclick="progress(this.id)" id="80" class="bar5" style="margin-left: -8px; margin-top: 5px;"></div>
                  <div onclick="progress(this.id)" id="100" class="bar6" style="margin-left: -8px; margin-top: 5px;"></div>
               <span id="percent" >0%</span> 
               
               </div>
               
                     </div>
                     </div>
                  </div>
                     
               <br>
               <hr>
               <div class="titleBx">
               <!-- <input type="text" style="display: block; border: 0; width: 95%;font-size: 18px; height: 200px; font-family: inherit; background: none; font-weight: bolder;"  placeholder="업무내용을 입력하세요"> -->
               <textarea class="textarea textarea_h" rows="6" placeholder="업무내용을 입력하세요 ✍"></textarea>
               </div>
               <br>
               
                  <button class="btn btn-light pull-right" type="submit" style="background: darkgray">등록</button>
               <hr>
               <br>
               <br>
               </form>
               
            </div>
            
            
<!--             일정  -->
            
            
          <div id="insertcalendar" style="display: none;">

               <div class="titleBx">
               <input type="text" id="fxsj" style="display: block; border: 0; width: 95%;font-size: 18px; line-height: 18px; font-family: inherit; background: none; font-weight: bolder;"  placeholder="일정 제목을 입력하세요">
               </div>
               
               <hr>
               
                 <label>시작일</label>
                 <input type="text" class="datepicker_wstart" id="stdate_wstart" >
              	 &nbsp;&nbsp;&nbsp;~ &nbsp;&nbsp;
              	 <label style="">종료일</label>  
                 <input type="text" class="datepicker_wend" id="stdate_wend" >
          
                <hr>
                
                <div style="postion:relative;" id="sendmember">
					 <label>참석자</label>
					<input style="margin-left:12px;" type="text" id="word" name="find_usid"
					 placeholder="참석자 이름" autocomplete="off" onkeyup="search(this);">
					<ul id="memberList" onclick="usid_h()" >
					
					</ul>
				</div>
					
<!--                 <label>참석자</label> -->
<!--                 <input type="text" placeholder="참석자 추가"> -->
                
                <hr>
                <div style="position:block;">
                	<div style="margin-bottom: 2%;">
          				  
           				         장소  <input type="text" value="" id="keyword" size="50" placeholder="장소를 입력하세요"> 
           					         <button type="button" class="searchBtn" onclick="kakaozido();"></button> 

            		</div>
   				
<!--    					<div id="map" style="width:100%;height:350px; display:block;"></div> -->
   					<div class="map_wrap">
   					 <div id="map" style="width:80%;height:80%;position:block;"></div>

   					 <div id="menu_wrap" class="bg_white">
    				    <div class="option">
        				    
       					 </div>
      					  <hr>
       						 <ul id="placesList"></ul>
     	 					 <div id="pagination"></div>
   					 </div>
					</div>
   				</div>
   				
<!--    				메모 -->
   				<div class="w_memo" style="position: block;">
                <hr>
                
                <textarea id="fxcn" class="textarea textarea_h" rows="6" placeholder="메모를 입력하세요 📅" ></textarea>
                  
               <button id="clBtn" class="btn btn-light pull-right" type="submit" style="background: darkgray">등록</button>
               <br>
               <br>
               </div>
              
               
               
   				</div>
            
   
                       
            </article>  <!--widget-->
         </div>		 <!--col -->
<!--             </div> -->
<!--             </div>  -->
         
      <!-- </div> /row -->
      
      <div class="col-md-8">
            <article class="widget">
      
         <div id="top-layer" class="post_writer" >
         
                     <button style="float: right;" id="in" class="inde" onclick="">삭제</button>
                     <button style="float: right;" id="de" class="inde" onclick="modify()">수정</button>
                        <div class="photo" style="cursor: pointer; margin-top: 15px;">
                           <img id="user-prfl" style="object-fit: cover; background-image: url(&quot;https://flow.team/flowImg/FLOW_202102271570543_bff097c5-5feb-411a-b610-e93c6cf1a42d.jpg&quot;); background-size: cover; background-repeat: no-repeat;" onerror="" alt="" src="https://flow.team/flowImg/FLOW_202102271570543_bff097c5-5feb-411a-b610-e93c6cf1a42d.jpg">
                        </div>
                        <!-- 작성자 사진 -->
                        <div class="user" style="margin-left: 30px;">
                           <strong id="user-name" class="name" style="cursor: pointer;margin-right:6px;vertical-align:middle;"><span class="user_val">이연승</span></strong><strong id="vertical-line" style="border-left:2px solid #e9eaed;vertical-align:middle;font-size:12px;display:none;">&nbsp;</strong><span id="company-name" style="color: #969696;padding-left: 3px;vertical-align:middle;"></span>
                           <span class="date">
                              <span id="post-rgsn-dttm">2021-03-02 12:26</span>
                           </span>
                           
                        </div>
                        <br>
                        <br>
                        <span class="titleReadOnly" id="TASK_NM_READ_ONLY" style="padding-left: 0px; display: inline-block;">태그 테스트</span>
                        <hr>
               <div class="workTab2">
            
                  <div onclick="worktype2(this.id)" id="요청" class="tab1 on" ><label>요청</label></div>
                  <div onclick="worktype2(this.id)" id="진행" class="tab2" style="margin-left: -5px;"><label>진행</label></div>
                  <div onclick="worktype2(this.id)" id="완료" class="tab3" style="margin-left: -5px;" ><label>완료</label></div>
                  <div onclick="worktype2(this.id)" id="보류" class="tab4 " style="margin-left: -5px;"><label>보류</label></div>
               </div>
               
               <br>
               <hr>
               
                              <div class="workTab">
               <label><img src="/img/audience.png" style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;" > </label>                  
               <input type="text" id="person2" name="person2" placeholder="담당자 추가" > 
               <div id="userlist2" style="position: absolute; display: none; z-index: 1; left: 164.625px; background: white;" >
               
               </div>
               
               </div>
               <br>
               <hr>
               <div class="workTab">
               <label><img src="../img/calendar.png" style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;" > </label>   
               <input type="text" class="datepicker" id="stdate2" placeholder="시작일시 추가"> 
               
               
               </div>
               <br>
               <hr>
               
               <div class="workTab">
               <label><img src="../img/calendar2.png" style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;" > </label>   
               <input type="text" class="datepicker" id="eddate2" placeholder="마감일시 추가" > 
               
               
               </div>
               <br>
               <hr>
               
               
               <div class="workTab">
               <label><img src="../img/choice.png" style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;" > </label>   
               <input type="text" id="importance2" placeholder="우선순위 선택"> 
               
               <div id="imp2" style="position: absolute; display: none; z-index: 1; left: 164.625px; background: white;" >
               test
               <br>
               test
               <br>
               test
               <br>
               test
               <br>
               testasdfasdfasdfasasdfasdf
               <br>
               testasdfasdfasfdasdf
               <br>
               testasdfasfdasdfasdfasdf
               <br>
               testasdfasdfasfasdfasdfas
               <br>
               </div>
               
               </div>
               <br>
               <hr>
               <div class="worktab2">
               <label><img src="../img/percentage.png" style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;" > </label>   
                  <div onclick="progress2(this.title)" id="02" title="0" class="inbar1" style="width: 20px; margin-top: 5px;"></div>
                  <div onclick="progress2(this.title)" id="202" title="20" class="inbar2" style="margin-left: -8px; margin-top: 5px;"></div>
                  <div onclick="progress2(this.title)" id="402" title="40" class="inbar3" style="margin-left: -8px; margin-top: 5px;"></div>
                  <div onclick="progress2(this.title)" id="602" title="60" class="inbar4" style="margin-left: -8px; margin-top: 5px;"></div>
                  <div onclick="progress2(this.title)" id="802" title="80" class="inbar5" style="margin-left: -8px; margin-top: 5px;"></div>
                  <div onclick="progress2(this.title)" id="1002" title="100" class="inbar6" style="margin-left: -8px; margin-top: 5px;"></div>
               <span id="percent2" >0%</span>
               
               </div>
               <br>
               <hr>
               <div class="titleBx2">
                  <input type="text" style="display: block; border: 0; width: 95%;font-size: 18px; line-height: 18px; font-family: inherit; background: none; font-weight: bolder;">
               </div>
               <br>
               <hr>
            
                     </div>
      
      </article>
      </div>
 
   </section>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="/js/jquery-ui.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/js/main.js"></script>  
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=12ec3e3d9a990c761fe5c8e75bd703ae&libraries=services"></script>
<script>
function worktype(clicked_id){
   $('#worktype').val(clicked_id);
}
function progress(clicked_id){
   $('#progress').val(clicked_id);
}
function worktype2(clicked_id){
   $('#worktype2').val(clicked_id);
}
function progress(clicked_id){
   $('#progress2').val(clicked_id);
}
// WINDOW.SETTIMEOUT(FUNCTION() {
//     MAP.RELAYOUT();
// }, 0);

function search(target){
	var word = target.value;
	console.log(word);
	
	//start Ajax 
	$.ajax({
		type : 'GET', 
		dataType : 'json', 
		contentType: 'application/json',
		url : "/calendar/attendkeydown",
		data:{
			"usernm":word
		},
		error : function(err) { 
		console.log("실행중 오류가 발생하였습니다."); 
		}, 
		success : function(data) { 
			
			console.log("data확인 : "+data.memvo);
			console.log("data확인 : "+data);
			console.log("결과 갯수 : "+data.memvo.length); 
			console.log("첫번째 결과 : "+data.memvo[0]);
			
			var checkWord = $("#word").val(); //검색어 입력값 
			$("#memberList").empty(); 
			
			console.log(data.memvo.length);
			
			if(checkWord.length > 0 && data.memvo.length > 0){
				for (i = 0; i < data.memvo.length; i++) {
					$("#memberList").append(
					"<li class='memberinfo' data-usid="+data.memvo[i].usid+" data-usernm="+data.memvo[i].usernm+">" 
					+ "<a href='javascript:void(0);'>"+ data.memvo[i].usernm+"  "+ data.memvo[i].email + "</a>" 
					+ "<input type = 'hidden' id='usid_h' value="+data.memvo[i].usid+"/>"+
					"</li>"
					
					);
				}
			} 
		}
	});//end Ajax 
}

$('#ranking').on('click','li',function(){
	var rank = ($(this).text());
	$('#importance').val(rank);
	$('#ranking').hide();
})
$('#importance').on('click', function(){
	$('#ranking').show();
})


// 	참석자 리스트 불러오기
function usid_h(){
$('#memberList').on('click','li',function(){		
	var school = ($(this).data("usernm"));
	usid = ($(this).data("usid"));
	console.log(school);
	console.log("usid usid"+usid);
	$('#word').val(school);		
	$('#memberList').hide();
	
});
}

$('#word').on('click', function(){
	$('#memberList').show();
})

//        일정 등록 버튼 클릭 시
	$('#clBtn').on('click',function(){
		
		  //참석자
		console.log("usid"+usid);//참석자

				
		fxsj = $('#fxsj').val(); 					 //일정제목
		stdate_wstart = $('#stdate_wstart').val();   //시작일
		stdate_wend = $('#stdate_wend').val(); 		 //종료일
// 		word = $('#word').val();  					 //참석자
		keyword = $('#keyword').val(); 				 //장소
		fxcn = $('#fxcn').val();  					 //메모
		
		console.log(stdate_wstart);
		console.log(keyword);
		
		$.ajax({
			url : "/calendar/insertCalendar",
			type: "post",
			data : {"fxsj":fxsj,
					"fxbgnde":stdate_wstart,
					"fxendde": stdate_wend,
					"chargerid":usid,
					"fxlocation":keyword,
					"fxcn":fxcn},
			success : function(data){
// 				foreach function(i,v)를 사용해서 html div안에 계속 div(일정게시글)가 생성 되도록 한다  
					alert("일정 등록 성공");
			
					},
			error : function(xhr){
				alert("일정 등록 실패");
			}
		}) //ajax end
		$('#fxsj').val(""); 					 //일정제목
		$('#stdate_wstart').val("");   //시작일
		$('#stdate_wend').val(""); 		 //종료일
		$('#word').val("");  					 //참석자
		$('#keyword').val(""); 				 //장소
		$('#fxcn').val("");  					 //메모
	}) //button end


//장소 리스트 클릭
$('#placesList').on('click','.place_name',function(){
	var location = $(this).text();
	console.log(location);
	$('#keyword').val(location);
})


function kakaozido(){
	//장소 검색하는 부분
	var markers = [];
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
		mapContainer.style.width = '650px';
		mapContainer.style.height = '400px'; 
	 	window.setTimeout(function() {
	
		    map.relayout();
		}, 0);
	
	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places();  
	
	// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({zIndex:1080});
	
	// 키워드로 장소를 검색합니다
	 searchPlaces();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {

    var keyword = document.getElementById('keyword').value;

//     if (!keyword.replace(/^\s+|\s+$/g, '')) {
//         alert('키워드를 입력해주세요!');
//         return false;
//     }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5 class="place_name">' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
}

$(function(){

	


	
	$(".datepicker").datepicker({
        dateFormat: 'yy-mm-dd' //Input Display Format 변경
        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
        ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
        ,changeYear: true //콤보박스에서 년 선택 가능
        ,changeMonth: true //콤보박스에서 월 선택 가능                
        ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
        ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
        ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
        ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
        ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
        ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
    });     
	
	 $(".datepicker").datepicker();
	
	//일정 달력
   
	$(".datepicker_wstart").datepicker({
		 dateFormat: 'yy-mm-dd' //Input Display Format 변경
		        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
		        ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
		        ,changeYear: true //콤보박스에서 년 선택 가능
		        ,changeMonth: true //콤보박스에서 월 선택 가능                
		        ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
		        ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
		        ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
		        ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
		        ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
		        ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
		        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
		        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
		        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
    });         

	$(".datepicker_wstart").datepicker();
	
	var myDate = new Date();
	var month = myDate.getMonth() +1;
	var stdate_wstart = myDate.getFullYear() +'-'+ month + '-' + myDate.getDate(); 
	
	$('#stdate_wstart').val(stdate_wstart);
	
	//마감일정 
	$(".datepicker_wend").datepicker({
		 dateFormat: 'yy-mm-dd' //Input Display Format 변경
		        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
		        ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
		        ,changeYear: true //콤보박스에서 년 선택 가능
		        ,changeMonth: true //콤보박스에서 월 선택 가능                
		        ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
		        ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
		        ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
		        ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
		        ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
		        ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
		        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
		        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
		        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
   });         

	$(".datepicker_wend").datepicker();
	$('#stdate_wend').val(stdate_wstart);
	
	
   $(".workTab div").on("click",function(){
      $('.workTab div').removeClass()
      $(this).addClass('on')
   });
   $(".workTab2 div").on("click",function(){
      $('.workTab2 div').removeClass()
      $(this).addClass('on')
   });
   
   $(".bar1").on("click",function(){
      document.getElementById("0").style.background = "#d6eef8";
      document.getElementById("20").style.background = "#fff";
      document.getElementById("40").style.background = "#fff";
      document.getElementById("60").style.background = "#fff";
      document.getElementById("80").style.background = "#fff";
      document.getElementById("100").style.background = "#fff";
      var html = "0%";
      $("#percent").html(html);
   });
   $(".bar2").on("click",function(){
      document.getElementById("0").style.background = "#d6eef8";
      document.getElementById("20").style.background = "#d6eef8";
      document.getElementById("40").style.background = "#fff";
      document.getElementById("60").style.background = "#fff";
      document.getElementById("80").style.background = "#fff";
      document.getElementById("100").style.background = "#fff";
      var html = "20%";
      $("#percent").html(html);
   });
   $(".bar3").on("click",function(){
      document.getElementById("0").style.background = "#d6eef8";
      document.getElementById("20").style.background = "#d6eef8";
      document.getElementById("40").style.background = "#d6eef8";
      document.getElementById("60").style.background = "#fff";
      document.getElementById("80").style.background = "#fff";
      document.getElementById("100").style.background = "#fff";
      var html = "40%";
      $("#percent").html(html);
   });
   $(".bar4").on("click",function(){
      document.getElementById("0").style.background = "#d6eef8";
      document.getElementById("20").style.background = "#d6eef8";
      document.getElementById("40").style.background = "#d6eef8";
      document.getElementById("60").style.background = "#d6eef8";
      document.getElementById("80").style.background = "#fff";
      document.getElementById("100").style.background = "#fff";
      var html = "60%";
      $("#percent").html(html);
   });
   $(".bar5").on("click",function(){
      document.getElementById("0").style.background = "#d6eef8";
      document.getElementById("20").style.background = "#d6eef8";
      document.getElementById("40").style.background = "#d6eef8";
      document.getElementById("60").style.background = "#d6eef8";
      document.getElementById("80").style.background = "#d6eef8";
      document.getElementById("100").style.background = "#fff";
      var html = "80%";
      $("#percent").html(html);
   });
   $(".bar6").on("click",function(){
      document.getElementById("0").style.background = "#81c147";
      document.getElementById("20").style.background = "#81c147";
      document.getElementById("40").style.background = "#81c147";
      document.getElementById("60").style.background = "#81c147";
      document.getElementById("80").style.background = "#81c147";
      document.getElementById("100").style.background = "#81c147";
      var html = "100%";
      $("#percent").html(html);
   });
   $(".inbar1").on("click",function(){
      document.getElementById("02").style.background = "#d6eef8";
      document.getElementById("202").style.background = "#fff";
      document.getElementById("402").style.background = "#fff";
      document.getElementById("602").style.background = "#fff";
      document.getElementById("802").style.background = "#fff";
      document.getElementById("1002").style.background = "#fff";
      var html = "0%";
      $("#percent2").html(html);
   });
   $(".inbar2").on("click",function(){
      document.getElementById("02").style.background = "#d6eef8";
      document.getElementById("202").style.background = "#d6eef8";
      document.getElementById("402").style.background = "#fff";
      document.getElementById("602").style.background = "#fff";
      document.getElementById("802").style.background = "#fff";
      document.getElementById("1002").style.background = "#fff";
      var html = "20%";
      $("#percent2").html(html);
   });
   $(".inbar3").on("click",function(){
      document.getElementById("02").style.background = "#d6eef8";
      document.getElementById("202").style.background = "#d6eef8";
      document.getElementById("402").style.background = "#d6eef8";
      document.getElementById("602").style.background = "#fff";
      document.getElementById("802").style.background = "#fff";
      document.getElementById("1002").style.background = "#fff";
      var html = "40%";
      $("#percent2").html(html);
   });
   $(".inbar4").on("click",function(){
      document.getElementById("02").style.background = "#d6eef8";
      document.getElementById("202").style.background = "#d6eef8";
      document.getElementById("402").style.background = "#d6eef8";
      document.getElementById("602").style.background = "#d6eef8";
      document.getElementById("802").style.background = "#fff";
      document.getElementById("1002").style.background = "#fff";
      var html = "60%";
      $("#percent2").html(html);
   });
   $(".inbar5").on("click",function(){
      document.getElementById("02").style.background = "#d6eef8";
      document.getElementById("202").style.background = "#d6eef8";
      document.getElementById("402").style.background = "#d6eef8";
      document.getElementById("602").style.background = "#d6eef8";
      document.getElementById("802").style.background = "#d6eef8";
      document.getElementById("1002").style.background = "#fff";
      var html = "80%";
      $("#percent2").html(html);
   });
   $(".inbar6").on("click",function(){
      document.getElementById("02").style.background = "#81c147";
      document.getElementById("202").style.background = "#81c147";
      document.getElementById("402").style.background = "#81c147";
      document.getElementById("602").style.background = "#81c147";
      document.getElementById("802").style.background = "#81c147";
      document.getElementById("1002").style.background = "#81c147";
      var html = "100%";
      $("#percent2").html(html);
   });
   
//    일정을 클릭했을 때
   $("#calendar").on("click",function(){
	   	   
	   
      $('#inserttask').hide();
      $('#insertcalendar').show();
      $('#insertnotice').hide();
      
   });
   $("#task").on("click",function(){
      $('#inserttask').show();
      $('#insertcalendar').hide();
      $('#insertnotice').hide();
      
   });
   $("#notice").on("click",function(){
      $('#inserttask').hide();
      $('#insertcalendar').hide();
      $('#insertnotice').show();
   });
   
   $("#person").on("click",function(){
      document.getElementById("userlist").style.display = "block";

      
   });
   $("#person2").on("click",function(){
      document.getElementById("userlist").style.display = "block";

      
   });
   
   
    $(document).on('click', function(e) {
           if (e.target.id === 'person') {
              document.getElementById("userlist").style.display = "block";
           } else {
              document.getElementById("userlist").style.display = "none";
           }

       })
    $(document).on('click', function(e) {
           if (e.target.id === 'importance') {
              document.getElementById("imp").style.display = "block";
           } else {
              document.getElementById("imp").style.display = "none";
           }

       })
    $(document).on('click', function(e) {
           if (e.target.id === 'person2') {
              document.getElementById("userlist2").style.display = "block";
           } else {
              document.getElementById("userlist2").style.display = "none";
           }

       })
    $(document).on('click', function(e) {
           if (e.target.id === 'importance2') {
              document.getElementById("imp2").style.display = "block";
           } else {
              document.getElementById("imp2").style.display = "none";
           }

       })
       
       

	
       

}) //--function(){}

</script>

</html>