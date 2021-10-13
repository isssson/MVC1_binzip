<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지- 나의 예약 현황(아이디 누르면 나오는 페이지/카카오오븐 36페이지)</title>
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
table{
	margin: 0px auto;
	width:500px;
	height:700px;
	text-align: center;
}
.bt01{
	text-align:center;
	display:block;
	margin: 0px auto;
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
		<h2>MY RESERVATION</h2>
		<h4>예약 현황</h4><hr>
	</div>
	<table>
		<tr>
			<td>입금 여부</td>
			<td> o </td>
		</tr>
		<tr>
			<td>예약자명</td>
			<td>홍길동</td>
		</tr>
		<tr>
			<td>입금자명</td>
			<td>홍길동</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td>010-1234-5678</td>
		</tr>
		<tr>
			<td>기간</td>
			<td>2021-10-01</td>
		</tr>
		<tr>
			<td>인원</td>
			<td>2명</td>
		</tr>
		<tr>
			<td>금액</td>
			<td>100,000원</td>
		</tr>
	</table>
	<div class="bt01">
	<input type="button" value="이전으로">&nbsp;<input type="submit" value="입금확인">&nbsp;<input type="submit" value="예약취소">
	</div>
	</form>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>