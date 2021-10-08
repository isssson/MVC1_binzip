<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function openWhere(){
		window.open("/binzip/where/where.jsp","where","width=500, height=300, left=800, top=300");
	}
</script>
</head>
<body>
	<header>
		<div class="binzipLogo">
			<a href="/binzip/index.jsp"><img src="/binzip/img/main_imgs/binzip_logo.png" alt="빈집로고"></a>
		</div>
		<nav>
			<ul>
				<li class="whereMenu">
					<img src="/binzip/img/main_imgs/icon_locate.jpg" alt="위치로고" id="locateIcon">
					<a href="javascript:openWhere();">WHERE ?</a>
				</li>
				<li class="otherMenu">
					<a href="/binzip/findzip/findZip.jsp">FIND ZIP</a>
				</li>			
				<li class="otherMenu">
					<a href="#">BE A HOST</a>
				</li>			
				<li class="otherMenu">
					<a href="#">HELP</a>
				</li>
				<li class="myMenu">
					<a href="/binzip/member/join.jsp"><img src="/binzip/img/main_imgs/icon_mypage.png" alt="마이페이지 아이콘" id="myPageIcon"></a>
				</li>			
			</ul>
		</nav>
	</header>
</body>
</html>