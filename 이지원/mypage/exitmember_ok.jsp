<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="gdto" class=binzip.mypage.guest.GuestDTO></jsp:useBean>
<jsp:setProperty property="*" name="gdto"/>
<jsp:useBean id="gdao" class="binzip.mypage.guest.GuestDAO"></jsp:useBean>

<%
int result=gdao.GuestDel(gdto);
String msg=result>0?"회원 삭제 성공":"회원 삭제 실패";
%>
<script>
window.alert('<%=msg%>');
location.href='mypage.jsp';
</script>