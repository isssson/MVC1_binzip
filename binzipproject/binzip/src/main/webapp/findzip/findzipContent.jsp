<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.NumberFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.*"%>
<%@ page import="binzip.zipoption.*" %>
<%@ page import="binzip.findzip.*" %>
<%@ page import="binzip.wf.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="findzipdao" class="binzip.findzip.FindzipDAO" scope="session"></jsp:useBean>
<jsp:useBean id="zipopdao" class="binzip.zipoption.Binzip_ZipOptionDAO" scope="session"></jsp:useBean>

<%
String idx_s=request.getParameter("idx");
if(idx_s==null||idx_s.equals("")){
	idx_s="0";
}
int idx=Integer.parseInt(idx_s);
FindzipDTO dto=findzipdao.findzipContent(idx);

String result = findzipdao.setHostId(idx);
	if(result == null || result.equals("")){
	%>
	<script>
	window.alert('잘못된 접근 또는 삭제된 게시물입니다.<%=result%>');
	location.href='/binzip/findzip/findZip.jsp';
	</script>
	<%
	}
if(dto==null){
	%>
	<script>
	window.alert('삭제된 게시글 또는 잘못된 접근입니다.');
	location.href='bbsList.jsp';
	</script>
	<%
	return;
}

NumberFormat nf = NumberFormat.getNumberInstance();
int cost = dto.getCost();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOKING</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<link rel="stylesheet" type="text/css" href="/binzip/css/btn.css">
<style>
.totalinfo{
	width: 100%;
}
.findzip-section { 
	background: #000;
}
.booking-white {
	color: white;
}
.wrap_center{
	width: 100%;
	height: 600px;
	align: right;
	clear: both;
}
.container{
    margin: 0 auto;
    width: 100%;
    height: 600px;
    overflow: hidden;
}
.img_wrap{
    width: 1200px;
    height: 600px;
    position: absolute;
    overflow: hidden;
}
.rollimgs {
    list-style: none;
    padding: 0;
    margin: 0;
}
.rollimgs li{
	position: absolute;
    width: 1200px;
    height: 100%;
    left: 1200px;
}
.rollimgs li img{
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.rollimgs li.currentroll{
    left: 0;
    transition: left .5s ease-in-out, right .5s ease-in-out;
}
.rollimgs li.prevroll{
    left: -1200px;
    transition: left .5s ease-in-out, right .5s ease-in-out;
}
.rollimgs.reverse li.prevroll{
    transition: none;
}
.rollimgs li.nextroll{
    left: 1200px;
    display: block;
    transition: none;
}
.rollimgs.reverse li.nextroll{
    transition: left .5s ease-in-out, right .5s ease-in-out;
}
#backButton {
	margin-bottom: 15px;	
}
#backButton a {
    text-decoration: none;
    font-weight: bold;
    color: black
}
.zipinfo {
    width: 100%;
    margin-top: 40px;
    text-align: center;
}
#topArticle{
	border-top: 1px solid gray;
}
#topArticle .zipname {
    font-size: 35px;
    font-weight: bold;
    text-align: center;
    display: inline;
}
#topArticle .zipname_info {
    font-weight: bold;
    text-align: center;
    display: inline;
}
.optype{
	width: 20%;
	margin-top: 50px;
	float: left;
	display: block;
}
.opname{
	width: 80%;
	margin-top: 50px;
	display: block;
	float: right;	
    text-align: left;
}
.op-box {
	display: block;
    width: 100%;
    height: 360px;
    text-align: center;
}
.zipopinfo{
	margin-top: 40px;	
	font-size: 12px;
}
p.content-box {
	text-align: left;
}
.info-box {
	text-align: left;
    margin-left: 40px;
    margin-bottom: 60px;	
}
.zip-title {
margin-top: 60px;
    margin-bottom: 40px;
    font-size: 18px;
    color: gray; 	
    font-weight: 100;
}
p{
	font-size: 12px;
}
#title{
    width: 100%;
    height: 50px;
	margin-top: 30px;
}
#title label{
	margin-left:40px;
	margin-right: 280px;	 
	color: white;
}
.subject-box {
	float: left;
}
.date-box {
	float: right;
    display: flex;
}
.date-box div {
	line-height: 3.5;
}
.date-box .btnreserve2 {
    background-color: #000000;
    border: 1px solid #ffff;
    border-radius: 35px;
    cursor: pointer;
    color: #ffffff;
    font-family: Arial;
    font-size: 17px;
    padding: 15px 30px;
    margin: 0 40px 20px !important;
    text-decoration: none;
}

