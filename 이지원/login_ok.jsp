<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao" class="binzip.member.memberDAO"></jsp:useBean>
<%
request.setCharacterEncoding("utf-8");
String userid=request.getParameter("userid");
String userpwd=request.getParameter("userpwd");

%>