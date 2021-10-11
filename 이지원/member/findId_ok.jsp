<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao" class="binzip.member.MemberDAO"></jsp:useBean>
<%
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String userid=mdao.findId(name, phone);
String msg="";
if(userid==null){
	msg="일치하는 정보가 없습니다";
}else{
	msg="고객님의 아이디는 '"+userid+"' 입니다.";	
}
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
.tx01{
	text-align: center;
}
.btlogin{
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
	<h2>FIND ID</h2>
	<br>
	<div class="tx01"><span class="tx01"><%=msg%></span></div>
	<br>
	<input type="button" value="로그인하러 가기" class="btlogin">
</section>
<%@include file="../footer.jsp" %>
</body>
</html>