<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BINZIP 회원가입</title>
	<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
	<style>
		h1{
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
		.join_table{
			margin: 0px auto;
			width: 600px;	
			height: 550px;
		}
		.join_click{
			margin-top: 40px;
			text-align: center;	
		}
		#txsize{
			width: 300px;
			height: 25px;
			font-size: 12px;
		}
		.tx01 {
			padding: 10px;
			text-align: left;
			font-size: 20px;
			font-weight: bold;
		}
		.tx02{
			padding: 5px;
			text-align: left;
			size: 30;	
		}
	</style>
	<script>
		function popupIdcheck() {
			window.open('idCheck.jsp','idcheck','width=450,height=250, left=800, top=300');
		}
		
		function popupPhonecheck() {
			window.open('phoneCheck.jsp','phonecheck','width=450,height=250, left=800, top=300');
		}
	</script>
</head>

<body>
	<%@include file="/header.jsp" %>
	<section>
		<form name="join" action="join_ok.jsp">
			<article>
			<h1>J O I N</h1>
			<h4>회 원 가 입</h4>
				<table class="join_table">
					<tr>
						<td class="tx01">
							아이디
						</td>
						<td class="tx02">
							<input type="text" name="id" id="txsize" minlength="4" maxlength="16" placeholder="중복확인을 눌러 진행해주세요" readonly>
						</td>
						<td>
							<input type="button" value="중복 확인" class="btjoin" onclick="popupIdcheck();">
						</td>
					</tr>
					<tr>
						<td class="tx01">
							비밀번호
						</td>
						<td class="tx02">
							<input type="password" name="pwd" id="txsize" minlength="4" maxlength="16" placeholder="4~16자리">
						</td>
					</tr>
					<tr>
						<td class="tx01">
							비밀번호 확인
						</td>
						<td class="tx02">
							<input type="password" name="pwd" id="txsize" maxlength="16" placeholder="비밀번호 확인">
						</td>
					</tr>
					<tr>
						<td class="tx01">
							질문
						</td>
						<td>
							<select name="question" style=width:310px;height:30px;margin-left:4px>
								<option value="태어난 곳은 어디입니까?">태어난 곳은 어디입니까?</option>
								<option value="제일 좋아하는 색은 무엇입니까?">제일 좋아하는 색은 무엇입니까?</option>
								<option value="기억에 남는 별명은 무엇입니까?">기억에 남는 별명은 무엇입니까?</option>
								<option value="가장 좋아하는 음식은 무엇입니까?">가장 좋아하는 음식은 무엇입니까?</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="tx01">
							질문 답변
						</td>
						<td class="tx02">
							<input type="text" name="answer" id="txsize" placeholder="답변을 입력해주세요">
						</td>
					</tr>
					<tr>
						<td class="tx01">
							이름
						</td>
						<td class="tx02">
							<input type="text" name="name" id="txsize" placeholder="이름을 입력해주세요">
						</td>
					</tr>
					<tr>
						<td class="tx01">
							생년월일
						</td>			
						<td>
							<input type="text" name="birthdate" id="txsize" placeholder="yyyymmdd">
						</td>
					</tr>
					<tr>
						<td class="tx01">
							전화번호
						</td>
						<td class="tx02">
							<input type="text" name="phone" id="txsize" minlength="10" maxlength="16"  placeholder="중복확인을 눌러 진행해주세요" readonly>
						</td>
						<td>
							<input type="button" value="중복 확인" class="btjoin" onclick="popupPhonecheck();">
						</td>
					</tr>
					<tr>
						<td class="tx01">
							이메일
						</td>
						<td class="tx02">
							<input type="email" name="email" id="txsize" placeholder="이메일 형식을 갖춰 기입해주세요">
						</td>
					</tr>
				</table>
			</article>
			<article>
				<div class="join_click">
					<input type="submit" value="회원 가입" class="btjoin2">
				</div>
			</article>
		</form>
	</section>
	<%@include file="/footer.jsp" %>
</body>
</html>