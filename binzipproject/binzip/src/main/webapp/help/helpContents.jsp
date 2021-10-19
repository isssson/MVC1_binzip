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
		.help_write_subject{
			margin-right: 150px;
			margin-left: 150px;
		}
		.help_write_contents{
			margin-top: 20px;
		}
		.rewrite{
			margin-left: 550px;
		}
		.helpButton {
			background-color:#000000;
			border-radius:18px;
			border:1px solid #000000;
			cursor:pointer;
			color:#ffffff;
			font-family:Arial;
			font-size:12px;
			padding:5px 22px;
			text-decoration:none;
			margin-top: 20px;
		}
		.helpButton:hover {
			background-color:#ffffff;
			color:#000000;
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
			<hr>
			<div class="help_write_type">
				<span class="help_write_name">
					<input type="hidden" name="binzip_member_id" value="<%= sid %>">
					<label>작성자&nbsp; : &nbsp;<%= sid %></label>
				</span>
				<span class="help_write_subject">
					<label>
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
						<b><%= dto.getSubject().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;") %></b>
					</label>
				</span>
				<span class="help_write_readnum">
					<label>조회수&nbsp; : &nbsp;<%= dto.getReadnum() %></label>
				</span>
			</div>
			<hr>
			<div class="help_write_contents">
				<textarea rows="30" cols="120" name="contents" readonly="readonly">
					<%= dto.getContents().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;") %>
				</textarea>
			</div>
			<br>
			<span>
				<button type="button" class="helpButton" onclick="location.href='help.jsp'">이전으로</button>
				<%
				if(sid.equals(dto.getBinzip_member_id()) || sgrade.equals(mdao_header.ADMIN)) {
					%>
					<button type="button" class="helpButton" onclick="location.href='helpContentsUpdate.jsp?idx=<%= dto.getIdx() %>'">수정하기</button>
					<button type="button" class="helpButton" onclick="location.href='helpContentsDelete.jsp?idx=<%= dto.getIdx() %>'">삭제하기</button>						
					<%
				}
				%>
			</span>
			<span class="rewrite">
				<% 
				if(sid.equals(dto.getBinzip_member_id()) || sgrade.equals(mdao_header.ADMIN)) {
					%>
					<button type="button" class="helpButton" onclick="location.href='helpReWrite.jsp?idx=<%= dto.getIdx() %>&subject=<%= dto.getSubject() %>&ref=<%= dto.getRef() %>&lev=<%= dto.getLev() %>&step=<%= dto.getStep() %>'">
					답변쓰기
					</button>
					<%
				}
				%>
			</span>
		</div>
	</section>
	<%@ include file="../footer.jsp" %>
</body>
</html>