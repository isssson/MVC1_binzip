<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반회원 마이페이지- 나의 예약보기</title>
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
h3{
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
.zipres{
	width: 380px;
	height: auto;
	display: inline-block;
	vertical-align: middle;
}
.info{
	height: auto;
	width: 380px;
	font-size: 10px; 
	content: ''; 
	display: inline-block;
	vertical-align: middle;
}
.info2{
margin-left: 950px;
}
table,tr,td{
margin: 0px auto;
padding-bottom: 20px;
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
		<div class="text01">
			<h3>MY RESERVATION</h3><br>
			<h5>나의 예약 보기</h5><hr>
		</div>
		<div class="zipres">
			<img src="/binzip/img/main_imgs/test_img_square.jpg" alt="추천집이미지"></div>
		<div class="info">
		<h2> 모노가든</h2>
		<h4> 디자인 하우스 /  제주</h4>
		<h4>check in:      &nbsp;&nbsp;&nbsp; check out:   </h4>
		<h4>예약인원 :   2명</h4>
		<h2>가격</h2>
		<h2>입금완료</h2>
		</div>
		<div class="info2">
	 	<input type="button" value="예약정보 변경">&nbsp;<input type="button" value="예약취소">
		</div>
		<div>주소: 제주도 제주시 행복동 456번지<br>
		호스트 이름: 김모노<br>
		호스트 연락처: 010-5656-4545<br>
		체크인 3시 체크아웃 11시/ 반려동물 x / 취사 x<br><br>
		(모노가든 이미지 클릭시 집 게시물 세부 페이지로 이동합니다.)<hr></div>
	</div>
	<table class="info3">
		<tr>
			<td>집 이름 </td>
			<td>모노가든</td>
		</tr>
		<tr>
			<td>체크인 </td>
			<td>2021-10-05</td>
		</tr>
		<tr>
			<td>체크 아웃</td>
			<td>2021-10-08</td>
		</tr>
		<tr>
			<td>인원 수 </td>
			<td>2명</td>
		</tr>
		<tr>
			<td>이름 </td>
			<td>홍길동</td>
		</tr>
		<tr>
			<td>휴대폰 번호 </td>
			<td>010-1234-5678</td>
		</tr>
		<tr>
			<td>입금자명</td>
			<td>홍길동</td>
		</tr>
		<tr>
			<td>가격 </td>
			<td>524,700원</td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="context"></textarea></td>
		</tr>
	</table>
	<div class="bt01"><input type="button" value="홈으로 가기" class="btjoin">&nbsp;<input type="button" value="예약 취소하기" class="btjoin"></div>
	</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>