<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지- 총 매출 현황</title>
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
.tx01{
	text-align: center;
	font-size: 20px;
	margin-top: 50px;
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
	<article>
		<h2>총 매출 현황</h2><hr>
		<div class="tx01">총 매출 액 10,101,000원 입니다</div>
		<table>
			<tr>
				<td>번호</td>
				<td>이름</td>
				<td>입금확인</td>
				<td>취소</td>
			</tr>
			<tr>
				<td>01</td>
				<td>홍길동</td>
				<td>입금확인</td>
				<td>취소</td>
			</tr>
		</table>
	</article>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>