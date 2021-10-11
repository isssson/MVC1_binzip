<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao" class="binzip.member.MemberDAO"></jsp:useBean>
<%
String question=request.getParameter("question");
String answer=request.getParameter("answer");
String id=request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BINZIP-비밀번호 수정</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
</head>
<body>
<%@include file="../header.jsp" %>
<section>
	<form name="editPwd" action="editPwd_ok.jsp">
	<h2>EDIT PASSWORD</h2>
	<h5>비밀번호 수정하기</h5>
		<table>
			<tr>
				<td>변경할 비밀번호</td>
				<td><input type="password" minlength="4" maxlength="16" name="pwd"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" minlength="4" maxlength="16" name="pwdcheck"></td>
			</tr>
		</table>
		<input type="hidden" name="id" value=<%=id %>>
		<input type="submit" value="수정하기"> 
	</form>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>