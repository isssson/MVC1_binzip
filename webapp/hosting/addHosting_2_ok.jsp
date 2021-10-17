<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="zipopdto" class="binzip.zipoption.Binzip_ZipOptionDTO"></jsp:useBean>
<jsp:setProperty property="*" name="zipopdto"/>

<jsp:useBean id="hostdao" class="binzip.hosting.Binzip_HostingDAO" scope="session"></jsp:useBean>
<jsp:useBean id="zipopdao" class="binzip.zipoption.Binzip_ZipOptionDAO" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/header.jsp" %>
<%
int idx = hostdao.idxSearch(sid);
zipopdto.setBinzip_host_bbs_idx(idx);


int zresult = zipopdao.setZipOption(zipopdto);
int kresult = zipopdao.setKitchenOption(zipopdto);
int bresult = zipopdao.setBathOption(zipopdto);
String msg = zresult>0?"호스팅 완료!":"호스팅 실패!";
if(zresult > 0){
	%>
	<script>
	window.alert('호스팅 완료!');
	location.href='/binzip/index.jsp';
	</script>
	<%
}else if(kresult > 0){
	%>
	<script>
	window.alert('호스팅 완료!');
	location.href='/binzip/index.jsp';
	</script>
	<%
}else if(bresult > 0){
	%>
	<script>
	window.alert('호스팅 완료!');
	location.href='/binzip/index.jsp';
	</script>
	<%
}else{
	%>
	<script>
	window.alert('호스팅 실패!');
	location.href='/binzip/index.jsp';
	</script>
	<%
}
%>
</head>
<body>
<h3></h3>
</body>
</html>