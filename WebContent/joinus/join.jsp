<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p style="color: red;">

<!-- //리퀘스트로 저장했으니 리퀘스트로 불러올수도있따. -->
<!-- 에러스가 리스트 이므로 표현식이 아닌 자바 코드로 넣어줘야한다. -->
<% 

if(request.getAttribute("errors")!=null){//널값 제외하기위해서 넣어준 조건식
	//에러리스트에서 널 에러를 리퀘스트로 불러옴
List<String> errors=(List)request.getAttribute("errors"); 
for(int i=0; i<errors.size(); i++) { //에러가 값이 없어서 널이라서...에러남. 그렇다면 위에 조건문 넣어서 널값을 빼고 들어오도록한다.]
%>
<!-- i값 가져와보기 -->

	<%=errors.get(i) %> <br />

<%	
}

}
/* 강제형변환 */
%>

</p>

<h3>join.jsp</h3>
<!-- 체크박스에대한 내용배움 -->
<!-- 메도우 설정안함면 기본 겟방식인가봄 -->
<form action="joinProc.jsp" method="post">
	<label for="id">아이디</label>
	<input type="text" name="id" />
	<input type="button" value="중복확인" />
	<br />
	<label for="id">비밀번호</label>
	<input type="text" name="pwd" /><br />
	<label for="id">비밀확인</label>
	<input type="text" name="pwd2" /><br />
	<label for="id">이름</label>
	<input type="text" name="name" /><br />
	<label for="id">성별</label>
	<select name="gender">
		<option value="남성">남성</option>
		<option value="여성">여성</option>
		
	</select><br />
	<label for="">생년월일</label>
	<input type="text" name="year" size="5"/>년 
	<input type="text" name="month" size="5"/>월 
	<input type="text" name="day" size="5"/>일
	
	<input type="radio" name="IsLunar" value="Solar" checked/>양력  
	<input type="radio" name="IsLunar" value="IsLunar" />음력 <br />
	
	<label for="">핸드폰번호</label>
	<input type="tel" name="cphone" /> 예)010-1111-5555 <br />
	<label for="">이메일</label>
	<input type="email" name="email" /> <br />
	<label for="">취미</label>
	<input type="checkbox" name="habit" value="music" />음악
	<input type="checkbox" name="habit" value="movie" />영화
	<input type="checkbox" name="habit" value="trip" />여행<br />
	<input type="submit" value="확인" />

<!-- 문제점: 취미 복수개 선택시 전달이 하나밖에 안됨 파람값이 -->


</form>

</body>
</html>