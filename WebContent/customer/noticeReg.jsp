<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<h3>NoticeReg.jsp</h3>
<%-- ${uid } --%>
<!--세션이 와있음 위에 이거 없으면 에러나넹.. 작성자 등록이 안돼네?? -->

<form action="noticeRegProc.do" method="post">
   <table class="twidth">
   <colgroup>
      <col width="15%" />
      <col width="35%" />
      <col width="15%" />
      <col width="35%" />   
   </colgroup>
   <caption>Write</caption>
   <tbody>      
      <tr>
         <th class="left">제목</th>
         <td colspan="3">
         <input class="inp" name="title"  />
         </td>
      </tr>
      <tr>
         <th class="left">내용</th>
         <td colspan="3" id="content">
         
         <textarea class="txt" name="content"></textarea>
         </td>
      </tr>
      <tr>
         <th class="left">첨부</th>
         <td colspan="3" id="addfile">
            <input type="file" name="file" size="50" class="inp" />
         </td>
      </tr>
   </tbody>
</table>

   <input type="hidden" name="uid" value="${uid }" />
   <input type="submit" value="save" />
   <input type="button" value="cancel" class="cancel" />

</form>
</body>
</html>