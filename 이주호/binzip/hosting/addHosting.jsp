<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
</head>
<script>
function addrSearch(){
	window.open('addrSearch.jsp','addrSearch','top=200, left=400, width=400, height=250, location=no, menubar=no, toolbar=no, status=no scrollbars=yes')
}
</script>
<body>
<%@include file="/header.jsp" %>
<section>
	<article>
		<h2>HOSTING</h2>
		<h4>HOST 정보 입력</h4>
	</article>
	<form name="addhosting" action="addHosting_ok.jsp" method="post">
		<div>
			<label><input type="radio" name="infocheck" value="hostbasicinfo">기본 정보</label>
			<label><input type="radio" name="infocheck" value="hostnewinfo">새 정보</label>
		</div>
		<div>
			<fieldset>
				<legend>호스트 정보 입력</legend>
				<div>
					<label>아이디</label>
					<input type="text" name="hostid">
				</div>
				<div>
					<label>이름</label>
					<input type="text" name="hostname">
				</div>
				<div>
					<label>이메일</label>
					<input type="text" name="hostemail">
				</div>
				<div>
					<label>전화번호</label>
					<input type="text" name="hosttel">
				</div>
				<div>
					<label>은행명</label>
					<input type="text" name="hostbank">
				</div>
				<div>
					<label>계좌번호</label>
					<input type="text" name="hostacnumber">
				</div>				
			</fieldset>
		</div>
	<article><h4>ZIP 정보 입력</h4></article>
		<div>
			<label><input type="radio" name="infocheck" value="zipbasicinfo">기본 정보</label>
			<label><input type="radio" name="infocheck" value="zipnewinfo">새 정보</label>
		</div>
		<div>
			<fieldset>
				<legend>집 정보 입력</legend>
				<div>
					<label>ZIP 이름</label>
					<input type="text" name="zipname">
				</div>
				<div>
					<label>ZIP 유형</label>
					<input type="text" name="type">
				</div>
				<div>
					<label>주소</label>
					<input type="text" name="zipaddr" readonly>
					<input type="button" value="주소검색" onclick="addrSearch();">
				</div>
				<div>
					<label>상세주소</label>
					<input type="text" name="zipdetailaddr">
				</div>
				<div>
					<label>인원</label>
					<input type="text" name="zippeoplenum">
				</div>
				<div>
					<label>비용</label>
					<input type="text" name="zipcost">
				</div>
				<div>
					<label>시작날짜</label>
					<select name="zipstartdateyear">
						<option value="년">년</option>
					</select>
					<select name="zipstartdatemonth">
						<option value="월">월</option>
					</select>
					<select name="zipstartdateday">
						<option value="일">일</option>
					</select>
				</div>
				<div>
					<label>마지막날짜</label>
					<select name="zipenddateyear">
						<option value="년">년</option>
					</select>
					<select name="zipenddatemonth">
						<option value="월">월</option>
					</select>
					<select name="zipenddateday">
						<option value="일">일</option>
					</select>
				</div>
				<div>
					<label>은행명</label>
					<input type="text" name="zipbank">
				</div>
				<div>
					<label>계좌번호</label>
					<input type="text" name="zipacnumber"><br>
					-빼고 입력해주세요.
				</div>
				<div>
					<label>사진</label>
					<input type="text" name="zipimg" readonly><br>
					png,jpg,jfif의 파일만 최대 10개 까지 가능합니다.
					<input type="submit" value="사진올리기" formaction="imgUpload_ok.jsp" formmethod="post" formenctype="multipart/form-data">
				</div>
				<div>
					<label class="zip_op">기본옵션</label>
					<p>
						화장실&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						싱크대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						이불&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						에어컨&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</p>
				</div>
				<div>
					<label>욕실 비품</label>
					<p>
						욕실 체크박스
					</p>
				</div>
				<div>
					<label>주방 비품</label>
					<p>
						주방 체크박스
					</p>
				</div>
				<div>
					<label>구비 시설</label>
					<p>
						구비시설 체크박스
					</p>
				</div>
				<div>
					기타<input type="text" name="zip_opetc">
				</div>
				<div>
					<label>이것만은 지켜주세요~</label>
					<textarea cols="35" rows="12"></textarea>
				</div>
			</fieldset>
		</div>
		<div>
			<input type="button" value="이전으로" onclick="javascript:location.href='/binzip/hosting/hosting.jsp';">
			<input type="submit" value="호스팅 하기">
		</div>
	</form>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>