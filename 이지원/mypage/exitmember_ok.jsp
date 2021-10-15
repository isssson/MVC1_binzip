<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="gdto" class="binzip.mypage.guest.GuestDTO"></jsp:useBean>
<jsp:setProperty property="*" name="gdto"></jsp:setProperty>
<jsp:useBean id="gdao" class="binzip.mypage.guest.GuestDAO"></jsp:useBean>

<%
int result=gdao.GuestDel(gdto);
String msg=result>0?"탈퇴 성공":"탈퇴 실패";
%>
<script>
window.alert('<%=msg%>');
location.href='../index.jsp';
</script>