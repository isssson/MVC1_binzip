<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지- 회원 탈퇴</title>
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/mainLayout.css">
</head>
<body>
<%@include file="/header.jsp" %>
	<nav>
        <ul>
             <li><a href="#">개인정보</a></li>
             <li><a href="#">예약현황</a></li>
             <li><a href="#">지난 예약현황</a></li>
             <li><a href="#">취소 요청 내역</a></li>
             <li><a href="#">내가 올린 집</a></li>
             <li><a href="#">총 매출</a></li>
             <li><a href="#">나의 문의 내역</a></li>
             <li><a href="#">관심ZIP</a></li>
         </ul>
    </nav>
<section>
	<div>
		<h2>EXIT MEMBER</h2>
		<h5>회원 탈퇴</h5><hr>
	</div>
	<div>
	<h4>탈퇴 안내</h4>
	<h6>탈퇴 신청하기 전에 안내 사항을 꼭 확인해주세요</h6>
	<table>
		<tr>
			<td>사용하고 계신 아이디 binzip001 는 탈퇴 할 경우 재사용 및 복구가 불가능합니다</td>
		</tr>
		<tr>
			<td>이름,아이디,비밀번호는 재사용이 불가능하며 신중하게 선택해주시기 바랍니다</td>
		</tr>
	</table>
	</div>
	<input type="button" value="탈퇴하기" class="btjoin">
</section>
<%@include file="/footer.jsp" %>
</body>
</html>