<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지- 내 정보보기</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<style>
.list{
	list-style: none;
}
#menu{
	width:1200px;
	height: 50px;
	margin-left: 350px;
}
#menu ul li{
	float: left;
	line-height: 30px;
	text-align: center;
	background: lightgray;
}
#menu ul li a{
 	display: block;
 	padding: 5px;
}
#menu ul li a:hover{
	background: gray;
	color: black;
}
h2{
	font-size: 40px;
	text-align: center;
	margin-top: 80px;
	clear: both;
}
h4{
	font-size: 20px;
	text-align: center;
	margin-bottom: 50px;
}
table{
	margin: 0px auto;
	width: 600px;	
	height: 550px;
}
</style>
</head>
<body>
<%@include file="../header.jsp" %>
 	<nav id="menu">
        <ul class="list">
             <li><a href="../mypage_host/mypage_host.jsp">개인정보</a></li>
             <li><a href="../mypage_host/my reservation_host.jsp">예약현황</a></li>
             <li><a href="../mypage_host/last reservation.jsp">지난 예약현황</a></li>
             <li><a href="../mypage_host/cancelReservation.jsp">취소 요청 내역</a></li>
             <li><a href="../mypage_host/hosting_my_zip.jsp">내가 올린 집</a></li>
             <li><a href="../mypage_host/total_Sales_host.jsp">총 매출</a></li>
             <li><a href="../mypage_host/myq&a_host.jsp">나의 문의 내역</a></li>
             <li><a href="../mypage_host/bookmark_host.jsp">관심ZIP</a></li>
         </ul>
    </nav>
<section>
	<article>
		<h2>MY PAGE</h2>
		<h4>내 정보 보기</h4>
	</article>
	<article>
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" value="영어,소문자 조합으로 8-16자  입력해주세요"></td>
				<td><input type="button" value="아이디찾기" class="btjoin2"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" value="특수문자(~!@#), 영어,숫자 조합으로 8-16자 입력해주세요"></td>
			</tr>
						<tr>
				<td>질문</td>
				<td><select name="question">
				<option value="질문">좋아하는 색깔은?</option>
				<option value="질문">좋아하는 음식은?</option>
				<option value="질문">좋아하는 동물은?</option>
				<option value="질문">좋아하는 동네는?</option>
				</select></td>
			</tr>
			<tr>
		  		<td>질문 답변</td>
		  		<td><input type="text" value="질문답변"></td>	
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" value="이름"></td>
			</tr>
			<tr>
				<td class="tx01">생년월일</td>			
				<td><input type="text" name="birthdate" id="txsize" minlength="8" maxlength="8" placeholder="yyyymmdd"></td>
			</tr>
			<tr>
				<td>핸드폰</td>
				<td><input type="text" value="핸드폰번호"></td>
				<td><input type="button" value="중복확인" class="btjoin"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" value="email"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" value="주소"></td>
				<td><input type="button" value="주소찾기" class="btjoin"></td>
			</tr>
			<tr>
				<td>은행명</td>
				<td><input type="text" value="은행명"></td>
			</tr>
			<tr>
				<td>계좌번호</td>
				<td><input type="text" value="은행명"></td>
			</tr>
			</table>
			<input type="button" value="정보수정하기">
			<input type="button" value="탈퇴하기" class="btjoin">
	</article>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>