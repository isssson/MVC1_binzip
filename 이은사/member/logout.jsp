<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	session.invalidate(); //세션 종료.
	response.sendRedirect("/binzip/index.jsp"); //자바스크립트 로케이션 하이퍼레퍼런스와 같은 개념. 경로주의해서 작성.
%>