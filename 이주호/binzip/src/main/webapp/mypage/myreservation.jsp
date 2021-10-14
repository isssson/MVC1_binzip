<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/mainLayout.css">
<link rel="stylesheet" type="text/css" href="css/btn.css">
<style>
.zipres img{
	width: 380px;
	height: auto;
	float: left;
}
</style>
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
		<h2>MY RESERVATION</h2>
		<h5>나의 예약 현황</h5><hr>
		</div>
		<div>
		<div class="zipres">
		<img src="/binzip/mainLayout_imgs/testimg.jfif" alt="추천집이미지">
		</div>
		 <div>
		<h3> 모노가든</h3>
		<h4> 디자인 하우스 /  제주</h4>
		<h4>check in:      &nbsp;&nbsp;&nbsp; check out:   </h4>
		<h4>예약인원 :   2명</h4>
		<h3>가격</h3>
		 </div>
		 <div>
	 	입금 대기 중 &nbsp;&nbsp;&nbsp; <input type="button" value="예약정보 변경">&nbsp;<input type="button" value="예약취소">
		 </div>
	 </div>
	 
	 <div>
	 	<div class="zipres">
		<img src="/binzip/mainLayout_imgs/testimg.jfif" alt="추천집이미지">
		</div>
		<div>
		<h3> 모노가든</h3>
		<h4> 디자인 하우스 /  제주</h4>
		<h4>check in:      &nbsp;&nbsp;&nbsp; check out:   </h4>
		<h4>예약인원 :   2명</h4>
		<h3>가격</h3>
		 </div>
	  	<div>
	 	만료된 예약 &nbsp;&nbsp;&nbsp; <input type="button" value="지난 내역 보기">
	 	</div>
	</div>
		
	<div>
	 	<div class="zipres">
		<img src="/binzip/mainLayout_imgs/testimg.jfif" alt="추천집이미지">
		</div>
		<div>
		<h3> 모노가든</h3>
		<h4> 디자인 하우스 /  제주</h4>
		<h4>check in:      &nbsp;&nbsp;&nbsp; check out:   </h4>
		<h4>예약인원 :   2명</h4>
		<h3>가격</h3>
	 	</div>
	  	<div>
	 	만료된 예약 &nbsp;&nbsp;&nbsp; <input type="button" value="지난 내역 보기">
	 	</div>
	</div>
	
	<div>
	 	<div class="zipres">
		<img src="/binzip/mainLayout_imgs/testimg.jfif" alt="추천집이미지">
		</div>
		<div>
		<h3> 모노가든</h3>
		<h4> 디자인 하우스 /  제주</h4>
		<h4>check in:      &nbsp;&nbsp;&nbsp; check out:   </h4>
		<h4>예약인원 :   2명</h4>
		<h3>가격</h3>
		 </div>
	  	<div>
	 	만료된 예약 &nbsp;&nbsp;&nbsp; <input type="button" value="지난 내역 보기">
		 </div>
	</div>
	
	<br>
	 </div>
	</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>