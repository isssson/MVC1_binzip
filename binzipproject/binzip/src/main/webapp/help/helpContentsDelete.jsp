<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="hdto" class="binzip.help.HelpDTO"></jsp:useBean>
<jsp:setProperty property="*" name="hdto"/>
<jsp:useBean id="hdao" class="binzip.help.HelpDAO" scope="session"/>

<%
	int result = hdao.deleteContents(hdto);
	String msg = result > 0 ? "문의하신 내역이 정상적으로 삭제되었습니다." : "고객센터로 연락바랍니다.";
%>

<script>
 	window.alert('<%= msg %>');
 	location.href = 'help.jsp';
</script>