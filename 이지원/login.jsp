<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/btn.css">
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
<style>
h2{
 font-size: 40px;
 text-align: center;
 margin-top: 80px;
 clear:both;
}
.table01{
margin: 0px auto;
width:600px;
height:550px;
}
.tx01{
padding:10px;
text-align: left;
font-size:20px;
}
.tx02{
padding:5px;
text-align: left;
size:30;
}
.btlogin{
background-color:gray;
color:white;
text-align:center;
font-size:16px;
}
</style>
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
<table class="tabel01">
<tr>
<td class="tx01">I D</td>
<td class="tx02"><input type="text" name="userid" placeholder="아이디" value="<%=saveid%>"> </td>
</tr>
<tr>
<td class="tx01">PASSWORD</td>
<td class="tx02"><input type="password" name="userpwd" placeholder="비밀번호"></td>
<td><input type="submit" value="LOGIN" class="btlogin"></td>
</tr>
<tr>
<td><input type="checkbox" name="saveid" value="on" <%=saveid.equals("")?"":"checked" %>>아이디 기억하기
</td>
</tr>
<tr>
<td><a href="/binzip/join.jsp">회원가입</a></td>
<td><a href="/binzip/findID.jsp">아이디 찾기</a></td>
<td><a href="">비밀번호 찾기</a></td>
</tr>
</table>
</div>
</section>
</form>
</body>
</html>