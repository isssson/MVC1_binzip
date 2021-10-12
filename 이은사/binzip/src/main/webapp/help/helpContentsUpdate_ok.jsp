<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="hdao" class="binzip.help.HelpDAO" scope="session"/>

<%
	String contents = request.getParameter("contents");
	
	String idx_s = request.getParameter("idx");
	int idx = Integer.parseInt(idx_s);
	
	int result = hdao.updateContents(contents, idx);
	String msg = result > 0 ? "수정이 완료되었습니다." : "고객센터로 연락바랍니다.";
%>

<script>
	window.alert('<%= msg %>');
	location.href = 'help.jsp';
</script>