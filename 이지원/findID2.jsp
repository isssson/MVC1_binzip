<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/mainLayout.css">
<style>
h3{
   font-size: 40px;
   text-align: center;
   clear: both;
}
h4{
 	font-size: 20px;
  	text-align: center;
  	clear: both;
}
.btIdlogin{
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
<%@include file="/header.jsp" %>
<section>
	<div>
	<h3>FIND ID</h3>
		<h4>고객님의 아이디는 binzip001  입니다.</h4>
		<input type="button" value="로그인하러가기" class="btIdlogin"><br>
	</div>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>