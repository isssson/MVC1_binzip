<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<jsp:useBean id="imgwf" class="binzip.wf.ImgWebFolder" scope="session"></jsp:useBean>
<jsp:useBean id="hostdao" class="binzip.hosting.Binzip_HostingDAO" scope="session"></jsp:useBean>
<%@include file="/header.jsp" %>
<%
int bbs_idx = hostdao.idxSearch(sid);
String idx = Integer.toString(bbs_idx);

imgwf.setCrpath(sid+"/"+idx);
String savePath = imgwf.HOST_HOME+"/"+imgwf.getCrpath();

imgwf.imgPath();

try{
MultipartRequest mr = new MultipartRequest(request,savePath,(int)imgwf.getFreeSize(),"utf-8");
}catch(Exception e){
	%>
	<script>
	window.alert('파일 업로드 실패! 용량 확인 후 다시 시도해 주세요<%=idx%>');
	window.self.close();
	</script>
	<%
}
imgwf.imgPath();
%>
<script>
window.alert('파일 업로드 성공!<%=idx%>');
location.href='addHosting_2.jsp';
window.self.close();
</script>
