<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	var width = '650';
	var height = '250';
	var x = Math.ceil((window.screen.width-width)/2);
	var y = Math.ceil((window.screen.height-height)/2);
	function addrSearch(){
		
		window.open('addrSearch.jsp','addrSearch','top='+y+', left='+x+', width='+width+', height='+height+', location=no, menubar=no, toolbar=no, status=no scrollbars=yes');
	}
	
	function openImgUpload(){
		
		window.open('imgUpload.jsp','imgUpload','top='+y+', left='+x+', width='+width+', height='+height+', location=no, menubar=no, toolbar=no, status=no scrollbars=yes');
		
	}	
</script>
<body>
<%@include file="/header.jsp" %>

<%
if(sid==null || sid.equals("")){	
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
imgwf.setId(sid);
imgwf.hostImgFolderExist();
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
	<input type="hidden" name="binzip_member_id" value="<%=sid%>">
		<div>
			<fieldset>
			
				<legend>호스트 정보 입력</legend>
				<div class="hosting_div">
					<label>이름</label>
					<input type="text" name="host_name">
				</div>
				<div class="hosting_div">
					<label>이메일</label>
					<input type="text" name="host_email">
				</div>
				<div class="hosting_div">
					<label>전화번호</label>
					<input type="text" name="host_phone" id="hostphone" minlength="10" maxlength="11" placeholder="- 빼고 입력해주세요.">
				</div>
				<div class="hosting_div">
					<label>은행명</label>
					<input type="text" name="host_bank">
				</div>
				<div class="hosting_div">
					<label>계좌번호</label>
					<input type="text" name="host_acnumber" placeholder="- 빼고 입력해주세요.">
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
					<input type="text" name="ziptype" value="<%=ziptype%>" readonly>
				</div>
				<div class="hosting_lb">
					<label>주소</label>
					<input type="text" name="zipaddr" id="firstAddr" readonly> 
					<input type="button" value="주소검색" readonly onclick="addrSearch();">
				</div>				
				<div class="hosting_lb">
					<label>비용</label>
					<input type="text" name="cost" placeholder="1일기준">
				</div>
				<div class="hosting_lb">
					<label>인원</label>
					<input type="text" name="peoplenum" placeholder="최대인원">
				</div>
				<div class="hosting_lb">
					<label>시작날짜</label>
					<input type="date" name="host_bbs_startdate" min="today" max="2023-12-31" required>
				</div>
				<div class="hosting_lb">
					<label>마지막날짜</label>
					<input type="date" name="host_bbs_enddate" min="today" max="2023-12-31" required>
				</div>										
				<div class="hosting_lb">
					<label>이것만은 지켜주세요~</label>
					<textarea cols="35" rows="12" name="contents"></textarea>
				</div>
			</fieldset>
		</div>
		<div>
			<input type="button" value="이전으로" onclick="javascript:location.href='/binzip/hosting/hosting.jsp';">
			<input type="submit" value="호스팅 하기" >
		</div>
	</form>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>