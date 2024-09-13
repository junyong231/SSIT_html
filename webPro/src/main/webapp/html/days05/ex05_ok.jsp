<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- file:///C:/Class/Workspace/WebClass/webPro/src/main/webapp/html/days05/ex05_ok.jsp
 ?id=admin&pw=1234 -->
 <!-- ㄴ 다보이게 날아감 = 보안 너무 구림  -->
<!-- 법적으로 https 쓰던지 암호화하던지 시켜야함 -->

<!-- 서버에서 처리하기 == % 붙은 꺽쇠 -->

<% 
  // <% 스크립트 3가지 요소 중에 스크립트릿 이라 부른다. <%= 이건 표현식 
  // 여기엔 자바 코딩하면 됨   
  String id = request.getParameter("id");
  String pw = request.getParameter("pw");
%>
입력한 아이디: <%=id%> <br>
입력한 비밀번호 :<%=pw%> <br>



</body>
</html>