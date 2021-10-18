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
			<h1>HOST 등록 요청하기</h1>
		</div>
		<form name="inputfm" action="beAHost_inputInfo_ok.jsp">
			<input type="hidden" name="binzip_member_id" value="<%= sid %>">
			<div class="beahost_input">
				<fieldset>
					<legend>호스트 정보 입력</legend>
					<div class="hosting_div">
						<label>은행명</label>
						<input type="text" name="bank">
					</div>
					<div class="hosting_div">
						<label>계좌번호</label>
						<input type="text" name="acnumber">
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