<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> 
  <!-- 제이쿼리 쓰려면 위 링크 필수 -->
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>

  <body>

   <%
      // jsp 스크립트 요소 : 스크립트릿
      String subject = request.getParameter("subject");
   %>

   > 전송된 과목 = <%= subject %><br>
   <br>
   <!-- BOM window/document/history -->
   <a href="javascript:history.back()">뒤로가기</a>
   <!-- 서버감 -->
   <br>
   <!-- BOM -->
   <a href="javascript:location.href='ex06.html'">뒤로가기2</a> 
   <!-- 서버 간거 아님  -->
  <!--  input[type=radio name=subject value]*4>label -->
   <input type="radio" name="subject" value="kor">국어<label for=""></label></input>
   <input type="radio" name="subject" value="eng">영어<label for=""></label></input>
   <input type="radio" name="subject" value="mat">수학<label for=""></label></input>
   <input type="radio" name="subject" value="pe">체육<label for=""></label></input>

	<hr>
	  <select name="selSubject" id="selSubject">
    <option value="">선택하세요</option>
    <option value="kor">국어</option>
    <option value="eng" selected="selected">영어</option>
    <option value="mat">수학</option>
    <option value="pe">체육</option>
  </select>
   <script>

    let s = "<%= subject %>";
    $(`:radio[name=subject][value=\${s}]`).prop("checked" , "checked");
    
   
    $(`option[value=\${s}]`).prop("selected" , "selected");
    
   </script>
  </body>
</html>
