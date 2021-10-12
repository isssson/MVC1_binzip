<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반회원 마이페이지-상세(카카오오븐30페이지)</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<style>
.list{
	list-style: none;
}
ul{
	text-align: left;
	background-color: lightgray;
}
li{
	float: left;
}
#menu{
	width:1200px;
	height: 150px;
}
#menu ul li{
	float: left;
	width:8%;
	line-height: 45px;
	text-align: center;
	background: lightgray;
}
#menu ul li a{
 	display: block;
}
#menu ul li a:hover{
	background: gray;
	color: black;
}
h2{
	font-size: 40px;
	text-align: center;
	margin-top: 80px;
	clear: both;
}
h4{
	font-size: 20px;
	text-align: center;
	margin-bottom: 50px;
}
table{
	margin: 0px auto;
}
.tx01{
margin-left: 250px;
}
.bt01{
	text-align:center;
	display:block;
	margin: 0px auto;
}
</style>
</head>
<body>
<%@include file="../header.jsp" %>
<section>
	<nav id="menu">
        <ul class="list">
             <li><a href="../mypage/mypage.jsp">개인정보</a></li>
             <li><a href="../mypage/myreservation.jsp">예약현황</a></li>
             <li><a href="../mypge/myrescancel.jsp">취소 내역</a></li>
             <li><a href="../mypage/myq&a.jsp">문의 내역</a></li>
             <li><a href="../mypage/bookmark.jsp">관심ZIP</a></li>
         </ul>
    </nav>
    <article>
    	<h2>MY Q&A</h2>
		<h4>내 문의 내역 보기</h4><hr>
    <table>
    	<tr>
    		<td><h3>제목</h3></td>
    		<td><input type="text"></td>
    		<td><select name="질문"><option>질문</option></select></td>
    		<td>조회수 15</td>
    	</tr>
    	<tr>
    		<td>작성자</td>
    		<td>testname</td>
    	</tr>	
    </table>
    <hr>
    <div class="tx01"><textarea cols="100" rows="20"></textarea></div>
    <div class="bt01"><input type="button" value="수정">&nbsp;<input type="button" value="수정하기"></div>
    </article>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>