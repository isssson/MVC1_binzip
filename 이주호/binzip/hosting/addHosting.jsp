<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.zipoption.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="binzipoptiondao" class="binzip.zipoption.Binzip_ZipOptionDAO" scope="session"></jsp:useBean>
<%
String ziptype=request.getParameter("ziptype");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
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
				<div class="hosting_div">
					<label>아이디</label>
					<input type="text" name="hostid">
				</div>
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
	<article><h4>ZIP 정보 입력</h4></article>
		<div>
			<label><input type="radio" name="infocheck" value="zipbasicinfo">기본 정보</label>
			<label><input type="radio" name="infocheck" value="zipnewinfo">새 정보</label>
		</div>
		<div>
			<fieldset>
				<legend>집 정보 입력</legend>
				<div class="hosting_lb">
					<label>ZIP 이름</label>
					<input type="text" name="zipname">
				</div>
				<div class="hosting_lb">
					<label>ZIP 유형</label>
					<input type="text" name="type" value="<%=ziptype%>" readonly>
				</div>
				<div class="hosting_lb">
					<label>주소</label>
					<input type="text" name="zipaddr" readonly>
					<input type="button" value="주소검색" readonly onclick="addrSearch();">
				</div>
				<div class="hosting_lb">
					<label>상세주소</label>
					<input type="text" name="zipdetailaddr">
				</div>
				<div class="hosting_lb">
					<label>인원</label>
					<input type="text" name="zippeoplenum">
				</div>
				<div class="hosting_lb">
					<label>비용</label>
					<input type="text" name="zipcost">
				</div>
				<div class="hosting_lb">
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
				<div class="hosting_lb">
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
				<div class="hosting_lb">
					<label>은행명</label>
					<input type="text" name="zipbank">
				</div>
				<div class="hosting_lb">
					<label>계좌번호</label>
					<input type="text" name="zipacnumber"><br>
					-빼고 입력해주세요.
				</div>
				<div class="hosting_lb">
					<label>사진</label>
					<input type="text" name="zipimg" readonly><br>
					png,jpg,jfif의 파일만 최대 10개 까지 가능합니다.
					<input type="submit" value="사진올리기" formaction="imgUpload_ok.jsp" formmethod="post" formenctype="multipart/form-data">
				</div>
				<div class="hosting_lb">
					<label class="zip_op">기본옵션</label>
					<p>
						화장실&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						침구류&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						화재경보기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						소화기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						구급상자
					</p>
				</div>
				<div class="hosting_lb">
					<label>집 옵션</label>
					<%
					ArrayList<Binzip_ZipOptionDTO> arr1=binzipoptiondao.zipOptionList();
					if(arr1==null||arr1.size()==0){
						%>
						<label><input type="checkbox" name="zipop" value="benotin">없음</label>
						<%
					}else{
						for(int i=0;i<arr1.size();i++){
							%>
							<label><input type="checkbox" name="zipop" value="<%=arr1.get(i).getOp()%>"><%=arr1.get(i).getOp()%></label>
							<%
						}
					}
					%>
				</div>
				<div class="hosting_lb">
					<label>주방 옵션</label>
					<%
					ArrayList<Binzip_ZipOptionDTO> arr2=binzipoptiondao.kitchenOptionList();
					if(arr2==null||arr2.size()==0){
						%>
						<label><input type="checkbox" name="zipop" value="benotin">없음</label>
						<%
					}else{
						for(int i=0;i<arr2.size();i++){
							%>
							<label><input type="checkbox" name="kitop" value="<%=arr2.get(i).getOp()%>"><%=arr2.get(i).getOp()%></label>
							<%
						}
					}
					%>
				</div>
				<div class="hosting_lb">
					<label>욕실 옵션</label>
					<%
					ArrayList<Binzip_ZipOptionDTO> arr3=binzipoptiondao.bathOptionList();
					if(arr3==null||arr3.size()==0){
						%>
						<label><input type="checkbox" name="zipop" value="benotin">없음</label>
						<%
					}else{
						for(int i=0;i<arr3.size();i++){
							%>
							<label><input type="checkbox" name="kitop" value="<%=arr3.get(i).getOp()%>"><%=arr3.get(i).getOp()%></label>
							<%
						}
					}
					%>
				</div>
				<div class="hosting_lb">
					<label>기타옵션</label>
					<input type="text" name="zip_opetc">
				</div>
				<div class="hosting_lb">
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