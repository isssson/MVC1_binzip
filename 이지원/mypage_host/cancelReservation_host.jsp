<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지- 취소 요청 내역</title>
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
    <form action="">
   	<div>
		<h2>CANCLE RESERVATION</h2>
		<h4>취소 요청 내역</h4><hr>
	</div>
    <div class="zipres">
		<img src="/binzip/img/main_imgs/test_img_square.jpg" alt="추천집이미지">
	</div>
	<div class="info2">
		<h3> 모노가든</h3>
		<h3> 디자인 하우스 /  제주</h3>
		<h3>예약인원 :   2명</h3>
		<h3>가격</h3>
		<input type="button" value="내용수정"> &nbsp;&nbsp;&nbsp; <input type="button" value="영업종료">
		</div>
		<table>
		<tr>
			<td>예약날짜</td>
			<td>아이디</td>
			<td>입금상태</td>
			<td>예약취소</td>
		</tr>
		<tr>
			<td>2021-10-04-2021-10-06</td>
			<td>홍길동</td>
			<td>O</td>
			<td><input type="button" value="승인"></td>
		</tr>
		</table>	
    </form>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>