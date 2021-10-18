<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="hostreservationdao" class="binzip.mypage.reserve.HostReserveDAO"></jsp:useBean>>
<%
int bbsidx=Integer.parseInt(request.getParameter("bbsidx"));
int result=hostreservationdao.zipClosed(bbsidx);
String msg=result>0?"영업종료 완료":"고객센터로 문의바랍니다.";
%>
<script>
	window.alert('<%=msg%>');
	location.href='/binzip/mypage/hostmypage/myZipUploaded.jsp';
</script>