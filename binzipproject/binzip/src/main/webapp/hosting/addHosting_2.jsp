<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.zipoption.*" %>
<%@ page import="java.util.*" %>

<jsp:useBean id="zipopdao" class="binzip.zipoption.Binzip_ZipOptionDAO" scope="session"></jsp:useBean>
<jsp:useBean id="hostdao" class="binzip.hosting.Binzip_HostingDAO" scope="session"></jsp:useBean>
<jsp:useBean id="imgwf" class="binzip.wf.ImgWebFolder" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOSTING</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<style type="text/css">
section{
	text-align: center;
	margin-top: 100px;
}

.myButton {
	background-color:#000000;
	border-radius:30px;
	border:1px solid #000000;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	padding:6px 19px;
	text-decoration:none;
	margin-top: 15px;
	margin-bottom: 18px;
}
.myButton:hover {
	background-color:#ffffff;
	color:#000000;
}
label{ 
	display:inline-block; 
	width:150px; 
	line-height:35px; 
	text-align: left;
	margin-left: 10px;
}


</style>
</head>
<body>
<%@include file="/header.jsp" %>

<%
int bbs_idx = hostdao.idxSearch(sid);
String idx = Integer.toString(bbs_idx);

imgwf.setId(sid);
imgwf.setHost_bbs_idx(idx);
imgwf.host_BbsImgFolderExist();
%>
<section>
	<hr>
	<article>
		<form name="addHosting_2" action="addHosting_2_ok.jsp">
		<div>			
			<input type="button" class="myButton" value="사진올리기" onclick="imgFileUpload();"><br>		
			png,jpg,jfif의 파일만 최대 10개, 최대용량 10MB(10,240KB) 까지 가능합니다.<br>
		</div>
		<br>
		<div class="hosting_lb">
			<h3>기본옵션</h3>
			<p>
				화장실&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				침구류&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				화재경보기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				소화기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				구급상자
			</p>
		</div>
		<br>
		<br>
		<br>
		<div class="hosting_lb">
			<h3>집 옵션</h3>
			<%
			ArrayList<Binzip_ZipOptionDTO> arr1=zipopdao.zipOptionList();
			if(arr1==null||arr1.size()==0){
				%>
				<label><input type="checkbox" name="zop" value="benotin">없음</label>
				<%
			}else{
				for(int i=0;i<arr1.size();i++){
					if(i % 6 == 0){
						%><br><%
					}
					%>
					<label class="chbsize"><input type="checkbox" name="zop" value="<%=arr1.get(i).getOp()%>"><%=arr1.get(i).getOp()%></label>
					<%
				}
			}
			%>
		</div>
		<br>
		<br>
		<br>
		<div class="hosting_lb">
			<h3>주방 옵션</h3>
			<%
			ArrayList<Binzip_ZipOptionDTO> arr2=zipopdao.kitchenOptionList();
			if(arr2==null||arr2.size()==0){
				%>
				<label><input type="checkbox" name="kop" value="benotin">없음</label>
				<%
			}else{
				for(int i=0;i<arr2.size();i++){
					if(i % 6 == 0){
						%><br><%
					}
					%>
					<label class="chbsize"><input type="checkbox" name="kop" value="<%=arr2.get(i).getOp()%>"><%=arr2.get(i).getOp()%></label>
					<%
				}
			}
			%>
		</div>
		<br>
		<br>
		<br>
		<div class="hosting_lb">
			<h3>욕실 옵션</h3>
			<%
			ArrayList<Binzip_ZipOptionDTO> arr3=zipopdao.bathOptionList();
			if(arr3==null||arr3.size()==0){
				%>
				<label><input type="checkbox" name=bop value="benotin">없음</label>
				<%
			}else{
				for(int i=0;i<arr3.size();i++){
					if(i % 6 == 0){
						%><br><%
					}
					%>
					<label class="chbsize"><input type="checkbox" name="bop" value="<%=arr3.get(i).getOp()%>"><%=arr3.get(i).getOp()%></label>
					<%
				}
			}
			%>
		</div>
		<br>
		<br>
		<br>
		<div>
			<input type="button" class="myButton" value="이전으로" onclick="javascript:location='/binzip/hosting/addHosting.jsp';">
			<input type="submit" class="myButton" value="호스팅 완료">
		</div>
		</form>
	</article>
	<hr>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>
<script>

	var width = '550';
	var height = '550';
	var x = Math.ceil((window.screen.width-width)/2);
	var y = Math.ceil((window.screen.height-height)/2);
		
	function imgFileUpload(){
		window.open('imgUpload.jsp','imgUpload','top='+y+', left='+x+', width='+width+', height='+height+', location=no, menubar=no, toolbar=no, status=no scrollbars=yes');
	}

</script>