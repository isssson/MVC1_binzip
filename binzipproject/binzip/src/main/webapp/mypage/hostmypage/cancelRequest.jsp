<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지 - 취소 요청</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<style>
.list{
	list-style: none;
}
#menu{
	width:1200px;
	height: 50px;
	margin-left: 350px;
}
#menu ul li{
	float: left;
	line-height: 30px;
	text-align: center;
	background: lightgray;
}
#menu ul li a{
 	display: block;
 	padding: 5px;
}
#menu ul li a:hover{
	background: gray;
	color: black;
}
h2{
	font-size: 40px;
	text-align: center;
	margin-top: 80px;
	clear: both;
}
h4{
	font-size: 20px;
	text-align: center;
	margin-bottom: 50px;
}
.zipres img{
	width: 380px;
	height: 380px;
	float:left;
	margin-left: 250px;
	margin-right: 40px;
}
.info{
	margin-bottom: 500px;
}
.info2{
	height: 380px;
	width: 380px;
	font-size: 10px; 
	float:left;
}
table{
	margin: 0px auto;
	width: 500px;
	height: 300px;
	text-align: center;
}
th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
}
</style>
<%
String userid = (String)session.getAttribute("sid");
%>
</head>
<body>
<%@include file="../../header.jsp" %>
	<nav id="menu">
        <ul class="list">
             <li><a href="/binzip/mypage/hostmypage/hostMyPage.jsp">개인정보</a></li>
             <li><a href="/binzip/mypage/hostmypage/hostReservationList.jsp">예약현황</a></li>
             <li><a href="/binzip/mypage/hostmypage/hostPastReservationList.jsp">지난 예약 내역</a></li>
             <li><a href="/binzip/mypage/hostmypage/cancelRequest.jsp">취소 요청 내역</a></li>
             <li><a href="/binzip/mypage/hostmypage/myZipUploaded.jsp">내가 올린 집</a></li>
             <li><a href="/binzip/member/logout.jsp">로그아웃</a></li>
         </ul>
    </nav>
<section>
	<div>
		<h2>CANCEL REQUEST</h2>
		<h4>취소 요청 내역</h4><hr>
		
	</div>
</section>
<%@include file="../../footer.jsp" %>
</body>
</html>