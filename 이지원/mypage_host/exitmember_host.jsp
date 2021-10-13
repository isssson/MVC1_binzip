<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지- 회원 탈퇴</title>
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
h5{
	font-size: 20px;
	text-align: center;
	margin-bottom: 50px;
}
table{
	margin: 0px auto;
}
h4{
	text-align: center;
}
h6{
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
	<div>
		<h2>EXIT MEMBER</h2>
		<h5>회원 탈퇴</h5><hr>
	</div>
	<div>
	<h4>탈퇴 안내</h4>
	<h6>탈퇴 신청하기 전에 안내 사항을 꼭 확인해주세요</h6>
	<table>
		<tr>
			<td>사용하고 계신 아이디 binzip001 는 탈퇴 할 경우 재사용 및 복구가 불가능합니다</td>
		</tr>
		<tr>
			<td>이름,아이디,비밀번호는 재사용이 불가능하며 신중하게 선택해주시기 바랍니다</td>
		</tr>
	</table>
	</div>
	<input type="button" value="탈퇴하기" class="bt01">
</section>
<%@include file="../footer.jsp" %>
</body>
</html>