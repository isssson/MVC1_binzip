<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 전용 페이지-호스트 회원 관리</title>
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/mainLayout.css">
</head>
<body>
<%@include file="/header.jsp" %>
	<nav>
        <ul>
             <li><a href="#">호스트 회원 관리</a></li>
             <li><a href="#">게스트 회원 관리</a></li>

         </ul>
    </nav>
<section>
	<article>
		<div>
			<h1>HOST LIST</h1>
    		<h5>호스트 관리</h5><hr>
		</div>
		<div>
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
				<td></td>
				<td><input type="button" value="잠그기"></td>
				<td><input type="button" value="탈퇴"></td>
			</tr>
		</table>
	</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>