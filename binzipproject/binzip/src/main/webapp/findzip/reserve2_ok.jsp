<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.reserve.*" %>
<jsp:useBean id="reserdto" class="binzip.reserve.Binzip_ReserveDTO" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="reserdto"/>
<jsp:useBean id="reserdao" class="binzip.reserve.Binzip_ReserveDAO" scope="session"></jsp:useBean>
<%


int result = reserdao.setReserve(reserdto);
String msg = result>0?"예약이 완료되었습니다.":"예약 중 문제가 발생하였습니다. 다시 시도해주세요.";
%>
<script>
window.alert('<%=msg%>');
location.href='/binzip/index.jsp';
</script>