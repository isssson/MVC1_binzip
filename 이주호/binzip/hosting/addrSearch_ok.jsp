<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String addrsearch=request.getParameter("zipaddr");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
	<form name="addr_search_div">
		<div class="addrsearch">
			<input type="text" name="resultaddr" readonly><br>
			<input type="button" value="이전으로" onclick="location.href='/binzip/hosting/addrSearch.jsp';">
			<input type="reset" value="다시작성">
			<input type="submit" value="검색">
		</div>	
	</form>
</section>
</body>
</html>