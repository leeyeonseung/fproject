<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
<script>
$(function(){
	$('.sttus').on('click',function(){			
		if($('input:checkbox[name="sttus1"]:checked').length < 1){
			alert("1개이상선택하세요");
			return false; 
	
		}
	});
	$('.urank').on('click',function(){			
		if($('input:checkbox[name="workcheck1"]:checked').length < 1){
			alert("1개이상선택하세요");
			return false; 
	
		}
	});
})
</script>
</head>
<body>
<div id="myModal" class="modal fade" role="dialog" > 
  	<div class="modal-dialog">
  
  
    <!-- Modal content-->
    <form action="">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">x</button>
        <h4 class="modal-title">항목 순서 변경과 조회할 항목을 선택할 수 있습니다.</h4>
        * '제목'은 필수 항목입니다.
      </div>
      
      <div class="modal-body">
 		<div>
        <i class="icon pe-7s-menu" style="font-size: 25px; " ></i> <label style="font-size: 20px;">번호</label> 
        <input type="checkbox" id="s1" name="num" class="sw" checked>
        <label class="switch switch--violet" for="s1" value="" style="float: right;"></label>
 		</div>
        <br>
 	
 		<div>
        <i class="icon pe-7s-menu" style="font-size: 25px;"></i> <label style="font-size: 20px;">상태</label> 
        <input type="checkbox" id="s2" name="state" class="sw" checked>
        <label class="switch switch--violet" for="s2" style="float: right;"></label>
 		</div>
        <br>
 		<div>
        <i class="icon pe-7s-menu" style="font-size: 25px;"></i> <label style="font-size: 20px;">우선순위</label> 
        <input type="checkbox" id="s3" name="rank1" class="sw" checked>
        <label class="switch switch--violet" for="s3" style="float: right;"></label>
 		</div>
        <br>
 		<div>
        <i class="icon pe-7s-menu" style="font-size: 25px;"></i> <label style="font-size: 20px;">제목</label> 
        <input type="checkbox" id="s" class="sw" checked>
        <label class="switch switch--violet" for="s4" id="s4" style="float: right;"></label>
 		</div>
        <br>
 		<div>
        <i class="icon pe-7s-menu" style="font-size: 25px;"></i> <label style="font-size: 20px;">진척도</label> 
        <input type="checkbox" id="s5" name="jin1" class="sw" checked>
        <label class="switch switch--violet" for="s5" style="float: right;"></label>
 		</div>
        <br>
 		<div>
        <i class="icon pe-7s-menu" style="font-size: 25px;"></i> <label style="font-size: 20px;">담당자</label> 
        <input type="checkbox" id="s6" name="dang" class="sw" checked>
        <label class="switch switch--violet" for="s6" style="float: right;"></label>
 		</div>
        <br>
 		<div>
        <i class="icon pe-7s-menu" style="font-size: 25px;"></i> <label style="font-size: 20px;">작성자</label> 
        <input type="checkbox" id="s7" name="writer" class="sw" checked>
        <label class="switch switch--violet" for="s7" style="float: right;"></label>
 		</div>
        <br>
 		<div>
        <i class="icon pe-7s-menu" style="font-size: 25px;"></i> <label style="font-size: 20px;">시작일</label> 
        <input type="checkbox" id="s8" name="startd" class="sw" checked>
        <label class="switch switch--violet" for="s8" style="float: right;"></label>
 		</div>
        <br>
 		<div>
        <i class="icon pe-7s-menu" style="font-size: 25px;"></i> <label style="font-size: 20px;">마감일</label> 
        <input type="checkbox" id="s9" name="endd" class="sw" checked>
        <label class="switch switch--violet" for="s9" style="float: right;"></label>
 		</div>
        <br>
 		<div>
        <i class="icon pe-7s-menu" style="font-size: 25px;"></i> <label style="font-size: 20px;">등록일</label> 
        <input type="checkbox" id="s10" name="insert" class="sw" checked>
        <label class="switch switch--violet" for="s10" style="float: right;"></label>
 		</div>
        <br>
 		
 	
          </div>
    
      
      <div class="modal-footer">
<!--       	<input type="submit" class="btn btn-primary" value="등록완료"  /> -->
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
    </form>

  </div>
