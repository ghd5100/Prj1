<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>jstl4_fmt.jsp</h2>

<!-- new java.util.date로 date로 바뀜  익스포트 문제생기면 .* 로 변경해서 하긔-->
<c:set var="now" value="<%=new java.util.Date() %>"/>
<!-- 커런시는... 현재 위치 .. 어느나라 어느 국가 인지에 따라 바뀜.. -->
<fmt:formatNumber value="1000000" type="currency" /> <br />
<fmt:formatNumber value="1000000" type="currency"  pattern="#원" /> <br />
<fmt:formatNumber value="1000000" type="currency"  pattern="###,###원" /> <br />
<fmt:formatNumber value="1000000" type="currency"  pattern="###,###" />원 <br />
<fmt:formatNumber value="1000000.1254" type="currency"  pattern="###,###.##" />원 <br />
<hr />

locale 지역을 바꿔줌 <br />

<fmt:setLocale value="en_us"/>
<fmt:formatDate value="${now }" type="both" dateStyle="short" pattern="YY-MM-dd"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium" 
pattern="YYYY-MM-dd [a] hh:mm:ss"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="short"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="full"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="full" pattern="YYYY-MM-dd[E]"/> <br />
<hr />

timeZone-US<br />
<fmt:setLocale value="en_us"/>
<fmt:formatDate value="${now }" type="both" dateStyle="short" pattern="YY-MM-dd"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium" 
pattern="YYYY-MM-dd [a] hh:mm:ss"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long" 
timeZone="America/Los_Angeles"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="full" pattern="YYYY-MM-dd[E]"/> <br />
<hr />


timeZone-RU<br />
<fmt:setLocale value="ru_RU"/>
<fmt:formatDate value="${now }" type="both" dateStyle="short" pattern="YY-MM-dd"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium" 
pattern="YYYY-MM-dd [a] hh:mm:ss"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long" 
timeZone="America/Los_Angeles"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="full" pattern="YYYY-MM-dd[E]"/> <br />
<hr />


timeZone-KR<br />
<fmt:setLocale value="ko_KR"/>
<fmt:formatDate value="${now }" type="both" dateStyle="short" pattern="YY-MM-dd"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium" 
pattern="YYYY-MM-dd [a] hh:mm:ss"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long" 
timeZone="America/Los_Angeles"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="full" pattern="YYYY-MM-dd[E]"/> <br />
<hr />



국가코드알아보기 <br />
<c:set var="ics" value="<%=Locale.getAvailableLocales() %>"/>
<c:forEach items="${ics }" var="lo">
${lo } &nbsp;

</c:forEach>

</body>
</html>