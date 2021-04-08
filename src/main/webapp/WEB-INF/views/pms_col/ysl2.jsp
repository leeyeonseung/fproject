<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>


<body>

      <section class="content">
      
      
         
       <!-- <div class="row"> -->
         <div class="col-md-12">
            <article class="widget">
      
            <div class="post_write_tab">
               <ul id="post-category-btn-list">

               
               <li class="ico4 off" style="width: 50%; display: block; float: left;">
                  <a href="#" id="task" style="background: dimgrey">업무</a>
                  <span></span>
               </li>
               <li class="ico3 off" style="width: 50%; display: block; float: left;">
                  <a href="#" id="calendar" style="background: darkgray">일정</a>
               
                  
                  <span></span>
               </li>
               </ul>
               <br>
               <br>
               
               
               <hr>
               
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
                  <div onclick="worktype(this.id)" id="요청" class="tab1" ><label>요청</label></div>
                  <div onclick="worktype(this.id)" id="진행" class="tab2" style="margin-left: -5px;"><label>진행</label></div>
                  <div onclick="worktype(this.id)" id="완료" class="tab3" style="margin-left: -5px;" ><label>완료</label></div>
                  <div onclick="worktype(this.id)" id="보류" class="tab4 on" style="margin-left: -5px;"><label>보류</label></div>
               </div>
         
               <br>
               <hr>
               
               <div class="container-fluid" style="min-height: 100px;">
                   <div style="margin:10px;">
                  
                     <button data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">↓Click</button>
                  </div>
                  <div class="collapse" id="collapseExample">
                     <div class="well">
                     <div class="workTab">
            
                        <label><img src="../img/audience.png" style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;" > </label>   
                        <input type="text" id="person" placeholder="담당자 추가"> 
                        <div id="userlist" style="position: absolute; display: none; z-index: 1; left: 164.625px; background: white;" >
                           <div id="member" style="width: 100%;" >
                        test
                           </div>
                        </div>            
                     </div> 
                     <br>
                     <hr>
                     <div class="workTab">
                        <label><img src="../img/calendar.png" style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;" > </label>   
                           <input type="text" class="datepicker" id="stdate" placeholder="시작일시 추가">    
                        </div>
                     <br>
                     <hr>
                           <div class="workTab">
                        <label><img src="../img/calendar2.png" style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;" > </label>   
                        <input type="text" class="datepicker" id="eddate" placeholder="마감일시 추가" > 
                        
                        
                        </div>
                     <br>
                     <hr>
                     
                              
                        <div class="workTab">
                        <label><img src="../img/choice.png" style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;" > </label>   
                        <input type="text" id="importance" placeholder="우선순위 선택"> 
                        
                        <div id="imp" style="position: absolute; display: none; z-index: 1; left: 164.625px; background: white;" >
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
                      <div class="worktab">
               <label><img src="../img/percentage.png" style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;" > </label>   
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
          <div id="insertcalendar" style="display: block;">
               <form action="/project/등록">
                <textarea class="textarea textarea_h" rows="6" placeholder="일정을 등록하세요 📅" ></textarea>
               <hr>
               
                  

               <button class="btn btn-light pull-right" type="submit" style="background: darkgray">등록</button>
               <br>
               <br>
               </form>
            </div> 
            </div>
            
   
            
         
            
            </article><!-- /widget -->
         </div> <!-- /col -->
         
      <!-- </div> /row -->
      
      <div class="col-md-12">
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
            
                  <div onclick="worktype2(this.id)" id="요청" class="tab1" ><label>요청</label></div>
                  <div onclick="worktype2(this.id)" id="진행" class="tab2" style="margin-left: -5px;"><label>진행</label></div>
                  <div onclick="worktype2(this.id)" id="완료" class="tab3" style="margin-left: -5px;" ><label>완료</label></div>
                  <div onclick="worktype2(this.id)" id="보류" class="tab4 on" style="margin-left: -5px;"><label>보류</label></div>
               </div>
               
               <br>
               <hr>
               
                              <div class="workTab">
               <label><img src="../img/audience.png" style="height: 20px; width: 20px; margin-right: 5px; margin-top: 5px;" > </label>                  
               <input type="text" id="person2" placeholder="담당자 추가"> 
               <div id="userlist2" style="position: absolute; display: none; z-index: 1; left: 164.625px; background: white;" >
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
   
   $(".datepicker").datepicker();
   
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
       
 

   
   
   
})


</script>
</html>