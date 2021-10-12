<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="binzip.help.*" %>
<jsp:useBean id="hdao" class="binzip.help.HelpDAO" scope="session"/>
 
 <%
	String idx_s = request.getParameter("idx");
	if(idx_s == null || idx_s.equals("")) {
		idx_s = "0";
	}
	
	int idx = Integer.parseInt(idx_s);
	HelpDTO dto = hdao.bbsContents(idx);
	
	if(dto == null) {
		%>
		<script>
			window.alert('삭제된 게시글 또는 잘못된 접근입니다.');
			location.href = 'help.jsp';
		</script>
		<%
		return;
	}
	
	String subject = request.getParameter("subject");
	String ref = request.getParameter("ref");
	String lev = request.getParameter("lev");
	String step = request.getParameter("step");
%>
 
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
			<form action="helpReWrite_ok.jsp">
				<input type="hidden" name="ref" value="<%= ref %>">
				<input type="hidden" name="lev" value="<%= lev %>">
				<input type="hidden" name="step" value="<%= step %>">	
				<hr>
				<div class="help_write_type">
					<span class="help_write_subject">
						<label>
							<input type="hidden" name="status" value="<%= dto.getStatus() %>">
							<%
							switch(dto.getStatus()) {
								case 1 : %>[예약관련]<% break;
								case 2 : %>[환불관련]<% break;
								case 3 : %>[호스팅관련]<% break;
								case 4 : %>[기타문의]<%
							}
							%>
						</label>
						<label>
							<input type="hidden" name="subject" value="Re : <%= subject %>">
							<b>Re : <%= subject %></b>
						</label>
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
					<button type="button" onclick="location.href='help.jsp'">목록으로</button>
					<button type="submit">작성완료</button>
				</span>
			</form>
		</div>
	</section>
	<%@ include file="../footer.jsp" %>
</body>
</html>