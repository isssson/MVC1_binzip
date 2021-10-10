<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지- 나의 문의 내역</title>
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/mainLayout.css">
</head>
<body>
<%@include file="/header.jsp" %>
	<nav>
        <ul>
             <li><a href="#">개인정보</a></li>
             <li><a href="#">예약현황</a></li>
             <li><a href="#">지난 예약현황</a></li>
             <li><a href="#">취소 요청 내역</a></li>
             <li><a href="#">내가 올린 집</a></li>
             <li><a href="#">총 매출</a></li>
             <li><a href="#">나의 문의 내역</a></li>
             <li><a href="#">관심ZIP</a></li>
         </ul>
    </nav>
<section>
	<article>
		    <h1>MY Q&A</h1>
    		<h5>내 문의 내역 보기</h5><hr>
    		<table>
    			<tr>
    				<td>번호</td>
    				<td>제목</td>
    				<td>등록일</td>
    				<td>조회수</td>
    			</tr>
    			<tr>
    				<td>1</td>
    				<td>결제방법은 어떻게 되나요?</td>
    				<td>2021-10-09</td>
    				<td>155</td>
    			</tr>
    		</table>
	</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>