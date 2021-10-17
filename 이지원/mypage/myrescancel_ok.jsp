<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="gdao" class="binzip.mypage.guest.reserve.GuestReserveDAO"></jsp:useBean>
<%
String userid=(String)session.getAttribute("sid");
int result=gdao.cancelReservation(userid);
String msg=result>0?"예약 취소 되었습니다":"고객센터 연락 바랍니다";
%>
<script>
	window.alert('<%=msg%>');
	location.href='/binzip/mypage/myreservation.jsp';
</script>