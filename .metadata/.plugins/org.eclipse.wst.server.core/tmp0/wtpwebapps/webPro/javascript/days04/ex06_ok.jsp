<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
<!-- <%--     http://localhost/webPro/javascript/days04/ex06_ok.jsp ? subject=kor
  
  <%
   // 스크립트 3가지 요소 중에 "스크립트릿", "표현식"
   // 자바 코딩..
   // JSP에 내장된 9가지 객체 중 "request 객체"
   String id = request.getParameter("id");
   String passwd = request.getParameter("passwd");
  %>
  입력한 아이디 : request.getParameter("id");
  입력한 비밀번호 : request.getParameter("passwd");
   --%> -->
   
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

   <script>

    let s = "<%= subject %>";
    <%-- `${변수명}` 이거 jsp에선 충돌남. ${ 표현언어EL }로 인식해서 서버에서 처리됨 \${} 해야됨 --%>
    document.querySelector(`input[name=subject][value=\${s}]`).checked = true;

    /*
    let subject = "<%= subject %>";
    document.querySelector("input[name=subject][value=<%= subject %>]").checked=true;
    */


    /*
    // <%%>는 서버에서 실행되는 부분이다.
    const rdbs = document.querySelectorAll("[name=subject]");
    // alert(rdbs.length);
    for (var i = 0; i < rdbs.length; i++) {
      if (rdbs[i].value == subject) {
          rdbs[i].setAttribute("checked", "checked");
          break;
      }
   }
    */
    
   </script>
  </body>
</html>
