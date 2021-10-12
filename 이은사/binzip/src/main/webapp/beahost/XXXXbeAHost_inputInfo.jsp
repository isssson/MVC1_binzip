<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BE A HOST</title>
	<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
	<style type="text/css">
		
		.beahost_main_text{
			text-align: center
		}
		.terms_box{
			border: 2px solid lightgray;
			text-align: center; 
		}
		fieldset{
			text-align: center;
		}
		.button{
			text-align: center;
		}
	</style>
</head>
<body>
	<%@include file="../header.jsp" %>
	<section>
		<div class="beahost_main_text">
			<h1>안쓰는 페이지 입니다.</h1>
		</div>
		<form action="beAHost_next.jsp">
			<div class="beahost_input">
				<fieldset>
					<legend>호스트 정보 입력</legend>
					<div class="hosting_div">
						<label>이름</label>
						<input type="text" name="hostname">
					</div>
					<div class="hosting_div">
						<label>이메일</label>
						<input type="text" name="hostemail">
					</div>
					<div class="hosting_div">
						<label>전화번호</label>
						<input type="text" name="hosttel">
					</div>
					<div class="hosting_div">
						<label>은행명</label>
						<input type="text" name="hostbank">
					</div>
					<div class="hosting_div">
						<label>계좌번호</label>
						<input type="text" name="hostacnumber">
					</div>				
				</fieldset>
			</div>
			<br>
			<div class="button">
				<button type="button" onclick="location.href='beAHost.jsp'">이전으로</button>
				<button type="submit">다음으로</button>
			</div>
		</form>
	</section>
	<%@include file="../footer.jsp" %>
</body>
</html>