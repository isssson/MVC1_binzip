<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_g</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout3.css">
<style>
h1{
	font-size: 40px;
	text-align: center;
	margin-top: 80px;
	clear: both;
}
h4{
	font-size: 15px;
	text-align: center;
	margin-bottom: 50px;
}
.join_table{
	margin: 0px auto;
	width: 600px;	
	height: 550px;
}
.info_click{
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
</head>
<body>
<%@include file="/header3.jsp" %>
<section>
	<article>
			<h1>MY PAGE</h1>
			<h4>내 정보 보기</h4>
	</article>
		<article>
		<form>		
		<table class="join_table">
			<tr>
				<td class="tx01">아이디</td>
				<td class="tx02"><input type="text" name="userid" id="txsize" maxlength="16"></td>				
			</tr>
			<tr>
				<td class="tx01">비밀번호</td>
				<td class="tx02"><input type="password" name="userpwd" id="txsize" maxlength="16"></td>
			</tr>
			<tr>
				<td class="tx01">질문</td>
				<td><select name="question" style=width:310px;height:30px;margin-left:4px>
					<option value="고향">태어난 곳은 어디입니까?</option>
					<option value="색깔">제일 좋아하는 색은 무엇입니까?</option>
					<option value="별명">기억에 남는 별명은 무엇입니까?</option>
					<option value="음식">가장 좋아하는 음식은 무엇입니까?</option>
					</select></td>
			</tr>
			<tr>
				<td class="tx01">질문 답변</td>
				<td class="tx02"><input type="text" name="answer" id="txsize"></td>
			</tr>
			<tr>
				<td class="tx01">이름</td>
				<td class="tx02"><input type="text" name="name" id="txsize"></td>
			</tr>
			<tr>
				<td class="tx01">생년월일</td>			
				<td><select name="year" style=width:100px;height:30px;margin-left:4px>
					<option value="2002">2002</option>
					<option value="2001">2001</option>
					<option value="2000">2000</option>
					<option value="1999">1999</option>
					<option value="1998">1998</option>
					<option value="1997">1997</option>
					<option value="1996">1996</option>
					<option value="1995">1995</option>
					<option value="1994">1994</option>
					<option value="1993">1993</option>
					<option value="1992">1992</option>
					<option value="1991">1991</option>
					<option value="1990">1990</option>
					<option value="1989">1989</option>
					<option value="1988">1988</option>
					<option value="1997">1997</option>
					<option value="1996">1996</option>
					<option value="1995">1995</option>
					<option value="1994">1994</option>
					<option value="1993">1993</option>
					<option value="1992">1992</option>
					<option value="1991">1991</option>
					<option value="1990">1990</option>
					<option value="1989">1989</option>
					<option value="1988">1988</option>
					<option value="1987">1987</option>
					<option value="1986">1986</option>
					<option value="1985">1985</option>
					<option value="1984">1984</option>
					<option value="1983">1983</option>
					<option value="1982">1982</option>
					<option value="1981">1981</option>
					<option value="1980">1980</option>					
					<option value="1979">1979</option>
					<option value="1978">1978</option>
					<option value="1977">1977</option>
					<option value="1976">1976</option>
					<option value="1975">1975</option>
					<option value="1974">1974</option>
				</select>년
				<select name="day" style=width:75px;height:30px;margin-left:4px>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>월
				<select name="month" style=width:75px;height:30px;margin-left:4px>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>					
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
				</select>일</td>
			</tr>
			<tr>
				<td class="tx01">핸드폰</td>
				<td class="tx02"><input type="text" name="tel" id="txsize"></td>				
			</tr>
			<tr>
				<td class="tx01">이메일</td>
				<td class="tx02"><input type="text" name="email" style=height:25px> @
				<select name="email" style=width:105px;height:30px>
					<option value="naver">naver.com</option>
					<option value="daum">daum.net</option>
					<option value="google">google.com</option>
					<option value="nate">nate.com</option>
				</select></td>
			</tr>
			<tr>
				<td class="tx01">주소</td>
				<td class="tx02"><input type="text" name="addr" id="txsize"></td>				
			</tr>
			<tr>
				<td class="tx01">은행명</td>
				<td class="tx02"><input type="text" name="bank" id="txsize"></td>				
			</tr>
			<tr>
				<td class="tx01">계좌번호</td>
				<td class="tx02"><input type="text" name="accno" id="txsize"></td>				
			</tr>
		</table>
		</form>
	</article>
	<article>
	<div class="info_click">
		<input type="button" value="정보 수정하기" class="btjoin">
		<input type="button" value="회원 탈퇴하기" class="btjoin">
	</div>
	</article>
</section>
<%@include file="/footer3.jsp" %>
</body>
</html>