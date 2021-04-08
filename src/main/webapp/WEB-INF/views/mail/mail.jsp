<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>메일 보내기</h4>
    <form action="mailSending.do" method="post">
      <div>
        <input type="text" name="tomail" size="120" value="immense3@gmail.com"
        style="width: 100%" placeholder="상대의 이메일"
        class="form-control">
      </div>
      <div align="center">
        <!-- 제목 -->
        <input type="text" name="title" size="120" value="초대"
        style="width: 100%" placeholder="제목을 입력해주세요"
        class="form-control">
      </div>
        <p>
          <div align="center">
          <!-- 내용 -->
            <textarea name="urlb" value="${param.urlb }" cols="120" rows="12" 
            style="width: 100%; resize: none"
            class="form-control"></textarea>
          </div>
        <p>
      <div align="center">
        <input type="submit" value="메일 보내기" class="btn btn-warning">
      </div>
    </form>
</body>
</html>