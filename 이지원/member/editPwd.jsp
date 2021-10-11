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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<style>
h2{
	font-size: 40px;
   text-align: center;
   clear: both;
}
h5{
   font-size: 20px;
   text-align: center;
}
table{
	margin:auto;
}
.bt1{
    background-color:#5E5E5E;
	border-radius:5px;
	border:1px solid #5E5E5E;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:18px;
	padding:10px 40px;
	text-decoration:none;
	display:block;
   	margin:0px auto;
}
</style>
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
		</table><br>
		<input type="hidden" name="id" value=<%=id %>>
		<input type="submit" value="수정하기" class="bt1"> 
	</form>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>