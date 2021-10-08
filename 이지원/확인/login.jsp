<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/btn.css">
</head>
<%
Cookie cks[]=request.getCookies();
String saveid=" ";
if(cks!=null){
	for(int i=0;i<cks.length;i++){
		if(cks[i].getName().equals("saveid")){
			saveid=cks[i].getValue();
		}
	}
}
%>
<body>
<form name="login"  action="login_ok.jsp" method="post">
<section>
<div>
<h2>L O G I N</h2>
<hr>
<table>
<tr>
<td>I D</td>
<td><input type="text" name="userid" placeholder="아이디" value="<%=saveid%>"> </td>
</tr>
<tr>
<td>PASSWORD</td>
<td><input type="password" name="userpwd" placeholder="비밀번호"></td>
<td><input type="submit" value="LOGIN" class="btlogin"></td>
</tr>
<tr>
<td><input type="checkbox" name="saveid" value="on" <%=saveid.equals("")?"":"checked" %>>아이디 기억하기
</td>
</tr>
<tr>
<td><a href="/binzip/join.jsp">회원가입</a></td>
<td><a href="">아이디 찾기</a></td>
<td><a href="">비밀번호 찾기</a></td>
</tr>
</table>
</div>
</section>
</form>
</body>
</html>