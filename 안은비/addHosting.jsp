<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String ziptype=request.getParameter("ziptype");
%>		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addHosting</title>
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout3.css">
<style>
h1{
	font-size: 40px;
	text-align: center;
	clear: both;
}
h4{
	margin-top: 80px;
	margin-bottom: 10px;
	text-align: center;
	font-size: 20px;
}
fieldset{
	width: 60%;
	margin: 0px auto;
	padding: 10px;	
}
.checking_box{
	margin-left: 230px;
	margin-top: 20px;
	margin-bottom: 5px;	
}
table{
	margin: 0px auto;
}
.hosting_tr, .hosting_lb{
	font-weight: bold;
	width: auto;
	padding-right: 30px;	
}
.hosting_tx{
	width: 0px auto;
}
.bottom_addhosting {
	clear: both;
	text-align: center;
	margin-top: 20px;
}
</style>
</head>
<script>
function addrSearch(){
	var width = '500';
	var height = '350';
	var x = Math.ceil((window.screen.width-width)/2);
	var y = Math.ceil((window.screen.height-height)/2);
	window.open('addrSearch.jsp','addrSearch','top='+y+', left='+x+', width='+width+', height='+height+', location=no, menubar=no, toolbar=no, status=no scrollbars=yes')
}
</script>
<body>
<%@include file="/header3.jsp" %>
<section>
	<article>
		<h1>HOSTING</h1>
	</article>
	<article>		
		<form name="addhosting" action="addHosting_ok.jsp" method="post">
		<h4>HOST 정보 입력</h4>
			<div class="checking_box">
				<label><input type="radio" name="infocheck" value="hostbasicinfo">기본 정보</label>
				<label><input type="radio" name="infocheck" value="hostnewinfo">새 정보</label>
			</div>		
			<fieldset>
				<table>				
					<tr>
						<td class="hosting_tr">아이디</td>			
						<td><input type="text" name="hostid"></td>
					</tr>
					<tr>
						<td class="hosting_tr">이름</td>
						<td><input type="text" name="hostname"></td>
					</tr>
					<tr>
						<td class="hosting_tr">이메일</td>				
						<td><input type="text" name="hostemail"></td>
					</tr>
					<tr>
						<td class="hosting_tr">전화번호</td>								
						<td><input type="text" name="hosttel"></td>
					</tr>
					<tr>
						<td class="hosting_tr">은행명</td>
						<td><input type="text" name="hostbank"></td>
					</tr>
					<tr>
						<td class="hosting_tr">계좌번호</td>
						<td><input type="text" name="hostacnumber"></td>
					</tr>
				</table>					
			</fieldset>	
	<h4>ZIP 정보 입력</h4>
		<div class="checking_box">
			<td><input type="radio" name="infocheck" value="zipbasicinfo">기본 정보</td>
			<td><input type="radio" name="infocheck" value="zipnewinfo">새 정보</td>
		</div>		
			<fieldset>
				<table>
					<tr>								
						<td class="hosting_lb">ZIP 이름</td>				
						<td class="hosting_tx"><input type="text" name="zipname"></td>
					</tr>
					<tr>
						<td td class="hosting_lb">ZIP 유형</td>
						<td class="hosting_tx"><input type="text" name="type" readonly></td>
					</tr>
					<tr>
						<td class="hosting_lb">주소</td>
						<td class="hosting_tx"><input type="text" name="zipaddr" rea</td>
						<input type="button" value="주소검색" onclick="addrSearch();"></td>
					</tr>
					<tr>
						<td class="hosting_lb">상세주소</td>
						<td class="hosting_tx"><input type="text" name="zipdetailaddr"></td>
					</tr>
					<tr> 
						<td class="hosting_lb">인원</td>				
						<td class="hosting_tx"><input type="text" name="zippeoplenum"></td>
					</tr>
					<tr> 
						<td class="hosting_lb">비용</td>
						<td class="hosting_tx"><input type="text" name="zipcost"></td>
					</tr>
					<tr> 
						<td class="hosting_lb">시작날짜</td>				
						<td class="hosting_tx"><input type='date'/></td>					
					</tr>
					<tr>
						<td class="hosting_lb">마지막날짜</td>				
						<td class="hosting_tx"><input type='date'/></td>
					</tr>
					<tr>
						<td class="hosting_lb">은행명</td>
						<td class="hosting_tx"><input type="text" name="zipbank"></td>
					</tr>
					<tr>
						<td class="hosting_lb">계좌번호</td>
						<td class="hosting_tx"><input type="text" name="zipacnumber" placeholder="-빼고 입력해주세요."></td>				
					</tr>
					<tr>
						<td class="hosting_lb">사진</td>				
						<td class="hosting_tx"><input type="text" name="zipimg" readonly><br>png, jpg, jif의 파일만 최대 10개 까지 가능합니다.					
						<input type="submit" value="사진올리기" formaction="imgUpload_ok.jsp" formmethod="post" formenctype="multipart/form-data"></td>
					</tr>
					<tr>
						<td class="hosting_lb">기본옵션</td>
						<p>
							<td>화장실&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							침구류&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							화재경보기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							소화기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							구급상자</td>
						</p>
					</tr>
					<tr> 
						<td class="hosting_lb">욕실 비품</td>
						<td class="hosting_tx">
							  <input type='checkbox' name='bathroom' value='towel'>수건&nbsp;&nbsp;
							  <input type='checkbox' name='bathroom' value='shampoo'>샴푸&nbsp;&nbsp;
							  <input type='checkbox' name='bathroom' value='rinse'>린스&nbsp;&nbsp;
							  <input type='checkbox' name='bathroom' value='toothpaste'>치약&nbsp;&nbsp;
							  <input type='checkbox' name='bathroom' value='toothbrush'>칫솔</td>
						</p>
					</tr>
					<tr>
						<td class="hosting_lb">주방 비품</td>				
						<td class="hosting_tx">
							  <input type='checkbox' name='bathroom' value='cub'>컵&nbsp;&nbsp;
							  <input type='checkbox' name='bathroom' value='cooker'>조리도구&nbsp;&nbsp;
							  <input type='checkbox' name='bathroom' value='spoon'>수저&nbsp;&nbsp;
							  <input type='checkbox' name='bathroom' value='teapot'>주전자&nbsp;&nbsp;
							  <input type='checkbox' name='bathroom' value='plate'>접시</td>
						</p>				
					</tr>
					<tr> 
						<td class="hosting_lb">구비 시설</td>			
						<td class="hosting_tx">
							  <input type='checkbox' name='bathroom' value='wifi'>와이파이&nbsp;&nbsp;
							  <input type='checkbox' name='bathroom' value='dryer'>헤어드라이어&nbsp;&nbsp;
							  <input type='checkbox' name='bathroom' value='aircon'>에어컨&nbsp;&nbsp;
							  <input type='checkbox' name='bathroom' value='heater'>히터&nbsp;&nbsp;
							  <input type='checkbox' name='bathroom' value='cooler'>냉장고</td>
						</p>					
					</tr>
						<td class="hosting_lb">기타 옵션</td>			
						<td class="hosting_tx"><input type="text" name="zip_opetc"></td>
					</tr>
					<tr>
						<td class="hosting_lb">이것만은 지켜주세요~</td>				
						<td class="hosting_tx"><textarea cols="35" rows="12"></textarea></td>
					</tr>
				</table>	
			</fieldset>
				<div class="bottom_addhosting">				
						<input type="button" value="이전으로" onclick="javascript:location.href='/binzip/hosting/hosting.jsp';">
						<input type="submit" value="호스팅 하기">				
				</div>
		</form>
	</article>
</section>
<%@include file="/footer3.jsp" %>
</body>
</html>