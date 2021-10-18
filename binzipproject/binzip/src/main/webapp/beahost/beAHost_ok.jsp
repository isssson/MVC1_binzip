<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String termsOfService = request.getParameter("termsOfService");
	String privacyPolicy = request.getParameter("privacyPolicy");
	
	if(termsOfService == null || privacyPolicy == null) {
		%>
		<script type="text/javascript">
			window.alert('모든 체크박스에 동의해주세요.');
			location.href = 'beAHost.jsp';
		</script>
		<%
	} else {
		%>
		<script type="text/javascript">
			location.href = 'beAHost_inputInfo.jsp';
		</script>
		<%
	}
%>