</div>


	<aside class="sidebar"style="margin-left: 30px;">

	<br>
			<ul class="main-nav" >
			<div style="overflow:scroll; height: 1100px;">
			
			<h2> 업무구분</h2>
			<br>
				<li>
					<input type="radio" id="my" name="workradio" value="내업무" style=" width:20px;height:20px;border:1px;"><label style=" position: relative; bottom: 5px; margin-left: 30px;"> 내 업무 </label>  
				</li>
				<br>
			
				<li>
					<input type="radio" id="my" name="workradio" value="전체업무" style=" width:20px;height:20px;border:1px;" checked><label style="position: relative; bottom: 5px; margin-left: 30px;"> 전체 업무</label>  
				</li>
				
				<hr>
				<h2> 상태</h2>
				<br>
				
				<li>
					<input type="checkbox" id="ch" class="sttus" name="sttus1" value="요청" style=" width:20px;height:20px;border:1px;" checked><label style="position: relative; bottom: 5px; margin-left: 30px;"> 요청</label>  
				</li>
				<br>
				<li>
					<input type="checkbox" id="ch" class="sttus" name="sttus1"style=" width:20px;height:20px;border:1px;"value="진행"><label style="position: relative; bottom: 5px; margin-left: 30px;"> 진행</label>  
				</li>

				<br>
				<li>
					<input type="checkbox" id="ch" class="sttus" name="sttus1"style=" width:20px;height:20px;border:1px;"value="완료"><label style="position: relative; bottom: 5px; margin-left: 30px;"> 완료</label>  
				</li>
				<br>
				<li>
					<input type="checkbox" id="ch" class="sttus" name="sttus1"style=" width:20px;height:20px;border:1px;" value="보류"><label style="position: relative; bottom: 5px; margin-left: 30px;"> 보류</label>  
				</li>
				
				<br>
					<h2> 우선순위</h2>
				<br>
				<li>
					<input type="checkbox" id="rd5" class="urank" name="workcheck1" value="긴급" style=" width:20px;height:20px;border:1px;"checked><label style="position: relative; bottom: 5px; margin-left: 30px;"> 긴급</label>  
				</li>
				<br>
				<li>
					<input type="checkbox" id="rd5" class="urank" name="workcheck1" value="높음" style=" width:20px;height:20px;border:1px;"><label style="position: relative; bottom: 5px; margin-left: 30px;"> 높음</label>  
				</li>
				<br>
				<li>
					<input type="checkbox" id="rd5" class="urank" name="workcheck1" value="보통" style=" width:20px;height:20px;border:1px;"><label style="position: relative; bottom: 5px; margin-left: 30px;"> 보통</label>  
				</li>
				<br>
				<li>
					<input type="checkbox" id="rd5" class="urank" name="workcheck1" value="낮음" style=" width:20px;height:20px;border:1px;"><label style="position: relative; bottom: 5px; margin-left: 30px;"> 낮음</label>  
				</li>
				
				<br>
				<h2> 시작일</h2>
				<br>
				<li>
					<input type="radio" id="rd6" name="workradio1" value="전체" style=" width:20px;height:20px;border:1px; "checked><label style=" position: relative; bottom: 5px; margin-left: 30px;"> 전체 </label>  
				</li>
				<br>
				<li>
					<input type="radio" id="rd6" name="workradio1" value="오늘" style=" width:20px;height:20px;border:1px;"><label style="position: relative; bottom: 5px; margin-left: 30px;"> 오늘 </label>  
				</li>
				<br>
				<li>
					<input type="radio" id="rd6" name="workradio1" value="이번달" style=" width:20px;height:20px;border:1px;"><label style="position: relative; bottom: 5px; margin-left: 30px;"> 이번달 </label>  
				</li>
				<br>
							
				<h2> 마감일</h2>
				<br>
				<li>
					<input type="radio" id="rd7" name="workradio2" value="전체"style=" width:20px;height:20px;border:1px; "checked><label style=" position: relative; bottom: 5px; margin-left: 30px;"> 전체 </label>  
				</li>
				<br>
				<li>
					<input type="radio" id="rd7" name="workradio2" value="오늘2"style=" width:20px;height:20px;border:1px;"><label style="position: relative; bottom: 5px; margin-left: 30px;"> 오늘까지</label>  
					
				</li>
				<br>
				<li>
					<input type="radio" id="rd7" name="workradio2" value="이번달2" style=" width:20px;height:20px;border:1px;"><label style="position: relative; bottom: 5px; margin-left: 30px;"> 이번달까지 </label>  
				</li>
				<br>
				<li>
					<input type="radio" id="rd6" name="workradio2" value="날짜미정" style=" width:20px;height:20px;border:1px;"><label style="position: relative; bottom: 5px; margin-left: 30px;"> 날짜미정 </label>  
				</li>
				<br>
				<hr>
				
			</div>
				
				
			</ul>
		</aside> <!-- /main-nav -->


</body>
</html>