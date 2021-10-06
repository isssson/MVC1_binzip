<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function openLogin(){
	window.open('/binzip/login.jsp','login','width=650,height=350');
}
</script>
</head>
<body>
<header>
		<div class="binzipLogo">
			<a href="index.jsp"><img src="/binzip/mainLayout_imgs/logo/mainLogo.png" alt="빈집로고"></a>
		</div>
		<nav>
			<ul>
				<li class="whereMenu">
					<img src="/binzip/mainLayout_imgs/logo/locateIcon.jpg" alt="위치로고" id="whereLogo">
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
					<a href="javascript:openLogin()"><img src="/binzip/mainLayout_imgs/logo/mypageIcon.png" alt="마이페이지 아이콘" id="myPageIcon"></a>
				</li>			
			</ul>
		</nav>
	</header>
</body>
</html>