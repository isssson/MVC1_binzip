<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지- 관심 zip</title>
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
</style>
</head>
<body>
<%@include file="../header.jsp" %>
	<nav id="menu">
        <ul class="list">
             <li><a href="../mypage_host/mypage_host.jsp">개인정보</a></li>
             <li><a href="../mypage_host/my reservation_host.jsp">예약현황</a></li>
             <li><a href="../mypage_host/last reservation.jsp">지난 예약현황</a></li>
             <li><a href="../mypage_host/cancelReservation.jsp">취소 요청 내역</a></li>
             <li><a href="../mypage_host/hosting_my_zip.jsp">내가 올린 집</a></li>
             <li><a href="../mypage_host/total_Sales_host.jsp">총 매출</a></li>
             <li><a href="../mypage_host/myq&a_host.jsp">나의 문의 내역</a></li>
             <li><a href="../mypage_host/bookmark_host.jsp">관심ZIP</a></li>
         </ul>
    </nav>
<section>
	<article>
		<h2>BOOKMARK</h2>
    	<h4>관심가는 집</h4><hr>
    	<div class="info">
		<div class="zipres">
			<img src="/binzip/img/main_imgs/test_img_square.jpg" alt="추천집이미지">
		</div>
		<div class="info2">
			<h3> 미온가바이</h3>
			<h3> 서울/ 종로구</h3>
			<h3>최소 2명 /최대 3명</h3>
			<h3>290,000</h3>
			<input type="button" value="예약하기">
		</div>
	 </div>
	</article>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>