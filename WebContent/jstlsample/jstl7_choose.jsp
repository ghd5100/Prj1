<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>jstl7_choose.jsp</h2>

<%
int ranNum=(int)(Math.random()*10);
String grade="a"+ranNum;
System.out.println("grade : "+grade);

%>
<!-- choose문 안에서 if문으로 보면됌. when은 -->
<c:set value="<%=grade %>" var="grade"/>
<c:choose>
<c:when test="${grade=='a1' }">
	당신의 등급은: A1
</c:when>
<c:when test="${grade=='a2' }">
	당신의 등급은: A2
</c:when>
<c:when test="${grade=='a3' }">
	당신의 등급은: A3
</c:when>
<c:when test="${grade=='a4' }">
	당신의 등급은: A4
</c:when>
	<c:otherwise>
		당신의 등급은 : 기타등급
	</c:otherwise>

</c:choose>
	<!-- 디펄트갑은 어덜와이즈라고 보ㅕㅁㄴ됌 스위치문제엇 처럼 -->

</body>
</html>

