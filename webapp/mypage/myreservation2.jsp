<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/mainLayout.css">
<link rel="stylesheet" type="text/css" href="css/btn.css">
</head>
<body>
<%@include file="/header.jsp" %>
<section>
	<nav>
        <ul>
             <li><a href="#">개인정보</a></li>
             <li><a href="#">예약현황</a></li>
             <li><a href="#">취소 내역</a></li>
             <li><a href="#">문의 내역</a></li>
             <li><a href="#">관심ZIP</a></li>
         </ul>
    </nav>
	<article>
	<div>
		<div>
			<div><h3>MY RESERVATION</h3><br>
			<h5>나의 예약 보기</h5></div><hr>
		</div>
		<div class="zipres">
		<img src="/binzip/mainLayout_imgs/testimg.jfif" alt="추천집이미지"></div>
		<div>
		<h3> 모노가든</h3>
		<h4> 디자인 하우스 /  제주</h4>
		<h4>check in:      &nbsp;&nbsp;&nbsp; check out:   </h4>
		<h4>예약인원 :   2명</h4>
		<h3>가격</h3>
		</div>
		<div>
	 	입금 완료 &nbsp;&nbsp;&nbsp; <input type="button" value="예약정보 변경">&nbsp;<input type="button" value="예약취소">
		</div>
		<div>주소: 제주도 제주시 행복동 456번지<br>
		호스트 이름: 김모노<br>
		호스트 연락처: 010-5656-4545<br>
		체크인 3시 체크아웃 11시/ 반려동물 x / 취사 x<br><br>
		(모노가든 이미지 클릭시 집 게시물 세부 페이지로 이동합니다.)<hr></div>
	</div>
	<table>
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
	<input type="button" value="홈으로 가기" class="btjoin">&nbsp;<input type="button" value="예약 취소하기" class="btjoin">
	</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>