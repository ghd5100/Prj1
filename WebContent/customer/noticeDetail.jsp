<%@page import="customer.vo.Notice"%>
<%@page import="customer.dao.NoticeDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!-- lib폴더에 jstl.jar 필요함 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<h5>noticeDetail.jsp</h5>


<%
//NoticeDetailControll.java에서 포워드로 자료보내줘서 아래는 지워도 
/* 자료얻어올수있음 jstl 기술을 이용해서
자바서버 페이지 표준 태그 라이브러리(JavaServer Pages Standard Tag Library)*/
/* 뷰(jsp)와 비즈니스로직(java)의 분리가 목적임 
${n} ${n.seq} ${[n.seq]} 으로 받음) 대신 jstl로 받아주려면 라이브러리에 jstl.jar 과 standerd.jar가 필요함 */
/* request가 내장객체라서 생성할필요도 없이 바로 쓸수있음 */


/* Notice n=(Notice)request.getAttribute("n");
이것도 가능하나 자바코드블럭이 생겨서 목적과 좀 떨어짐
 */

/* String seq=request.getParameter("c");

NoticeDao dao=new NoticeDao();
Notice n=dao.getNotice(seq);
 */

 
 
 
 
/* 
String sql="select * from notices where seq="+seq;  //1을 변수인 seq로 넣어줌

//dbcon
Class.forName("oracle.jdbc.driver.OracleDriver");

String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";
Connection con=DriverManager.getConnection(url,user,pw);

//실행
Statement st=con.createStatement();

ResultSet rs=st.executeQuery(sql);

rs.next(); // 한번만 딱 내려가도록 한줄이니까. 레코드가 
 */
%>

<table class="twidth">
	<colgroup>
		<col width="15%"/>
		<col width="35%"/>
		<col width="15%"/>
		<col width="35%"/>
	</colgroup>
	
	<caption>Detail</caption>
	<tbody>
		<tr>
			<th class="left">글번호</th>
			<td>${n.seq }</td> <%-- <td><%=n.getSeq() %></td>기존이코드 대신 아래코드로 대신함  --%>
			<th class="left">조회수</th>
			<td>${n.hit }</td>
		</tr>
		<tr>
			<th class="left">작성자</th>
			<td>${n.writer }</td>
			<th class="left">작성시간</th>
			<td>${n.regdate }</td>
		</tr>
		<tr>
			<th class="left">제목</th>
			<td colspan="3">${n.title }</td>
		</tr>
		<tr>
			<th class="left">내용</th>
			<td colspan="3" id="content">${n.content }</td>
		</tr>
		<tr>
			<th class="left">첨부</th>
			<td colspan="3" id="addfile">첨부</td>
		</tr>
		
	</tbody>

</table>
<%-- 여기 아래 파람값 가지고 들어가야지 수정페이지에 파람전달됨 그래서 뒤에 이 거를 추가해줘야함. ?c=<%=rs.getString("seq") %> 이거를 넣어줘야함... --%>
<a href="noticeEdit.do?c=${n.seq }">수정</a>
<a href="noticeDelProc.do?c=${n.seq }">삭제</a>
<a href="notice.jsp">목록</a>

<!-- 해당하는 글번호를 가져가야지 그 해당 글을지우지 -->

<!-- 
executeUpdate //insert delete update
executeQeery(sql)
레이블 여러개인거는 리절트셋으로 받아야함.
 -->

<%-- <h1><%=seq %></h1>  --%> <!-- //이 같은 유니크해 . 중복된수가 없으므로. 이용할수있따 -->


</body>
</html>

<%
/* rs.close();
st.close();
con.close(); */
%>
