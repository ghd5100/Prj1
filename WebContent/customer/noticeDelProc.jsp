<%@page import="customer.dao.NoticeDao"%>
<%@page import="customer.vo.Notice"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
<h3>noticeDelProc.jsp</h3>

<%




/* 
//dbcon
Class.forName("oracle.jdbc.driver.OracleDriver");

String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";
Connection con=DriverManager.getConnection(url,user,pw);



String sql="delete from notices where seq=?";  //1을 변수인 seq로 넣어줌
/*틀린이유 쿼리문이 틀렸네~ */
/* 쿼리 전체를테이블 전체 데이터를가져오려면 리저트셋이 필요하구요.각각 레이블 가져오는거면 리저트셋에 담아줄 필요는 없음*/
/*  
//실행
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, seq);
pstmt.executeUpdate();

int del=pstmt.executeUpdate(); 
//뱉는거 삭제거나 추가된 레이블 갯수 리턴함
*/


/* response.setCharacterEncoding("utf-8");
String seq=request.getParameter("c");
NoticeDao dao=new NoticeDao();
int del=dao.delete(seq);


if (del>0) //뭔가 삭제가 됬다면
	response.sendRedirect("notice.jsp");
else
	out.write("삭제오류"); */

%>





</body>
</html>


<%-- <%

pstmt.close();
con.close();

%> --%>