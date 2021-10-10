<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao_header" class="binzip.member.MemberDAO"></jsp:useBean> 
<%
	String sid = (String)session.getAttribute("sid");
	String sgrade = (String)session.getAttribute("sgrade");
	
	System.out.println(sgrade); //test code
%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script>
		function openWhere(){
			window.open("/binzip/where/where.jsp","where","width=500, height=300, left=800, top=300");
		}
		function openLogin(){
			window.open("/binzip/member/login.jsp","where","width=500, height=300, left=800, top=300");
		}
	</script>
</head>
<header>
	<div class="binzipLogo">
		<a href="/binzip/index.jsp"><img src="/binzip/main_imgs/binzip_logo.png" alt="빈집로고"></a>
	</div>
	<nav>
		<ul>
			<li class="whereMenu">
				<img src="/binzip/main_imgs/icon_locate.jpg" alt="위치로고" id="locateIcon">
				<a href="#">WHERE ?</a>
			</li>
			<li class="otherMenu">
				<a href="/binzip/findzip/findZip.jsp">FIND ZIP</a>
			</li>			
			<li class="otherMenu">
				<%
				if(sid == null || sgrade.equals(mdao_header.GUEST)) {
					%>
					<a href="/binzip/beahost/beAHost.jsp">BE A HOST</a>
					<%
				} else if(sgrade.equals(mdao_header.HOST) || sgrade.equals(mdao_header.ADMIN)) {
					%>
					<a href="/binzip/hosting/hosting.jsp">HOSTING</a>
					<%
				}
				 %>
			</li>			
			<li class="otherMenu">
				<a href="#">HELP</a>
			</li>
			<!-- mypage session area -->
			<li class="myMenu">
				<%
				if(sid == null) {
					%>
					<a href="javascript:openLogin();">
					<%
				} else {
					if(sgrade.equals(mdao_header.GUEST)) {
						%>
						<a href="/binzip/mypage/myPage.jsp">
						<%
					} else if(sgrade.equals(mdao_header.HOST)) {
						%>
						<a href="/binzip/mypage/myPage.jsp">
						<%
					} else if(sgrade.equals(mdao_header.ADMIN)) {
						%>
						<a href="/binzip/mypage/myPage.jsp">
						<%
					}
				} 
				%>
					<img src="/binzip/main_imgs/icon_mypage.png" alt="마이페이지 아이콘" id="myPageIcon">
				</a>
			</li>		
		</ul>
	</nav>
</header>
</html>