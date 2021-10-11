<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String si_si = request.getParameter("lastaddr");
String ziptype = request.getParameter("ziptype");
%>

<script>

opener.location.href='/binzip/hosting/addHosting.jsp?si_si=<%=si_si%>';

window.self.close();
</script>