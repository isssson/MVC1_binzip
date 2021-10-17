<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="hostreservationdao" class="binzip.hostmypage.reserve.HostReserveDAO"></jsp:useBean>
<%
int bbsidx=Integer.parseInt(request.getParameter("bbsidx"));
String startdate=request.getParameter("startdate");
String gid=request.getParameter("gId");
int result=hostreservationdao.cancelPermission(gid, startdate, bbsidx);
String msg=result>0?"예약 취소 승인 완료":"고객센터로 문의바랍니다.";
%>
<script>
	window.alert('<%=msg%>');
	location.href='/binzip/mypage/hostmypage/cancelRequest.jsp';
</script>