.btnreserve2:hover {
	background-color:#ffffff;
	color:#000000;
	border-radius: 35px;
	font-weight: bold;
}

#reservebt{
	margin-left: 0px;
}
h2{
	text-align: center;
	font-size: 35px;
}
footer{
	clear: both;
}
</style>
<script>
let banner = {
	    rollId: null,
	    interval: 1000,

	    
	    rollInit: function (newinterval) {
	        if(parseInt(newinterval) > 0){
	            this.interval = newinterval;
	        }
	        
	        let firstitem = document.querySelector('.rollimgs li');
	        if(firstitem){
	            firstitem.classList.add('currentroll');
	        }
	        
	        let seconditem = document.querySelectorAll('.rollimgs li')[1];
	        if(seconditem){
	            seconditem.classList.add('nextroll');
	        }
	        
	        document.querySelector('.rollimgs li:last-child').classList.add('prevroll');
	        this.rollId = setInterval(this.rollNext, this.interval);//롤링 인터벌 호출
	    },
	    
	    
	    rollNext: function () {
	        if(document.querySelector('.prevroll')){
	            document.querySelector('.prevroll').classList.remove('prevroll');
	        }
	        if(document.querySelector('.currentroll')){
	            document.querySelector('.currentroll').classList.add('prevroll');
	            document.querySelector('.currentroll').classList.remove('currentroll');
	        }
	        if(document.querySelector('.nextroll')){
	            document.querySelector('.nextroll').classList.add('currentroll');
	            document.querySelector('.nextroll').classList.remove('nextroll');
	        }
	    
	        if(document.querySelector('.currentroll').nextElementSibling){
	            document.querySelector('.currentroll').nextElementSibling.classList.add('nextroll');
	        }else{
	            document.querySelector('.rollimgs li').classList.add('nextroll');
	        }
	    }
	}
	document.addEventListener('DOMContentLoaded', function(){
	    banner.rollInit(4000); // 배너 롤링
	});
	
	function dateCheck(chdate){
		
		let d_val_ary = new Array();
		for(let i = 0; i < chdate.date.options.length; i++){
			if(chdate.date.options[i].selected){
				d_val_ary[d_val_ary.length] = chdate.date.options[i].value;
			}
		}
		chdate.date.value = d_val_ary.join(',');
	}
	
</script>
</head>
<body>
<%@include file="/header.jsp" %>
<div>
	<div>
		<h2>B&nbsp;O&nbsp;O&nbsp;K&nbsp;I&nbsp;N&nbsp;G</h2>
	</div>
	<div id="backButton">
		<a href="/binzip/findzip/findZip.jsp">&#x02190;돌아가기</a>
	</div>
