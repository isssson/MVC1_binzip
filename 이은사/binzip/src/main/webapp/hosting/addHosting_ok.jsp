<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="hostdto" class="binzip.hosting.Binzip_HostingDTO" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="hostdto"/>    
<jsp:useBean id="hostdao" class="binzip.hosting.Binzip_HostingDAO" scope="session"></jsp:useBean>
<%
int result = hostdao.hostingWrite(hostdto);
String msg = result>0?"호스팅이 완료되었습니다!":"호스팅중 문제가 발생했습니다. 다시 작성해주세요.";
%>
<script>
window.alert('<%=msg%>');
location.href='addHosting_2.jsp';
</script>