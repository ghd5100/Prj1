<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/join_style.css" />
</head>
<body>
<script>
	function checkValue() {
		/* alert("aaaa"); */
		/* eval로 폼 안에 전체를 가져올수있다 */
		inputForm=eval("document.loginInfo");
		if (!inputForm.id.value) {//폼에서 아이디벨류가 없다면
			alert("아이디입력");
			inputForm.id.focus();
			return false;
			/* 펄스는 서밋쪽으로 간다...서밋이 펄스면 폼 액션 처리안됌. 서밋은 디펄트값이 트루다. */
		}
		if (!inputForm.password.value) {//폼에서 비밀번호벨류가 없다면
			alert("비번입력");
			inputForm.password.focus();
			return false;
		}		
	}

	function goJoinForm() {
		location.href="../joinus/join.jsp";
	}
	
</script>



<div id="wrap">
	<form action="loginProc.do" name="loginInfo" method="post" onsubmit="return checkValue()">
	<!-- 서밋 버튼 누르기전에.서밋을 누르면 폼액션 작동하니까 그전에 온서밋에서 먼저 처리하는것 -->
		<img src="../img/welcome.jpg" alt="wel_img" />
			<br /><br />
			<table>
				<tr>
					<td bgcolor="skyblue">아이디</td>
					<td><input type="text" name="id" maxlength="50"/></td>
				</tr>
				
				<tr>
					<td bgcolor="skyblue">비밀번호</td>
					<td><input type="text" name="password" maxlength="50"/></td>
				</tr>
			
			</table>
			<input type="submit" value="login" />
			<input type="button" value="join" onclick="goJoinForm()" />
				
	</form>
<%
	String msg=request.getParameter("msg");
	if(msg!=null && msg.equals("0")){
		out.println("<br>");
		out.println("<font color='red' size='5'>비밀번호확인</font>");
	}else if(msg!=null && msg.equals("-1")){
		out.println("<br>");
		out.println("<font color='red' size='5'>아이디확인</font>");
	}
%>

</div>

</body>
</html>