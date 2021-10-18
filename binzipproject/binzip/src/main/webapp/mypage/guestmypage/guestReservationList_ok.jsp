<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="guestreservationdao" class="binzip.mypage.reserve.GuestReserveDAO"></jsp:useBean>
<%
int bbsidx=Integer.parseInt(request.getParameter("bbsidx"));
String sdate=request.getParameter("sdate");
int status=Integer.parseInt(request.getParameter("status"));
int result=guestreservationdao.gCancelRequest(bbsidx, sdate, status);
String msg=result>0?"예약 취소 요청 완료":"고객센터로 문의바랍니다.";
%>
<script>
	window.alert('<%=msg%>');
	location.href='/binzip/mypage/guestmypage/guestReservationList.jsp';
</script>