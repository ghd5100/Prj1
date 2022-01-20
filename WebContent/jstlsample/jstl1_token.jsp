<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- prefix 접근관련.. 관습적으로 c를 쓰나 정해진거는 아님 너무길게쓰면 코딩할때 힘들어서 --> 
    
    
<!-- 이거는 foreach 지원안하는 코어임 -->    
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %> --%>

<!-- 이걸루 해야항 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>jstl1.jsp</h2>


<!-- 파악하는법 . 주석 하나씩 풀러서 결과물을 비교한다. -->


<!-- 델리멘츠 delims: 구분자 -->

<c:forTokens items="이름1,이름1,이름1,이름1,이름1" delims=",">
반복<br />
</c:forTokens>


<!-- 뭔가 들어갈떄마다 출력함... -->


<%-- 
<c:forTokens var="name" items="이름1,이름2,이름3,이름4,이름5" delims=",">
&{name }<br />
</c:forTokens>

 --%>
<!-- 빨간줄 잘라냈다가 다시 붙여넣으면 빨간줄 없어지기도함 -->

<%-- 
<c:forTokens var="name" items="이름1,이름2,이름3,이름4,이름5" delims="," varStatus="st">
index:${st.index } <br />
current:${st.current } <br />
count:${st.count } <br />
first:${st.first } <br />
last:${st.last } <br />
begin:${st.begin } <br />
end:${st.end } <br />
step:${st.step } <br />
<hr />
</c:forTokens>

 --%>
<%-- 
 
<c:forTokens var="name" items="이름1,이름2,이름3,이름4,이름5" delims=","
begin="1" end="3" step="2" varStatus="st">
index:${st.index } <br />
current:${st.current } <br />
count:${st.count } <br />
first:${st.first } <br />
last:${st.last } <br />
begin:${st.begin } <br />
end:${st.end } <br />
step:${st.step } <br />
<hr />
</c:forTokens>

 --%>
 
<!-- 인덱스넘버가 1부터 시작함.. 스텝이 2니까 2칸건너띄고... -->

<%-- 
<c:forTokens var="name" items="이름1/20,이름2/21,이름3/22,이름4/23,이름5/24" delims=",/"
varStatus="st">
index:${st.index } <br />
current:${st.current } <br />
count:${st.count } <br />
first:${st.first } <br />
last:${st.last } <br />
begin:${st.begin } <br />
end:${st.end } <br />
step:${st.step } <br />
<hr />
</c:forTokens>

 --%>

<%-- 
<c:forTokens var="name" items="이름1/20,이름2/21,이름3/22,이름4/23,이름5/24" delims=",/"
step="2" varStatus="st">
index:${st.index } <br />
current:${st.current } <br />
count:${st.count } <br />
first:${st.first } <br />
last:${st.last } <br />
begin:${st.begin } <br />
end:${st.end } <br />
step:${st.step } <br />
<hr />
</c:forTokens>

 --%>

</body>
</html>