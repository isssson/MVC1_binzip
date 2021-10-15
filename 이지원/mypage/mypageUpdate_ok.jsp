<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="gdto" class="binzip.mypage.guest.GuestDTO"></jsp:useBean>
<jsp:setProperty property="*" name="gdto"/>
<jsp:useBean id="gdao" class="binzip.mypage.guest.GuestDAO"></jsp:useBean>
<%
int result=gdao.GuestUpdate(gdto);
String msg=result>0?"회원정보 수정 성공":"회원 정보 수정 실패";

%>
<script>
window.alert('<%=msg%>');
location.href='mypage.jsp';
</script>