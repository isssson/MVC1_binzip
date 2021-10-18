<%@page import="binzip.mypage.reserve.GuestReserveDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="guestreservationdao" class="binzip.mypage.reserve.GuestReserveDAO"></jsp:useBean>
<%
String userid=(String)session.getAttribute("sid");
String sdate=request.getParameter("sdate");
int bbsidx=Integer.parseInt(request.getParameter("bbsidx"));
int status=Integer.parseInt(request.getParameter("status"));
int result=guestreservationdao.deleteList(status, bbsidx, userid, sdate);
String msg=result>0?"해당 만료내역 삭제 완료":"고객센터로 문의바랍니다.";
%>
<script>
	window.alert('<%=msg%>');
	location.href='/binzip/mypage/guestmypage/guestReservationList.jsp';
</script>