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
<title>HOSTING</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
</head>
<style>
<style>
h2{
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
	text-align: left;
}
.hosting label{
	display: block;
	float: left;
	width: 180px;

}
.hosting{
	padding-bottom: 20px;
}
.bt01{
	text-align:center;
	display:block;
	margin: 0px auto;
}
.hostMyButton {
	background-color:#000000;
	border-radius:18px;
	border:1px solid #000000;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:12px;
	padding:5px 22px;
	text-decoration:none;
	margin-top: 20px;
}
.hostMyButton:hover {
	background-color:#ffffff;
	color:#000000;
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
			<fieldset class="fdset1">			
				<legend>호스트 정보 입력</legend>
				<div class="hosting">
					<label>이름</label>
					<input type="text" name="host_name" required="required">
				</div>
				<div class="hosting">
					<label>이메일</label>
					<input type="text" name="host_email" required="required" size="25">
				</div>
				<div class="hosting">
					<label>전화번호</label>
					<input type="text" name="host_phone" size="25" id="hostphone" minlength="10" maxlength="11" placeholder="- 빼고 입력해주세요." required="required">
				</div>
				<div class="hosting">
					<label>은행명</label>
					<input type="text" name="host_bank" required="required">
				</div>
				<div class="hosting">
					<label>계좌번호</label>
					<input type="text" name="host_acnumber" size="25" placeholder="- 빼고 입력해주세요." required="required">
				</div>				
			</fieldset>
		</div>
	<article><h4>ZIP 정보 입력</h4></article>
		<div>
			<fieldset class="fdset2">
				<legend>집 정보 입력</legend>
				<div class="hosting">
					<label>ZIP 이름</label>
					<input type="text" name="zipname" required="required">
				</div>
				<div class="hosting">
					<label>ZIP 유형</label>
					<input type="text" name="ziptype" value="<%=ziptype%>" readonly required="required">
				</div>
				<div class="hosting">
					<label>주소</label>
					<input type="text" name="zipaddr" size="35" id="firstAddr" readonly required="required"> 
					<input type="button" value="주소검색" class="hostMyButton" readonly onclick="addrSearch();">
				</div>				
				<div class="hosting">
					<label>비용</label>
					<input type="text" name="cost" placeholder="1일기준" required="required">
				</div>
				<div class="hosting">
					<label>인원</label>
					<input type="text" name="peoplenum" placeholder="최대인원" required="required">
				</div>				
				<div class="hosting">					
					<input type="hidden" name="host_bbs_startdate" min="today" max="2023-12-31" required="required" value="2023-12-31">
				</div>
				<div class="hosting">					
					<input type="hidden" name="host_bbs_enddate" min="today" max="2023-12-31" required="required" value="2023-12-31">
				</div>										
				<div class="hosting">
					<label id="contitle">집에 대한 한줄 소개글</label>
					<textarea cols="35" rows="12" name="contents" required="required"></textarea>
				</div>
			</fieldset>
		</div>
		<div class="bt01">
			<input type="button" class="hostMyButton" value="이전으로" onclick="javascript:location.href='/binzip/hosting/hosting.jsp';">
			<input type="submit" class="hostMyButton" value="호스팅 하기" >
		</div>
	</form>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>