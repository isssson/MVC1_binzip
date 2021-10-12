<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.zipoption.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="binzipoptiondao" class="binzip.zipoption.Binzip_ZipOptionDAO" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
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
%>
<body>
<section>
<div class="hosting_lb">
	<label>사진</label>
	<input type="text" name="zipimg" readonly>
	<input type="file" name="imgupload" multiple accept=".png, .jpg, .jfif">
	<input type="submit" value="사진올리기" formaction="imgUpload.jsp" 
	formmethod="post" formenctype="multipart/form-data"><br>
	
	png,jpg,jfif의 파일만 최대 10개, 최대용량 10MB(10,240KB) 까지 가능합니다.<br>
	
	<label class="sizemeter">총 용량</label>
	<meter min="0" max="<%=imgwf.getTotalSize() %>" value="<%=imgwf.getTotalSize()%>"></meter>(<%=totalSize%> KB)<br>
	<label class="sizemeter">사용 용량</label>
	<meter min="0" max="<%=imgwf.getTotalSize()  %>" value="<%=imgwf.getUsedSize()%>"></meter>(<%=usedSize%> KB)<br>
	<label class="sizemeter">남은 용량</label>
	<meter min="0" max="<%=imgwf.getTotalSize()  %>" value="<%=imgwf.getFreeSize()%>"></meter>(<%=freeSize%> KB)
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
</section>
</body>
</html>