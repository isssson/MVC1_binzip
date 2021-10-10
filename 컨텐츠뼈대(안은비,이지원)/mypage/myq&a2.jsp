<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반회원 마이페이지-상세(카카오오븐30페이지)</title>
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
    </nav><hr>
    <article>
    	<h1>MY Q&A</h1>
    	<h5>내 문의 내역 보기</h5><hr>
    <table>
    	<tr>
    		<td><h4>제목</h4></td>
    		<td><input type="text"></td>
    		<td><select name="질문"><option>질문</option></select></td>
    		<td>조회수 15</td>
    	</tr>
    	<tr>
    		<td>작성자</td>
    		<td>testname</td>
    	</tr><hr>		
    </table>
    </article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>