<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/mainLayout.css">
<link rel="stylesheet" type="text/css" href="css/btn.css">

</head>
<body>
<%@include file="/header.jsp" %>
<section>
	<nav>
        <ul>
             <li><a href="#">개인정보</a></li>
             <li><a href="#">예약현황</a></li>
             <li><a href="#">취소 내역</a></li>
             <li><a href="#">문의 내역</a></li>
             <li><a href="#">관심ZIP</a></li>
         </ul>
    </nav>
    <article>
    	<h1>MY Q&A</h1>
    	<h5>내 문의 내역 보기</h5><hr>
    	<table>
    		<tr>
    			<th>번호&nbsp;&nbsp;|</th>
    			<th>제목&nbsp;&nbsp;|</th>
    			<th>등록일&nbsp;&nbsp;|</th>
    			<th>조회수</th>
    		</tr>
    		<tr>
    			<td>testnum</td>
    			<td>testsub</td>
    			<td>testdate</td>
    			<td>testread</td>
    		</tr>

    	</table>
    </article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>