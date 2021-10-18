<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="binzip.findzip.*" %>
<jsp:useBean id="findzipdao" class="binzip.findzip.FindzipDAO"></jsp:useBean>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BINZIP</title>
	<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
	<style>
		.rolling{
			width: 1200px;
			height: 400px;
		}
		.rollingfield{
			margin: 0px auto;
			width: 1200px;
			height: 400px;
			overflow: hidden;
		}
		.imgfield{
			width: 1200px;
			height: 400px;
			position: absolute;
			overflow: hidden;			
		}
		.rollimgs{
			list-style: none;
			padding: 0px;
			margin: 0px;
		}
		.rollimgs li{
			position: absolute;
			width: 1200px;
			height: 400px;
			left: 1200px;
		}
		.rollimgs li img{
			width: 100%;
			height: 100%;
			object-fit: fill;
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
		.rink a:link{
			text-decoration: none;
			color: black;
		}
		.rink a:visited{
			text-decoration: none;
			color: black;
		}
		.rink a:hover {
			cursor: pointer;
			color: lightgray;
		}
		.zipOffer img {
	    width: 280px;
	    height: 280px;
	   	overflow-x: hidden;
	   	overflow-y: visible;
	    display: block;
	    margin: 0px auto;
		}
		table a img{
			object-fit: cover;
		}
	</style>
	
</head>	
<body>
	<%@include file="/header.jsp" %>
	<section>
		<div class="mainImg">
			<img src="/binzip/main_imgs/main_img.png" alt="메인이미지">
		</div>
		<div class="midText">
			<h5>나의 집, 우리의 집</h5>
			<div class="rolling">
				<div class="rollingfield">
					<div class="imgfield">
						<ul class="rollimgs">
							<li><img src="/binzip/main_imgs/main_slide_img1.jpg" alt="베너이미지" ></li>
							<li><img src="/binzip/main_imgs/main_slide_img2.jpg" alt="베너이미지" ></li>
							<li><img src="/binzip/main_imgs/main_slide_img3.jpg" alt="베너이미지" ></li>
							<li><img src="/binzip/main_imgs/main_slide_img4.jpg" alt="베너이미지" ></li>
							<li><img src="/binzip/main_imgs/main_slide_img5.jpg" alt="베너이미지" ></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="midText_proposeZip">
			<h5>여기는 어때요? BINZIP 에서 제안하는 특별한 집</h5>
		</div>
		<div class="zipOffer">
			
			<%
				ArrayList <FindzipDTO> arr = findzipdao.showMainRandomZip();
				if(arr == null || arr.size() == 0) {
					%>
					<h1>등록된 BINZIP이 없습니다.</h1>
					<%
				
				} else {
					
					%><table class="rink"><%
					for(int i = 0; i < arr.size(); i++) {
						String zipaddr_s = arr.get(i).getZipaddr();
						String[] zipaddr_sido = zipaddr_s.split(" ");
						
						String imgpath = arr.get(i).getImgpath();
						String[] imgpath_main = imgpath.split(",");
						
						if(i == 0) {
						%><tr><%						
							%>
							<td>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>">
									<img src="/img/<%= arr.get(i).getBinzip_member_id() %>/<%= arr.get(i).getIdx() %>/<%= imgpath_main[0] %>" alt="추천집이미지"><br>
								</a>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>"><%= arr.get(i).getContents() %></a><br>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>"><b><%=arr.get(i).getZipname() %></b> / <%= zipaddr_sido[0] %></a>
							</td>							
						<%
						}
						if(i == 1){
							%>
							<td>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>">
									<img src="/img/<%= arr.get(i).getBinzip_member_id() %>/<%= arr.get(i).getIdx() %>/<%= imgpath_main[0] %>" alt="추천집이미지"><br>
								</a>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>"><%= arr.get(i).getContents() %></a><br>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>"><b><%=arr.get(i).getZipname() %></b> / <%= zipaddr_sido[0] %></a>
							</td>							
						<%
						}
						if(i == 2){
							%>
							<td>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>">
									<img src="/img/<%= arr.get(i).getBinzip_member_id() %>/<%= arr.get(i).getIdx() %>/<%= imgpath_main[0] %>" alt="추천집이미지"><br>
								</a>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>"><%= arr.get(i).getContents() %></a><br>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>"><b><%=arr.get(i).getZipname() %></b> / <%= zipaddr_sido[0] %></a>
							</td>
							</tr>						
						<%
						}
						if(i == 3){
							%>
							<tr>
							<td>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>">
									<img src="/img/<%= arr.get(i).getBinzip_member_id() %>/<%= arr.get(i).getIdx() %>/<%= imgpath_main[0] %>" alt="추천집이미지"><br>
								</a>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>"><%= arr.get(i).getContents() %></a><br>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>"><b><%=arr.get(i).getZipname() %></b> / <%= zipaddr_sido[0] %></a>
							</td>							
						<%
						}
						if(i == 4){
							%>
							<td>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>">
									<img src="/img/<%= arr.get(i).getBinzip_member_id() %>/<%= arr.get(i).getIdx() %>/<%= imgpath_main[0] %>" alt="추천집이미지"><br>
								</a>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>"><%= arr.get(i).getContents() %></a><br>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>"><b><%=arr.get(i).getZipname() %></b> / <%= zipaddr_sido[0] %></a>
							</td>							
						<%
						}
						if(i == 5){
							%>
							<td>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>">
									<img src="/img/<%= arr.get(i).getBinzip_member_id() %>/<%= arr.get(i).getIdx() %>/<%= imgpath_main[0] %>" alt="추천집이미지"><br>
								</a>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>"><%= arr.get(i).getContents() %></a><br>
								<a href="/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>"><b><%=arr.get(i).getZipname() %></b> / <%= zipaddr_sido[0] %></a>
							</td>
							</tr>						
						<%
						}	
					}					
				}
			%>
			</table>
		</div>
	</section>
	<%@include file="footer.jsp" %>
</body>
<script>
	let banner = {
		    rollId: null,
		    interval: 2000,
		   
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
		        this.rollId = setInterval(this.rollNext, this.interval);
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
		    banner.rollInit(2000); 
		});
</script>
</html>