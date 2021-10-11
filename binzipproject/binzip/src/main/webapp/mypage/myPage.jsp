<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MY PAGE</title>
	<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
	<style>
	</style>
	<script>
		var y=now.getFullYear();
		var m=now.getMonth()+1;
		var d=now.getDate();
	</script>
</head>
<body>
	<%@include file="../header.jsp" %>
	<section>
	 	<nav>
	        <ul>
	             <li><a href="#">개인정보</a></li>
	             <li><a href="#">예약현황</a></li>
	             <li><a href="#">취소 내역</a></li>
	             <li><a href="#">문의 내역</a></li>
	             <li><a href="#">관심ZIP</a></li>
	             <li><a href="/binzip/member/logout.jsp">로그아웃</a></li>
	         </ul>
	    </nav>
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
					<td>
						<select name="question">
							<option value="질문">좋아하는 색깔은?</option>
							<option value="질문">좋아하는 음식은?</option>
							<option value="질문">좋아하는 동물은?</option>
							<option value="질문">좋아하는 동네는?</option>
						</select>
					</td>
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
					<td>생년월일</td>
					<td>
						<select name="year">
							<script>
								for(var i=1960;i<=2021;i++){
								document.write('<option value="'+i+'"'+(i==y?'selected':' ')+'selected>'+i+'</option>');}
							</script>
	  					</select>일
						<select name="month">
							<script>
								for(var i=1;i<=12;i++){
								document.write('<option value="'+i+'"'+(i==m?'selected':' ')+'selected>'+i+'</option>');}
							</script>
		  				</select>월
						<select name="date">
							<script>
								for(var i=1;i<=31;i++){
								document.write('<option value="'+i+'"'+(i==d?'selected':' ')+'selected>'+i+'</option>');}
							</script>
		  				</select>일
					</td>
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