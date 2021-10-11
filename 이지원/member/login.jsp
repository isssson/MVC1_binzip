<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BINZIP-로그인</title>
<style>
h3{
	font-size: 40px;
 	text-align: center;
	margin-top: 80px;
	clear:both;
}
ul{
	list-style: none;
    padding-left: 0px;
}	
.btlogin{
	background-color:gray;
	color:white;
	text-align:center;
	font-size:16px;
}
</style>
<script>
function joinOpen(){
    self.close();
    opener.parent.location.replace("/binzip/member/join.jsp");
}
function findIdOpen(){
    self.close();
    opener.parent.location.replace("/binzip/member/findId.jsp");
}
function findPwdOpen(){
    self.close();
    opener.parent.location.replace("/binzip/member/findPwd.jsp");
}
</script>
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
			<h3>Login</h3>
			<hr>
			<ul>
				<li><label class="tx01">ID</label>
				<input type="text" name="userid" placeholder="아이디" value="<%=saveid%>">
				</li>
				<li><label class="tx01">Password</label>
				<input type="password" name="userpwd" placeholder="비밀번호" >
				<input type="submit" value="LOGIN" class="btlogin">
				</li>
			</ul>
			<input type="checkbox" name="saveid" value="on" <%=saveid.equals("")?"":"checked" %>>
			아이디 기억하기
			<hr>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="회원가입" onclick="joinOpen();">&nbsp;
			<input type="button" value="아이디찾기" onclick="findIdOpen();">&nbsp;
			<input type="button" value="비밀번호찾기" onclick="findPwdOpen();">
		</fieldset>
	</form>
</body>
</html>