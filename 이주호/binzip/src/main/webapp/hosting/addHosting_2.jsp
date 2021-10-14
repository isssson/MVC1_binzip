<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.zipoption.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="zipopdao" class="binzip.zipoption.Binzip_ZipOptionDAO" scope="session"></jsp:useBean>
<jsp:useBean id="hostdao" class="binzip.hosting.Binzip_HostingDAO"></jsp:useBean>
<jsp:useBean id="imgwf" class="binzip.wf.ImgWebFolder" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<script>

	var width = '550';
	var height = '550';
	var x = Math.ceil((window.screen.width-width)/2);
	var y = Math.ceil((window.screen.height-height)/2);
		
	function imgFileUpload(){
		window.open('imgUpload.jsp','imgUpload','top='+y+', left='+x+', width='+width+', height='+height+', location=no, menubar=no, toolbar=no, status=no scrollbars=yes');
	}

</script>
</head>
<body>
<%@include file="/header.jsp" %>

<%
int bbs_idx = hostdao.idxSearch(sid);
String idx = Integer.toString(bbs_idx);

imgwf.setId(sid);
imgwf.setHost_bbs_idx(idx);
imgwf.host_BbsImgFolderExist();
long totalSize=imgwf.getTotalSize()/1024;
long usedSize=imgwf.getUsedSize()/1024;
long freeSize=imgwf.getFreeSize()/1024;
%>
<section>
	<article>
		<form name="addHosting_2" action="addHosting_2_ok.jsp">
		<div class="hosting_lb">
			<label class="sizemeter">총 용량</label><%=idx %>
			<meter min="0" max="<%=imgwf.getTotalSize() %>" value="<%=imgwf.getTotalSize()%>"></meter>(<%=totalSize%> KB)<br>
			<label class="sizemeter">사용 용량</label>
			<meter min="0" max="<%=imgwf.getTotalSize()  %>" value="<%=imgwf.getUsedSize()%>"></meter>(<%=usedSize%> KB)<br>
			<label class="sizemeter">남은 용량</label>
			<meter min="0" max="<%=imgwf.getTotalSize()  %>" value="<%=imgwf.getFreeSize()%>"></meter>(<%=freeSize%> KB)<br>
		</div>
		<div>			
			<input type="button" value="사진올리기" onclick="imgFileUpload();"><br>		
			png,jpg,jfif의 파일만 최대 10개, 최대용량 10MB(10,240KB) 까지 가능합니다.<br>
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
			ArrayList<Binzip_ZipOptionDTO> arr1=zipopdao.zipOptionList();
			if(arr1==null||arr1.size()==0){
				%>
				<label><input type="checkbox" name="zipop" value="benotin">없음</label>
				<%
			}else{
				for(int i=0;i<arr1.size();i++){
					%>
					<label><input type="checkbox" name="zipoption" value="<%=arr1.get(i).getOp()%>"><%=arr1.get(i).getOp()%></label>
					<%
				}
			}
			%>
		</div>
		<div class="hosting_lb">
			<label>주방 옵션</label>
			<%
			ArrayList<Binzip_ZipOptionDTO> arr2=zipopdao.kitchenOptionList();
			if(arr2==null||arr2.size()==0){
				%>
				<label><input type="checkbox" name="zipop" value="benotin">없음</label>
				<%
			}else{
				for(int i=0;i<arr2.size();i++){
					%>
					<label><input type="checkbox" name="kitchenoption" value="<%=arr2.get(i).getOp()%>"><%=arr2.get(i).getOp()%></label>
					<%
				}
			}
			%>
		</div>
		<div class="hosting_lb">
			<label>욕실 옵션</label>
			<%
			ArrayList<Binzip_ZipOptionDTO> arr3=zipopdao.bathOptionList();
			if(arr3==null||arr3.size()==0){
				%>
				<label><input type="checkbox" name="zipop" value="benotin">없음</label>
				<%
			}else{
				for(int i=0;i<arr3.size();i++){
					%>
					<label><input type="checkbox" name="bathoption" value="<%=arr3.get(i).getOp()%>"><%=arr3.get(i).getOp()%></label>
					<%
				}
			}
			%>
		</div>
		<div class="hosting_lb">
			<label>기타옵션</label>
			<input type="text" name="etcoption">
		</div>
		<div>
			<input type="button" value="이전으로" onclick="javascript:location='/binzip/hosting/addHosting.jsp';">
			<input type="submit" value="호스팅 완료">
		</div>
		</form>
	</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>