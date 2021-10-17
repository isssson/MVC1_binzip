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
    		<h1>BOOKMARK</h1>
    		<h5>관심가는 집</h5><hr>
		<div>
		<div class="">
		<img src="/binzip/mainLayout_imgs/testimg.jfif" alt="추천집이미지">
		</div>
		<div>
		<h3> 미온가바이</h3>
		<h4> 서울/ 종로구</h4>
		<h4>최소 2명 /최대 3명</h4>
		<h4>290,000</h4>
		</div>
		<div>
	 	<input type="button" value="예약하기">
		</div>
	 </div>
    </article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>