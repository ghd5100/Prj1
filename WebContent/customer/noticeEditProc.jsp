<%@page import="customer.vo.Notice"%>
<%@page import="customer.dao.NoticeDao"%>
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
<h3>noticeEditProc.jsp</h3>

<%
	/* 코드블락없어도댐 */

request.setCharacterEncoding("utf-8");

String title=request.getParameter("title");
String content=request.getParameter("content");
String seq=request.getParameter("c");


//위 내용을 Notice에 객체로 담아서 보내기
Notice n=new Notice();
n.setSeq(seq);
n.setTitle(title);
n.setContent(content);

//위에 담아놓은걸 외부매개변수로 dao클래스에 함수 호출하려면 dao클래스 객체 만들어줘야겠져
NoticeDao dao=new NoticeDao();
int af=dao.update(n);
if(af>0)
	response.sendRedirect("noticeDetail.jsp?c="+seq);
else
	out.write("수정오류");

//변수로 각각 보낼때
/* 
int af=dao.update2(seq,title,content);


if(af>0)
	response.sendRedirect("noticeDetail.jsp?c="+seq);
else
	out.write("수정오류");
 */


/* String sql="update notices"
+"set title='title수정', content='con수정' where seq='1'";
 */
/*  
String sql="update notices"
+" set title=?,content=? where seq=?";

//여기 위에서 set과 " 사이 안띄워주면.. 에러남...  수정버튼눌렀을떄 에러남~
 
//dbconnect
Class.forName("oracle.jdbc.driver.OracleDriver");

String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";
Connection con=DriverManager.getConnection(url,user,pw);

//실행

PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, title);
pstmt.setString(2, content);
pstmt.setString(3, seq);
pstmt.executeUpdate(); 
 */


//다음단계에서 필요한거는 어떻게든 앞에서 전달 받아야함
%>

</body>
</html>