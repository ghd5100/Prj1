
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- uri 주소중에 이거 조심.. 같은게 아니야 위에거는 틀렸구 아래것 코아로 해줘야함 -->
<%-- <%@ taglib prefix="ccc" uri="http://java.sun.com/jstl/core" %> --%>   

<%@ taglib prefix="ccc" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 토큰이랑 .포이치는 타길안에 들어있는 애들이라서 위에 코드 설정해줘야함 -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h>jstl2_foreach.jsp</h>
<br />

<!-- foreach문 사용잘함 중요함 -->

<%
 	List<String> nameList=new ArrayList<String>(Arrays.asList("이름4","이름5","이름6"));
	request.setAttribute("name3", nameList);

 	List<String> nameList2=new ArrayList<String>(Arrays.asList("이름7","이름8","이름9"));
	request.setAttribute("name4", nameList2);
	/* 네일 리스트2를 name4라는 이름으로 가져옴 */
	/* 	앞 파라미터는 보내는 과자박스이름이고 뒤에 파라미터는 실제 과자내용물담은것들임.
	앞에는 명찰. 뒤에는 실제내용 */

%>
<!-- 위에서 프리픽스로 ccc를 줬으니 ccc로 불러와야함 -->
<%-- 
갯수만큼 아이템을 하나한꺼낸다.
하나씩 커내와서 네임에 넣어주고 
var는 item요소 하나하나가 들어가는곳 
${name }하나하나 들어갈떄마다 출력해주는곳

 --%>
 
<%--  
<ccc:forEach var="name" items="이름1,이름2,이름3">
	<br />${name }
	
</ccc:forEach>

 --%>



<!-- 리스트를 넣어보자 ccc:out은 출력하는기능 -->

<%-- <ccc:forEach var="name" items="${name3 }" varStatus="st">
	<br />${st.count } : <ccc:out value="${name }"/>
	
</ccc:forEach>
 --%>

<%-- 
<ccc:forEach var="list3" items="${name3 }" varStatus="st">
	<br />${list3 } : ${name4[st.index] }
	
</ccc:forEach>

 --%>

<%-- 
<ccc:forEach var="list3" items="${name3 }" varStatus="st">
	<br />${list3 } : ${name4[st.index] }
	
</ccc:forEach>

 --%>

<%-- 
<ccc:forEach var="i" begin="1" end="10">
	<br /><ccc:out value="${i }"></ccc:out>
</ccc:forEach>

 --%>

<%-- 
<ccc:forEach var="i" begin="1" end="10" varStatus="st">
	${i }
	<!--각 요소 마지막에 컴마를 추가해보겠다 st.last하면 마지막에서 찍힘. not st.last 하면 중간중간 찍힌다-->
	<ccc:if test="${not st.last }">,</ccc:if>
</ccc:forEach>

 --%>
 
<!-- 변수 만들어서 쌓아준거임  자바에서 카운트위해서 int n=0; 헤준것과같음-->
<ccc:set value="0" var="n" />

<ccc:forEach var="i" begin="1" end="10" varStatus="st">
	${i }
	<ccc:set value="${n+i }" var="n" />
	<ccc:if test="${not st.last }">,</ccc:if>
</ccc:forEach>
sum:${n }

<br /> <hr />

<!-- scope=application해주면 기존 n 값이 보존된상태에서 진행됨.
없으면 n이 저장이 안됌.
 -->
 
 
<ccc:set value="0" var="n" scope="application" />
<ccc:forEach var="i" begin="1" end="10" varStatus="st">
	${i }
	<ccc:set value="${n+i }" var="n" />
	<ccc:if test="${not st.last }">,</ccc:if>
</ccc:forEach>
sum:${n }


</body>
</html>