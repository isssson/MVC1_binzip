<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout3.css">
<style>
h2{
	text-align: center;
	clear: both;
}
h6{
	text-align: center;
}
</style>
</head>
<body>
<%@include file="/header3.jsp" %>
<section>
	<article>
		<h2>FIND   ZIP</h2>
		<h6>머무는 것 자체로 여행이 되는 공간</h6>
	</article>
	<article>
		<hr>
		<form name="findZip_main" action="#">
			<table>
				<caption>집 검색</caption>
				<tr>
					<th>여행지/숙소</th>
					<td><input type="text" name="zipname"></td>
					<td><input type="text" name="siname"></td>
					<th>체크인</th>
					<td>
						<select name="startdate">
							<option value="checkin">체크인</option>
						</select>										
					</td>
					<th>체크아웃</th>
					<td>
						<select name="startdate">
							<option value="checkout">체크아웃</option>
						</select>
					</td>
					<td><img src="#" alt="초기화"></td>
				</tr>
				<tr>
					<td colspan="8" align="center">
						<input type="submit" value="SEARCH">
					</td>
				</tr>
				<tr>
					<td>
						<select name="peoplenum">
							<option value="인원">1인</option>
							<option value="인원">2인</option>
							<option value="인원">3인</option>
							<option value="인원">4인</option>
							<option value="인원">5인</option>
							<option value="인원">6인</option>
							<option value="인원">7인</option>
							<option value="인원">8인</option>
						</select>	
					</td>
					<td>
						<select name="costscope">
							<option value="cost">0~80,000원</option>
							<option value="cost">80,000~120,000원</option>
							<option value="cost">120,000~160,000원</option>
							<option value="cost">160,000~200,000원</option>
						</select>	
					</td>
					<td>
						<select name="ziptype">
							<option value="type">아파트</option>
							<option value="type">빌라</option>
							<option value="type">주택</option>
							<option value="type">별장</option>
						</select>	
					</td>
					<td colspan="5" align="right"></td>
				</tr>
			</table>
		</form>
	</article>
	<article>
		<ul>
			<li>최신순</li>
			<li>인기순</li>
			<li>높은가격순</li>
			<li>낮은가격순</li>
		</ul>
		<hr>
	</article>
	<article>
		<table>
			<caption>ZIP LIST</caption>
			<tbody>
			<tr>
				<td>
					<table onclick="">
						<tr>
							<td>모노가든</td>
						</tr>
						<tr>
							<td>디자인펜션</td>
						</tr>
						<tr>
							<td>제주/제주시</td>
						</tr>
						<tr>
							<td>기준3명&#40;최대4명&#41;</td>
						</tr>
						<tr>
							<td>&#92;200,000~&#92;440,000</td>
						</tr>
						<tr>
							<td>예약하기</td>
						</tr>
					</table>
				</td>
				<td>
					<img src="#" alt="게시글이미지">
				</td>
				<td>
					<table>
						<tr>
							<td>베로마</td>
						</tr>
						<tr>
							<td>렌탈하우스</td>
						</tr>
						<tr>
							<td>부산/해운대구</td>
						</tr>
						<tr>
							<td>기준4명&#40;최대6명&#41;</td>
						</tr>
						<tr>
							<td>&#92;200,000~&#92;440,000</td>
						</tr>
						<tr>
							<td>예약하기</td>
						</tr>
					</table>
				</td>
				<td>
					<img src="#" alt="게시글이미지">
				</td>
			</tr>
			</tbody>
			<tfoot>
			<tr>
				<td colspan="4" align="center">1 2 3 4 5</td>
			</tr>
			</tfoot>
		</table>
	</article>
</section>
<%@include file="/footer3.jsp" %>
</body>
</html>