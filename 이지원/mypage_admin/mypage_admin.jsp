<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 전용 페이지-호스트 회원 관리</title>
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
	height: 50px;
}
#menu ul li{
	float: left;
	width:20%;
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
h1{
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
.sc01{
	margin-left: 800px;
}
table{
	margin: 0px auto;
	border-spacing:15px;
}
table,tr{
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
}
</style>
</head>
<body>
<%@include file="../header.jsp" %>
	<nav id="menu">
        <ul class="list">
             <li><a href="../mypage_admin/mypage_admin.jsp">호스트 회원 관리</a></li>
             <li><a href="../mypage_admin/mypage_admin2.jsp">게스트 회원 관리</a></li>
         </ul>
    </nav>
<section>
	<article>
		<div>
			<h1>HOST LIST</h1>
    		<h5>호스트 관리</h5><hr>
		</div>
		<div class="sc01">
		<input type="text" value="검색어를 입력">
		<button>검색</button>
		</div>
		<table>
			<tr>
				<td>name</td>
				<td>ID</td>
				<td>LOCK</td>
				<td>탈퇴</td>
			</tr>
			<tr>
				<td>홍길동</td>
				<td><a href="#">홍길동</a></td>
				<td><input type="button" value="잠그기"></td>
				<td><input type="button" value="탈퇴"></td>
			</tr>
		</table>
	</article>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>