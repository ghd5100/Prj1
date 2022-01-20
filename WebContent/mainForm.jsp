<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>

function logoutProc() {//onclick 했을떄 작동한느 함수
	//스크립트에서 센드 리다이렉스 라고 보면됨 아래 코드는
	location.href="login/logoutProc.jsp";  
}


</script>


</head>
<body>
<h3>MainForm</h3>

<b>	<font size="3" color="skyblue">메인화면입니다.</font></b> <br /><br />

<%
	if(session.getAttribute("sessionID")==null){//세션을 못가져온다면
		response.sendRedirect("login/loginForm.jsp");
	}else{//로그인 상태
%>
	<font color="green"><%=session.getAttribute("sessionID") %></font>
	님 로그인 되었습니다.

	<br /><br />
	<input type="button" value="logout" onclick="logoutProc()"/>
	<!-- 폼에다가 안넣어도 온클릭에 함수 연결해서 다른페이지로 보낼수있구놔 -->

<%
	}
%>

</body>
</html>