</div>
<section class="findzip-section">	
	<article id="topArticle">
	<%
	
	String s1 = dto.getHost_bbs_startdate().toString();
	String s2 = dto.getHost_bbs_enddate().toString();
	
	DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	
	Date sdate = df.parse(s1);
	Date edate = df.parse(s2);
	
	Calendar c1 = Calendar.getInstance();
	Calendar c2 = Calendar.getInstance();
	
	c1.setTime(sdate);
	c2.setTime(edate);
	
	Calendar today = Calendar.getInstance();
	
	String nowdate = df.format(today.getTime());

	%>		<form name="reserve" action="reserve.jsp">		
			<div id="title">
			<input type="hidden" name="d_val">
			<input type="hidden" name="cost" value="<%= cost %>"/>
			<input type="hidden" name="idx" value="<%= idx_s %>"/>

				
				<div class="subject-box">
					<label class="zipname booking-white"><%=dto.getZipname()%></label>
				</div>
				<div class="date-box">
					<div>
						<input type="date" name="sdate" min="<%=nowdate%>" max="<%=s2%>" required>
						<input type="date" name="edate" min="<%=nowdate%>" max="<%=s2%>" required>					
					</div>
					<div>
						<input type="submit" value="예약하기" class="btnreserve2" id="reservebt">	
					</div>
					
				</div>				
			
				
			</div>
			</form>
		<div class="totalinfo booking-white">
			<div class="zipinfo">
			
				<div class="info-box">
					<span>ROOM INFORMATION </span>
					<p class="content-box">
					체크인 17:00 &#47; 체크아웃 12:00<br>
					기준 인원 <%= dto.getPeoplenum() %>명 (최대 인원 <%= dto.getPeoplenum() %>)<br>
					인원 기준 없이, 비&#46;성수기 구분없이 1일 <%= nf.format(cost) %>원
					</p>
				</div>
				<p class="zip-title">
					<%=dto.getContents()%>
				</p>
			</div>
			<%
			String imgpath_s = dto.getImgpath();
			String imgpath[] = {};
			if(imgpath_s != null){
				imgpath= imgpath_s.split(",");
			}
			%>		
			<div class="wrap_center">
				<div class="container">
					<div class="img_wrap">
						<ul class="rollimgs">
							<%
							for(int i = 0; i < imgpath.length; i++){
								%>
								<li><img src = "/img/<%=result%>/<%=idx%>/<%=imgpath[i]%>" alt="zip이미지"></li>
								<%							
							}							
							%>
						</ul>
					</div>
				</div>
			</div>
		</div>
		</article>
		<article class="op-box booking-white">
			<div class="zipopinfo">
				<span class="optype">
					<label>기&nbsp;본&nbsp;옵&nbsp;션</label>
				</span>
				<span class="opname">
					<label>화장실&nbsp;&nbsp;&nbsp;&nbsp;침구류&nbsp;&nbsp;&nbsp;&nbsp;화재경보기&nbsp;&nbsp;&nbsp;&nbsp;소화기&nbsp;&nbsp;&nbsp;&nbsp;구급상자</label>
				</span>
			</div>
			<div class="zipopinfo">
				<span class="optype">
					<label>집&nbsp;옵&nbsp;션</label>			
				</span>
				<span class="opname">
					<%
					int ct1 = 1;
					int ct2 = 2;
					int ct3 = 3;
					ArrayList<Binzip_ZipOptionDTO> ziparr = new ArrayList<Binzip_ZipOptionDTO>();
					
						ziparr = zipopdao.getZipOption(idx, ct1);
						if(ziparr == null || ziparr.size() == 0){
							%>
								등록된 정보가 없습니다.
							<%				
						}else{
							for(int i = 0; i < ziparr.size(); i++){						
							%>
								<label><%=ziparr.get(i).getOp()%></label>&nbsp;&nbsp;&nbsp;
							<%
							}
						}							
					%>
				</span>
			</div>
			<div class="zipopinfo">
				<span class="optype">
					<label>주&nbsp;방&nbsp;옵&nbsp;션</label>			
				</span>
				<span class="opname">
					<%
						ziparr = zipopdao.getZipOption(idx, ct2);
						
						if(ziparr == null || ziparr.size() == 0){
							%>
								등록된 주방 옵션이 없습니다.
							<%
						}else{
							for(int i = 0; i < ziparr.size(); i++){
								%>
									<label><%=ziparr.get(i).getOp()%></label>&nbsp;&nbsp;&nbsp;
								<%
							}
						}		
					%>				
				</span>
			</div>
			<div class="zipopinfo">
			<span class="optype">
				<label>욕&nbsp;실&nbsp;옵&nbsp;션</label>			
			</span>
			<span class="opname">
				<%
					ziparr = zipopdao.getZipOption(idx, ct3);
					
					if(ziparr == null || ziparr.size() == 0){
						%>
							등록된 욕실 옵션이 없습니다.
						<%
					}else{
						for(int i = 0; i < ziparr.size(); i++){
							%>
								<label><%=ziparr.get(i).getOp()%></label>&nbsp;&nbsp;&nbsp;
							<%
						}
					}		
				%>				
			</span>
		</div>
		</article>
</section>

<%@include file="/footer.jsp" %>
</body>
</html>