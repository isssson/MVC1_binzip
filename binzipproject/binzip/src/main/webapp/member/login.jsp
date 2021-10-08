<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
Cookie cks[]=request.getCookies();
String saveid="";
if(cks!=null){
	for(int i=0;i<cks.length;i++){
		if(cks[i].getName().equals("saveid")){
			saveid=cks[i].getValue();
		}
	}
}
%>
<body>
	<form name="login" action="login_ok.jsp" method="post">
		<fieldset>
			<legend>Login</legend>
			<ul>
				<li><label>ID</label>
				<input type="text" name="userid" placeholder="아이디" value="<%=saveid%>">
				</li>
				<li><label>Password</label>
				<input type="password" name="userpwd" placeholder="비밀번호">
				</li>
			</ul>
			<div><input type="checkbox" name="saveid" value="on" <%=saveid.equals("")?"":"checked" %>>
			ID 기억하기
			<input type="submit" value="LOGIN"></div>
			<input type="button" value="아이디찾기"></div>
			<input type="button" value="비밀번호찾기"></div>
		</fieldset>
	</form>
</body>
</html>