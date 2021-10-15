<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="hostreservationdao" class="binzip.hostmypage.reserve.HostReserveDAO"></jsp:useBean>
<%
String userid=(String)session.getAttribute("sid");
int result=hostreservationdao.payCheck(userid);
String msg=result>0?"상태 변경 완료":"고객센터로 문의바랍니다.";
%>
<script>
	window.alert('<%=msg%>');
	location.href='/binzip/mypage/hostmypage/hostReservationList.jsp';
</script>