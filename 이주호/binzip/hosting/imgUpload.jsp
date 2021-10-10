<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<jsp:useBean id="imgwf" class="binzip.wf.ImgWebFolder" scope="session"></jsp:useBean>
<%
String savePath = imgwf.HOST_HOME+"/"+imgwf.getCrpath(); 
try{
MultipartRequest mr = new MultipartRequest(request,savePath,(int)imgwf.getFreeSize(),"utf-8");
}catch(Exception e){
	%>
	<script>
	window.alert('파일 업로드 실패! 용량 확인 후 다시 시도해 주세요');
	window.self.close();
	</script>
	<%
}
%>
<script>
window.alert('파일 업로드 성공!');
openner.location.reload();
window.self.close();
</script>