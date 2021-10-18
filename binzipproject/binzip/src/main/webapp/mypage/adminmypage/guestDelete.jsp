<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="admindao" class="binzip.adminmypage.AdminDAO"></jsp:useBean>
<%
String id = request.getParameter("guestdelid");
int result = admindao.Delete(id);
String msg = result>0?id+"회원의 탈퇴가 완료되었습니다.":"이미 탈퇴된 회원이거나 잘못된 접근입니다.";
%>
<script>
window.alert('<%=msg%>');
location.href='guestList.jsp';
</script>