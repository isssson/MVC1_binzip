/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.70
 * Generated at: 2021-10-03 06:00:44 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("	<meta charset=\"UTF-8\">\r\n");
      out.write("	<title>Binzip</title>\r\n");
      out.write("<style>\r\n");
      out.write("body{\r\n");
      out.write("	width: 1000px;\r\n");
      out.write("	margin: 0px auto;\r\n");
      out.write("	\r\n");
      out.write("}\r\n");
      out.write("header{\r\n");
      out.write("	width: 1000px;\r\n");
      out.write("}\r\n");
      out.write(".binzipLogo img{\r\n");
      out.write("	width: 60px;\r\n");
      out.write("	height: 60px;\r\n");
      out.write("	display: inline;\r\n");
      out.write("	margin-right: 150px;\r\n");
      out.write("	float: left;\r\n");
      out.write("	text-align: left;\r\n");
      out.write("}\r\n");
      out.write("header nav li{\r\n");
      out.write("	display: inline;\r\n");
      out.write("	list-style-type: none;\r\n");
      out.write("}\r\n");
      out.write(".whereMenu{\r\n");
      out.write("	font-size: 20px;\r\n");
      out.write("	margin-right: 150px;\r\n");
      out.write("}\r\n");
      out.write(".otherMenu{\r\n");
      out.write("	margin-right:50px;\r\n");
      out.write("}\r\n");
      out.write(".myMenu{\r\n");
      out.write("	margin-left: 150px;\r\n");
      out.write("}\r\n");
      out.write("header nav a{\r\n");
      out.write("	text-decoration: none;\r\n");
      out.write("	color: darkgray;\r\n");
      out.write("}\r\n");
      out.write("header nav{\r\n");
      out.write("	margin-top: 40px;	\r\n");
      out.write("}\r\n");
      out.write("#whereLogo{\r\n");
      out.write("	width: 15px;\r\n");
      out.write("	height: 15px;\r\n");
      out.write("}\r\n");
      out.write("body h5{\r\n");
      out.write("	text-align: center;\r\n");
      out.write("}\r\n");
      out.write("#myPageIcon{\r\n");
      out.write("	text-align: right;\r\n");
      out.write("	width: 17px;\r\n");
      out.write("	height: 17px;\r\n");
      out.write("}\r\n");
      out.write(".mainImg{	\r\n");
      out.write("	float: center;\r\n");
      out.write("}\r\n");
      out.write(".mainImg img{\r\n");
      out.write("	display: block;\r\n");
      out.write("	margin: 0px auto;\r\n");
      out.write("	width: 1000px;\r\n");
      out.write("	height: 400px;\r\n");
      out.write("	margin-top: 50px;\r\n");
      out.write("}\r\n");
      out.write("#bannerImg{\r\n");
      out.write("	width: 1000px;\r\n");
      out.write("	height: 400px;\r\n");
      out.write("	display: block;\r\n");
      out.write("	margin: 0px auto;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("footer{\r\n");
      out.write("	width: 1000px;\r\n");
      out.write("	height: 300px;\r\n");
      out.write("	background-color: lightgray;\r\n");
      out.write("}\r\n");
      out.write(".footerImg img{\r\n");
      out.write("	width: 60px;\r\n");
      out.write("	height: 60px;\r\n");
      out.write("}\r\n");
      out.write(".footerPanel{\r\n");
      out.write("	font-size: 12px;\r\n");
      out.write("	margin-top: 20px;\r\n");
      out.write("	margin-left: 20px;\r\n");
      out.write("	padding-bottom: 20px;\r\n");
      out.write("}\r\n");
      out.write(".zipOffer table{\r\n");
      out.write("	width: 900px;\r\n");
      out.write("	height: 800px;\r\n");
      out.write("	margin: 0px auto;\r\n");
      out.write("	\r\n");
      out.write("}\r\n");
      out.write(".zipOffer img{\r\n");
      out.write("	width: 280px;\r\n");
      out.write("	height: auto;\r\n");
      out.write("	display: block;\r\n");
      out.write("	margin: 0px auto;\r\n");
      out.write("}\r\n");
      out.write(".zipOffer a{\r\n");
      out.write("	margin-left: 10px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("	<header>\r\n");
      out.write("		<div class=\"binzipLogo\">\r\n");
      out.write("			<a href=\"index.jsp\"><img src=\"/binzip/img/logo/mainLogo.png\" alt=\"빈집로고\"></a>\r\n");
      out.write("		</div>\r\n");
      out.write("		<nav>\r\n");
      out.write("			<ul>\r\n");
      out.write("				<li class=\"whereMenu\">\r\n");
      out.write("					<img src=\"/binzip/img/logo/locateIcon.jpg\" alt=\"위치로고\" id=\"whereLogo\">\r\n");
      out.write("					<a href=\"#\">WHERE ?</a>\r\n");
      out.write("				</li>\r\n");
      out.write("				<li class=\"otherMenu\">\r\n");
      out.write("					<a href=\"#\">FIND ZIP</a>\r\n");
      out.write("				</li>			\r\n");
      out.write("				<li class=\"otherMenu\">\r\n");
      out.write("					<a href=\"#\">BE A HOST</a>\r\n");
      out.write("				</li>			\r\n");
      out.write("				<li class=\"otherMenu\">\r\n");
      out.write("					<a href=\"#\">HELP</a>\r\n");
      out.write("				</li>\r\n");
      out.write("				<li class=\"myMenu\">\r\n");
      out.write("					<a href=\"#\"><img src=\"/binzip/img/logo/mypageIcon.png\" alt=\"마이페이지 아이콘\" id=\"myPageIcon\"></a>\r\n");
      out.write("				</li>			\r\n");
      out.write("			</ul>\r\n");
      out.write("		</nav>\r\n");
      out.write("	</header>\r\n");
      out.write("<body>\r\n");
      out.write("<section>\r\n");
      out.write("	<div class=\"mainImg\">\r\n");
      out.write("		<img src=\"/binzip/img/main-top-img.png\" alt=\"메인이미지\">\r\n");
      out.write("	</div>\r\n");
      out.write("	<div>\r\n");
      out.write("		<h5>나의 집, 우리의 집</h5>\r\n");
      out.write("		<img src=\"/binzip/img/main-mid(banner)-img.jpg\" alt=\"베너이미지\" id=\"bannerImg\">\r\n");
      out.write("	</div>\r\n");
      out.write("	<div>\r\n");
      out.write("		<h5>여기는 어때요? BINZIP 에서 제안하는 특별한 집</h5>\r\n");
      out.write("	</div>\r\n");
      out.write("	<div class=\"zipOffer\">\r\n");
      out.write("		<table>\r\n");
      out.write("			<caption>추천게시물</caption>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td>\r\n");
      out.write("					<img src=\"/binzip/img/testimg.jfif\" alt=\"추천집이미지\"><br>\r\n");
      out.write("					<a href=\"#\">한줄 소개글</a><br>\r\n");
      out.write("					<a href=\"#\">주소 / 집이름</a>\r\n");
      out.write("				</td>\r\n");
      out.write("				<td>\r\n");
      out.write("					<img src=\"/binzip/img/testimg.jfif\" alt=\"추천집이미지\"><br>\r\n");
      out.write("					<a href=\"#\">한줄 소개글</a><br>\r\n");
      out.write("					<a href=\"#\">주소 / 집이름</a>\r\n");
      out.write("				</td>\r\n");
      out.write("				<td>\r\n");
      out.write("					<img src=\"/binzip/img/testimg.jfif\" alt=\"추천집이미지\"><br>\r\n");
      out.write("					<a href=\"#\">한줄 소개글</a><br>\r\n");
      out.write("					<a href=\"#\">주소 / 집이름</a>	\r\n");
      out.write("				</td>									\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td>\r\n");
      out.write("					<img src=\"/binzip/img/testimg.jfif\" alt=\"추천집이미지\"><br>\r\n");
      out.write("					<a href=\"#\">한줄 소개글</a><br>\r\n");
      out.write("					<a href=\"#\">주소 / 집이름</a>\r\n");
      out.write("				</td>\r\n");
      out.write("				<td>\r\n");
      out.write("					<img src=\"/binzip/img/testimg.jfif\" alt=\"추천집이미지\"><br>\r\n");
      out.write("					<a href=\"#\">한줄 소개글</a><br>\r\n");
      out.write("					<a href=\"#\">주소 / 집이름</a>\r\n");
      out.write("				</td>\r\n");
      out.write("				<td>\r\n");
      out.write("					<img src=\"/binzip/img/testimg.jfif\" alt=\"추천집이미지\"><br>\r\n");
      out.write("					<a href=\"#\">한줄 소개글</a><br>\r\n");
      out.write("					<a href=\"#\">주소 / 집이름</a>\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("		</table>\r\n");
      out.write("	</div>\r\n");
      out.write("</section>\r\n");
      out.write("</body>\r\n");
      out.write("<footer>\r\n");
      out.write("	<div class=\"footerImg\">\r\n");
      out.write("		<img src=\"/binzip/img/logo/mainLogo.png\" alt=\"하단로고\">\r\n");
      out.write("	</div>\r\n");
      out.write("	<p class=\"footerPanel\">\r\n");
      out.write("		상호 : (주) BINZIP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대표자 : Tim of Two<br><br>\r\n");
      out.write("		서울특별시 마포구 망원동 123-12&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TEL : 1588 - 1234 / +82 70 - 1234- 4567&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binzip@binzip.com<br><br>		\r\n");
      out.write("		사업자등록번호 : 123-12-12345&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;통신판매업신고 : 제2021-서울마포-0123[사업자정보확인]<br><br>\r\n");
      out.write("		관광사업자등록 : 일반여행업 2021-000012(마포구청)<br><br><br><br>\r\n");
      out.write("		&copy; BINZIP<br>\r\n");
      out.write("	</p>\r\n");
      out.write("</footer>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
