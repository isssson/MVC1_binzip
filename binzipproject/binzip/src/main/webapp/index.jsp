<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Binzip</title>
<style>
body{
	width: 1000px;
	margin: 0px auto;
	
}
header{
	width: 1000px;
}
.binzipLogo img{
	width: 60px;
	height: 60px;
	display: inline;
	margin-right: 150px;
	float: left;
	text-align: left;
}
header nav li{
	display: inline;
	list-style-type: none;
}
.whereMenu{
	font-size: 20px;
	margin-right: 150px;
}
.otherMenu{
	margin-right:50px;
}
.myMenu{
	margin-left: 150px;
}
header nav a{
	text-decoration: none;
	color: darkgray;
}
header nav{
	margin-top: 40px;	
}
#whereLogo{
	width: 15px;
	height: 15px;
}
body h5{
	text-align: center;
}
#myPageIcon{
	text-align: right;
	width: 17px;
	height: 17px;
}
.mainImg{	
	float: center;
}
.mainImg img{
	display: block;
	margin: 0px auto;
	width: 1000px;
	height: 400px;
	margin-top: 50px;
}
#bannerImg{
	width: 1000px;
	height: 400px;
	display: block;
	margin: 0px auto;
}


footer{
	width: 1000px;
	height: 300px;
	background-color: lightgray;
}
.footerImg img{
	width: 60px;
	height: 60px;
}
.footerPanel{
	font-size: 12px;
	margin-top: 20px;
	margin-left: 20px;
	padding-bottom: 20px;
}
.zipOffer table{
	width: 900px;
	height: 800px;
	margin: 0px auto;
	
}
.zipOffer img{
	width: 280px;
	height: auto;
	display: block;
	margin: 0px auto;
}
.zipOffer a{
	margin-left: 10px;
}
</style>
</head>
	<header>
		<div class="binzipLogo">
			<a href="index.jsp"><img src="/binzip/img/logo/mainLogo.png" alt="빈집로고"></a>
		</div>
		<nav>
			<ul>
				<li class="whereMenu">
					<img src="/binzip/img/logo/locateIcon.jpg" alt="위치로고" id="whereLogo">
					<a href="#">WHERE ?</a>
				</li>
				<li class="otherMenu">
					<a href="#">FIND ZIP</a>
				</li>			
				<li class="otherMenu">
					<a href="#">BE A HOST</a>
				</li>			
				<li class="otherMenu">
					<a href="#">HELP</a>
				</li>
				<li class="myMenu">
					<a href="#"><img src="/binzip/img/logo/mypageIcon.png" alt="마이페이지 아이콘" id="myPageIcon"></a>
				</li>			
			</ul>
		</nav>
	</header>
<body>
<section>
	<div class="mainImg">
		<img src="/binzip/img/main-top-img.png" alt="메인이미지">
	</div>
	<div>
		<h5>나의 집, 우리의 집</h5>
		<img src="/binzip/img/main-mid(banner)-img.jpg" alt="베너이미지" id="bannerImg">
	</div>
	<div>
		<h5>여기는 어때요? BINZIP 에서 제안하는 특별한 집</h5>
	</div>
	<div class="zipOffer">
		<table>
			<caption>추천게시물</caption>
			<tr>
				<td>
					<img src="/binzip/img/testimg.jfif" alt="추천집이미지"><br>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>
				</td>
				<td>
					<img src="/binzip/img/testimg.jfif" alt="추천집이미지"><br>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>
				</td>
				<td>
					<img src="/binzip/img/testimg.jfif" alt="추천집이미지"><br>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>	
				</td>									
			</tr>
			<tr>
				<td>
					<img src="/binzip/img/testimg.jfif" alt="추천집이미지"><br>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>
				</td>
				<td>
					<img src="/binzip/img/testimg.jfif" alt="추천집이미지"><br>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>
				</td>
				<td>
					<img src="/binzip/img/testimg.jfif" alt="추천집이미지"><br>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>
				</td>
			</tr>
		</table>
	</div>
</section>
</body>
<footer>
	<div class="footerImg">
		<img src="/binzip/img/logo/mainLogo.png" alt="하단로고">
	</div>
	<p class="footerPanel">
		상호 : (주) BINZIP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대표자 : Tim of Two<br><br>
		서울특별시 마포구 망원동 123-12&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TEL : 1588 - 1234 / +82 70 - 1234- 4567&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binzip@binzip.com<br><br>		
		사업자등록번호 : 123-12-12345&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;통신판매업신고 : 제2021-서울마포-0123[사업자정보확인]<br><br>
		관광사업자등록 : 일반여행업 2021-000012(마포구청)<br><br><br><br>
		&copy; BINZIP<br>
	</p>
</footer>
</html>