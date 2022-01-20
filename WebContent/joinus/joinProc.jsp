<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>joinProc.jsp</h3>

<%
request.setCharacterEncoding("utf-8");
%>


<% 
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
String pwd2=request.getParameter("pwd2");
String name=request.getParameter("name");
String gender=request.getParameter("gender");

String year=request.getParameter("year");
String month=request.getParameter("month");
String day=request.getParameter("day");
String birth=String.format("%s-%s-%s", year,month,day);
/* 스트링 합친다. 포맷함수이용해서  */



/* 제대로 값을 받아 들어왔느지 확인하는 방법 * 여기 부분을 집중 공부해라.*/
%>

<% 
/* 단락이 어디로 옮겨가는지 트루 펄스조건일떄 어느 블락으로 왔다갔다하는지를 흐름을 봐라 */

List<String> errors=new ArrayList();
if(id==null || id.equals("")) {
	errors.add("아디디없음");
	/* 에러를 리스트에 담아줌  -> 아래에서 조인jsp로 보내줌..*/
}
if(!pwd.equals(pwd2)){ /* 괄호 전체 느낌표 아니라는 뜻.*/
	errors.add("비번불일치");
}
if(errors.size()>0) {   
	request.setAttribute("errors", errors);
	/* response.sendRedirect("join.jsp"); */
	//****샌드 리다이렉틑 모든것을 다 지운다음에 보내주니까. 값은 못 값고 보내줌..
	/* 이거를 대신하기 위해 아래 코드를 써줌 값 ... 가져가려면 */
	request.getRequestDispatcher("join.jsp").forward(request, response);
	/* joinjsp로 가면서 리큐ㅔ스트값을 가지고감 */
/* 					리퀘스트에는 보내는 값이 있는게 리스폰스는 형식 안 체우면 에러나니까 
					아무값없지만 형식으로서 넣어줌 리스폰스는 */
	
	/* 먼저 리퀘스ㅌ트에 내용을 답은다음에 포워드로 보내줘야 값이 전달된다. 순서 바뀌면 값이 전달안됀 */
	//리퀘스트로 저장했으니 리퀘스트로 불러올수도있따.
}


String IsLunar=request.getParameter("IsLunar");
String cphone=request.getParameter("cphone");
String email=request.getParameter("email");


/* String habit=request.getParameter("habit"); */
/* 체크박스 여러개는 배열로 받아야함. 스트링으로 받으면 한개밖에 표기가 안됌 */
String[] habits=request.getParameterValues("habit");
String habit="";

if (habits!=null) { //**아무것도 안들어있으면 널포인트 에러나니까 이렇게 해쥼
	
	for (int i=0; i<habits.length;i++) {
		habit+=habits[i];
		if(habits.length>i+1)
			habit+=",";
	}	
}else{

/* /* out.println(habit+"<br>"); */
/* 배열에 내용물이 없으면 null 이거나 -1으로 표기됨  */
%>

<%
}
%>

<%

//dbcon
Class.forName("oracle.jdbc.driver.OracleDriver");

String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";
Connection con=DriverManager.getConnection(url,user,pw);


String sql="insert into member("
+"id,pwd,name,gender,birth,is_lunar,cphone,email,habit,regdate)"
+"values(?,?,?,?,?,?,?,?,?,sysdate)";

//실행
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, pwd);
pstmt.setString(3, name);
pstmt.setString(4, gender);
pstmt.setString(5, birth);
pstmt.setString(6, IsLunar);
pstmt.setString(7, cphone);
pstmt.setString(8, email);
pstmt.setString(9, habit);

pstmt.executeUpdate(); 

//메인페이지로
response.sendRedirect("../index.jsp");

%>




</body>
</html>