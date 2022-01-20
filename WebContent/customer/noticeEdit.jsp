<%@page import="customer.vo.Notice"%>
<%@page import="customer.dao.NoticeDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<h5>noticeDetail.jsp</h5>

<%-- 못받을수있음 그러면 디비에도 봇들어각고 리져트셋도 못가져감  r그래서 ㄹ이크 들어올떄 ?c=<%=rs.getString("seq") %> 이거 추가해줘야함 --%>

<%

/* notice에서 전달해온 c를 ..  아래소스로 받아쥼 */
//에디트 페이지에서 수정눌렀을떄 파람값을 전달 못받아옴..... 들어오냐에 따라서 파람전달


//String seq=request.getParameter("c");
//NoticeDao dao=new NoticeDao();
//Notice n=dao.getNotice(seq);
 

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
 //노티스디에이오를 부르기위해 객체를 생성해야함

%>
<form action="noticeEditProc.do" method="post">

<table class="twidth">
	<colgroup>
		<col width="15%"/>
		<col width="35%"/>
		<col width="15%"/>
		<col width="35%"/>
	</colgroup>
	<caption>Modify</caption>
	<tbody>
		<tr>
			<th class="left">글번호</th>
			<td>${nt.seq }</td> <%-- <%=n.getSeq() %>   --%> 
			<th class="left">조회수</th>
			<td>${nt.hit }</td>
		</tr>
		<tr>
			<th class="left">작성자</th>
			<td>${nt.writer }</td>
			<th class="left">작성시간</th>
			<td>${nt.regdate }</td>
		</tr>
		<tr>
			<th class="left">제목</th>
			<td colspan="3">
				<input type="text" class="inp" name="title" value="${nt.title }"/>
			<!-- name이 전달하는 파람값이고 벨류는 표시된느 사항 -->
			</td>
		</tr>
		<tr>
			<th class="left">내용</th>
			<td colspan="3" id="content">
				
				<textarea name="content" class="txt">${nt.title }</textarea>
				
				<!-- name이 전달하는 파람값이고 벨류는 표시된느 사항 -->
			
			
			</td>
		</tr>
		<tr>
			<th class="left">첨부</th>
			<td colspan="3" id="addfile">첨부</td>
		</tr>
		
	</tbody>

</table>
<!-- 다음페이지에서 쓸만한 전달값을 보내기위해 작성하는 코드. 아래  타입 히든--> 
<!-- 안보이지만 데이터는 가쥠 -->
<input type="hidden" name="c" value="${nt.seq }"/>

<input type="submit" value="저장" />
<a href="noticeDetail.jsp?c=${nt.seq }">취소</a>


</form>

<%-- <h1><%=seq %></h1>  --%> <!-- //이 같은 유니크해 . 중복된수가 없으므로. 이용할수있따 -->


</body>
</html>

<%-- 
<%
rs.close();
st.close();
con.close();
%>
 --%>