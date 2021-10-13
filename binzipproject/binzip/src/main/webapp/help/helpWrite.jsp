<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HELP</title>
	<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
	<style type="text/css">
		.help_main_text{
			text-align: center;
			clear: both;
			margin-top: 30px;
		}
		.help_main_text h1{
			font-size: 30px;
		}
		.help_main_text span{
			font-size: 16px;
		}
		.help_write{
			width: 890px;
			text-align: center;
			clear: both;
			margin: 0px auto;
			margin-top: 30px;
		}
		.help_write_contents{
			margin-top: 20px;
		}
		.help_write_subject{
			margin-right: 435px;
		}
	</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<section>
		<div class="help_main_text">
			<h1>H E L P</h1>
			<span>Q&#38;A</span>
		</div>
		<div class="help_write">
			<form action="helpWrite_ok.jsp">	
				<hr>
				<div class="help_write_type">
					<span class="help_write_subject">
						<label><b>제목</b></label>
						<input type="text" name="subject">
						<select name="status">
							<option value="1">예약관련</option>
							<option value="2">환불관련</option>
							<option value="3">호스팅관련</option>
							<option value="4">기타문의</option>
						</select>
					</span>
					<span class="help_write_name">
						<input type="hidden" name="binzip_member_id" value="<%= sid %>">
						<label>작성자&nbsp; : &nbsp;<%= sid %></label>
					</span>
				</div>
				<hr>
				<div class="help_write_contents">
					<textarea rows="30" cols="120" name="contents"></textarea>
				</div>
				<br>
				<span>
					<button type="button" onclick="location.href='help.jsp'">이전으로</button>
					<button type="submit">작성완료</button>
				</span>
			</form>
		</div>
	</section>
	<%@ include file="../footer.jsp" %>
</body>
</html>