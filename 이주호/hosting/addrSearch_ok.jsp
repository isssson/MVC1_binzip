<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String zipaddr_s = request.getParameter("zipaddr");
String zipaddr[] = zipaddr_s.split("동");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
	<form name="addr_search_div" action="addrSearch_ok.jsp">
		<div class="addrsearch">
			<input type="text" name="zipaddr" id="addrtext" value="">
			<input type="reset" value="다시작성">
			<input type="submit" value="검색">
		</div>	
	</form>
</section>
</body>
</html>