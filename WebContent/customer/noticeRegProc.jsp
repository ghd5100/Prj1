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
<h3>noticeRegProc.jsp</h3>
<%
/* request.setCharacterEncoding("utf-8");

String title=request.getParameter("title");
String content=request.getParameter("content");

Notice n=new Notice();
n.setTitle(title);
n.setContent(content);

NoticeDao dao=new NoticeDao();
int af=dao.write(n);

//목록으로 이동
/* if(af>0) {  업데이트 됬을때 의미함 

response.sendRedirect("notice.jsp");
	
}else
	out.println("글쓰기 오류");
 */

/* 쿼리 길때 나놔서 쓰는방법 큰따옴표로 쪼갠다음에 +로 연결해주면 긴문장 나눠서 쓸수있음. */


/* String sql="insert into notices values("
+"(select max(to_number(seq))+1 from notices)"
+",'title1','cj',sysdate,0,'content3')"; */

//타이틀과 컨텐트3을 ? 로 처리  위는 원본 쿼리
/* 
String sql="insert into notices values("
+"(select max(to_number(seq))+1 from notices)"
+",?,'cj',sysdate,0,?)";


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
pstmt.executeUpdate(); //인서트 실행... 
 */



%>

</body>
</html>