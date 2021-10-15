<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
</head>
<body>
<%@include file="/header.jsp" %>
<section>
	<div><h1>HELP - Q&#38;A</h1></div>
	<form name="helpbbs" action="helpBbs.jsp">
		<table>
			<caption>질문게시판</caption>
			<thead>
				<tr>
					<th>번호</th>
					<th>분류</th>
					<th>작성자</th>
					<th>제목</th>
					<th>등록일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>testnum</td>
					<td>teststatus</td>
					<td>testwriter</td>
					<td>testsubject</td>
					<td>testdate</td>
					<td>testreadnum</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="6" align="right"></td>
				</tr>
			</tfoot>
		</table>
	</form>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>