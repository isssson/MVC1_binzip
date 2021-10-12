<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반회원 마이페이지- 나의 예약 현황</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<style>
.list{
	list-style: none;
}
ul{
	text-align: left;
	background-color: lightgray;
}
li{
	float: left;
}
#menu{
	width:1200px;
	height: 150px;
}
#menu ul li{
	float: left;
	width:8%;
	line-height: 45px;
	text-align: center;
	background: lightgray;
}
#menu ul li a{
 	display: block;
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
<section>
	<nav id="menu">
        <ul class="list">
             <li><a href="../mypage/mypage.jsp">개인정보</a></li>
             <li><a href="../mypage/myreservation.jsp">예약현황</a></li>
             <li><a href="../mypge/myrescancel.jsp">취소 내역</a></li>
             <li><a href="../mypage/myq&a.jsp">문의 내역</a></li>
             <li><a href="../mypage/bookmark.jsp">관심ZIP</a></li>
         </ul>
    </nav>
	<article>
	<div>
		<div>
			<h2>MY RESERVATION</h2>
			<h4>나의 예약 현황</h4><hr>
		</div>
		<div class="info">
		<div class="zipres">
			<img src="/binzip/img/main_imgs/testimg.jfif" alt="추천집이미지">
		</div>
		<div class="info2">
			<h3> 모노가든</h3>
			<h3> 디자인 하우스 /  제주</h3>
			<h3>check in:      &nbsp;&nbsp;&nbsp; check out:   </h3>
			<h3>예약인원 :   2명</h3>
			<h3>가격</h3>
			<h3>입금 대기 중</h3>
			<input type="button" value="예약정보 변경">&nbsp;<input type="button" value="예약취소">
		</div>
		</div>
	 </div>
	<br>
	</article>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>