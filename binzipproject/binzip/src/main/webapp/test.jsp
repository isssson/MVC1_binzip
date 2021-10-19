<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>TEST</h1>
<%= application.getContextPath() %>
<h1>1</h1>
<%= request.getSession().getServletContext().getRealPath("/") %>
<h1>2</h1>
<%= application.getRealPath("/img") %>
<img alt="test" src="/img/test.png">
</body>
</html>