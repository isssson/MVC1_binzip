<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HostList</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<style>
hr{
	width: 58%;
	margin-right: 200px;
}
h1{
	font-size: 40px;
	text-align: center;
	clear: both;
}
h4{
	font-size: 20px;
	text-align: center;
}
.input_box{
	float: right;
	margin-right: 40px;	
}
.hostTable{	
	border-top: 1px solid #444444;
	border-collapse: collapse;	
	margin: 100px auto;		
	width: 60%;
	height: 350px;
	text-align: center;	
}
th{
	font-size: 18px;
}
th, td{
	border-bottom: 1px solid #444444;	
	padding: 10px;	
}
th:first-child, td:first-child{
	border-left: none;
}

#alert{
	width: 180px;
	height: 170px;
	background-color: lightgray;
	position: absolute;
	top: 0px;
	left: 0px;
	display: none;		
}

span{
background: red;
}
</style>
</head>
<script>
var bDisplay=true;
function doDisplay(event){
	var con=document.getElementById("alert");
	if(con.style.display=='block'){
		con.style.display='none';			
	}else{
		con.style.display='block';
		con.style.left=(event.clientX+50) +'px';
		con.style.top=event.clientY +'px';
	}	
}

</script>
<body>
<%@include file="/header.jsp" %>
<section>
<hr>
	<article>
		<h1>HOST LIST</h1>
		<h4>호스트 관리</h4>
	</article>
	<article>
		<div class="input_box">
			<input type="text" placeholder="아이디 검색">
			<button>검색</button>
		</div>
	</article>
	<article>
		<div>
			<table class="hostTable">		
					<tr>
						<th>NAME</th>
						<th>ID</th>
						<th>LOCK</th>
						<th>탈퇴</th>									
					</tr>
					<tr>
						<td>홍길동</td>
						<td id="test"><span onclick="javascript:doDisplay(event);" id="hong">hong</span></td>
						<td><input type="button" value="잠그기" class="btjoin"></td>
						<td><input type="button" value="탈퇴" class="btjoin"></td>
					</tr>
					<tr>
						<td>둘리</td>
						<td><span onclick="javascript:doDisplay(event);" id="doll">doll</span></td>
						<td><input type="button" value="잠그기" class="btjoin"></td>
						<td><input type="button" value="탈퇴" class="btjoin"></td>
					</tr>
					<tr>
						<td>깐따삐야</td>
						<td><span onclick="javascript:doDisplay(event);" id="Bbi">Bbi</span></td>
						<td><input type="button" value="잠그기" class="btjoin"></td>
						<td><input type="button" value="탈퇴" class="btjoin"></td>
					</tr>
					<tr>
						<td>또치</td>
						<td><span onclick="javascript:doDisplay(event);" id="chichi">chichi</span></td>
						<td><input type="button" value="잠그기" class="btjoin"></td>
						<td><input type="button" value="탈퇴" class="btjoin"></td>
					</tr>
				</table>
			</div>
			<div class="alert_menu" id="alert">
				<ul>
					<li><a href="#">개인 정보</a></li>
					<li><a href="#">예약 현황</a></li>
					<li><a href="#">지난 예약 현황</a></li>
					<li><a href="#">취소 요청 내역</a></li>
					<li><a href="#">내가 올린 집</a></li>
					<li><a href="#">질문 내역</a></li>
				</ul>
			</div>
	</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>