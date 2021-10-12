<%@page import="javax.print.attribute.HashPrintRequestAttributeSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.zipoption.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="binzipoptiondao" class="binzip.zipoption.Binzip_ZipOptionDAO" scope="session"></jsp:useBean>
<%
request.setCharacterEncoding("utf-8");
String ziptype=request.getParameter("ziptype");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
</head>
<style>
.sizemeter{
	width:90px;
	float: left;
}
.hosting_lb meter{
	width: 250px;
}
</style>
<script>
	var width = '500';
	var height = '350';
	var x = Math.ceil((window.screen.width-width)/2);
	var y = Math.ceil((window.screen.height-height)/2);
	function addrSearch(){
		
		window.open('addrSearch.jsp','addrSearch','top='+y+', left='+x+', width='+width+', height='+height+', location=no, menubar=no, toolbar=no, status=no scrollbars=yes')
	}
	
	function openImgUpload(){
		
		window.open('imgUpload.jsp','imgUpload','top='+y+', left='+x+', width='+width+', height='+height+', location=no, menubar=no, toolbar=no, status=no scrollbars=yes')
		
	}
	var ziptype = document.addrSearch.ziptype.value;
</script>
<body>
<%@include file="/header.jsp" %>

<%

String id = (String)(session.getAttribute("sid"));

if(id==null || id.equals("")){	
	%>
	<script>
	window.alert('호스트만 사용가능합니다. 호스트 요청을 먼저 해주세요.');
	location.hre="/binzip/beahost/beAHost.jsp";
	</script>
	<%
	return;	
}
%>
<jsp:useBean id="imgwf" class="binzip.wf.ImgWebFolder" scope="session"></jsp:useBean>
<%
imgwf.setId(id);
imgwf.hostImgFolderExist();
long totalSize=imgwf.getTotalSize()/1024;
long usedSize=imgwf.getUsedSize()/1024;
long freeSize=imgwf.getFreeSize()/1024;
String si_do = request.getParameter("si_do");
String si_gun_gu=request.getParameter("si_gun_gu");
String road_name=request.getParameter("road_name");
String si_si = request.getParameter("si_si");

if(si_si == null || si_si.equals("")){
	si_si = "";
}

%>
<section>
	<article>
		<h2>HOSTING</h2>
		<h4>HOST 정보 입력</h4>
	</article>
	<form name="addhosting" action="addHosting_ok.jsp" method="post">
	<input type="hidden" name="ziptype" value="<%=ziptype%>">
		<div>
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
	<article><h4>ZIP 정보 입력</h4></article>
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
					<input type="text" name="zipaddr" id="firstAddr" readonly> 
					<input type="button" value="주소검색" readonly onclick="addrSearch();">
				</div>
				<div class="hosting_lb">
					<label>상세주소</label>
					<input type="text" name="zipdetailaddr" placeholder="상세주소는 정확히 입력해주세요.">
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