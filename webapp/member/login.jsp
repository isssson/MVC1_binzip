<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LOGIN</title>
	<script>
		function joinOpen() {
		    self.close();
		    opener.parent.location.replace("/binzip/member/join.jsp");
		}
		function findIdOpen() {
		    self.close();
		    opener.parent.location.replace("/binzip/member/findId.jsp");
		}
		function findPwdOpen() {
		    self.close();
		    opener.parent.location.replace("/binzip/member/findPwd.jsp");
		}
	</script>
</head>
<%
	Cookie cks[] = request.getCookies();
	String saveid = "";
	if(cks != null) {
		for(int i = 0; i < cks.length; i++) {
			if(cks[i].getName().equals("saveid")) {
				saveid = cks[i].getValue();
			}
		}
	}
%>
<body>
	<form name="login" action="login_ok.jsp" method="post">
		<fieldset>
			<h3>Login</h3>
			<hr>
			<ul>
				<li><label>ID</label>
				<input type="text" name="userid" placeholder="아이디" value="<%= saveid %>">
				</li>
				<li><label>Password</label>
				<input type="password" name="userpwd" placeholder="비밀번호">
				</li>
			</ul>
			<input type="submit" value="LOGIN">
			<input type="checkbox" name="saveid" value="on" <%= saveid.equals("") ? "" : "checked" %>>
			아이디 기억하기
			<hr>
			<input type="button" value="회원가입" onclick="joinOpen();">
			<input type="button" value="아이디찾기" onclick="findIdOpen();">
			<input type="button" value="비밀번호찾기" onclick="findPwdOpen();">
		</fieldset>
	</form>
</body>
</html>