/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.50
 * Generated at: 2019-01-09 16:01:37 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Connection;
import com.fzzdh.diary.DatabaseUtil;
import java.sql.Statement;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import java.text.*;

public final class EditDiary_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/SessionCheck.jsp", Long.valueOf(1546328805375L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("java.text");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("com.fzzdh.diary.DatabaseUtil");
    _jspx_imports_classes.add("java.sql.Statement");
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
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
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
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"");
      out.print(request.getContextPath());
      out.write("/bootstrap-3.3.7/css/bootstrap.css\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"");
      out.print(request.getContextPath());
      out.write("/bootstrap-3.3.7/css/bootstrap.min.css\">\r\n");
      out.write("<script src=\"./bootstrap-3.3.7/js/jquery-2.1.0.js\">\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
      out.write("<script src=\"./bootstrap-3.3.7/js/bootstrap.js\">\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
      out.write("<script src=\"./ueditor/ueditor.config.js\">\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
      out.write("<script src=\"./ueditor/ueditor.all.js\">\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
      out.write("<script src=\"./ueditor/ueditor.all.min.js\">\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");

	SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd  HH:mm");
	SimpleDateFormat fmt2 = new SimpleDateFormat("yyyy年-MM月-dd号日记");
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("utf-8");

      out.write('\r');
      out.write('\n');

 	String path=request.getContextPath();
	String basePath= request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
   
      out.write("\r\n");
      out.write("\r\n");
 
	
	String userlogined = (String)session.getAttribute("userlogined");
	if(userlogined==null ||!userlogined.trim().equals("true")){
		response.sendRedirect( basePath+"/logInOut/Login.jsp");
		return ;
	}

      out.write("\r\n");
      out.write("<title>修改日记</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("body {\r\n");
      out.write("\toverflow: scroll;\r\n");
      out.write("\toverflow-x: hidden;\r\n");
      out.write("}\r\n");
      out.write("input{\r\n");
      out.write("    \r\n");
      out.write("    font-size: 20px;\r\n");
      out.write("    padding-left:15px;\r\n");
      out.write("}\r\n");
      out.write("input.text{line-height: 35px;vertical-align: middle;}\r\n");
      out.write("button{\r\n");
      out.write("\twidth:120px;\r\n");
      out.write("\theight:45px;\r\n");
      out.write("\tline-height: 35px;\r\n");
      out.write("\tfont-size: 20px; \r\n");
      out.write("\tcolor: white;\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("\tbackground-color:orange;\r\n");
      out.write("\tborder: none;\r\n");
      out.write("}\r\n");
      out.write("input:-ms-input-placeholder{\r\n");
      out.write("    color: GRAY;opacity:1;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body\r\n");
      out.write("\tstyle=\" background-color: BlanchedAlmond\">\r\n");
 
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("utf-8");
	Connection conn = DatabaseUtil.getConnection();
	Statement stmt = DatabaseUtil.getStatement(conn);
	int userid = Integer.parseInt(session.getAttribute("userid").toString());
	int diaryid = Integer.parseInt(request.getParameter("diaryid"));
	String sql = "select * from diaryDetail where userid="+userid+" and diaryid = "+diaryid;
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
	String title = rs.getString("diarytitle");
	String content = rs.getString("diarycontent");
	
	DatabaseUtil.close(rs);
	DatabaseUtil.close(stmt);
	DatabaseUtil.close(conn);

      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div style=\"margin-left: 35px; margin-top: 25px\">\r\n");
      out.write("\t\t<div id=\"type\">\r\n");
      out.write("\t\t\t<font style=\"font-family: sans-serif; font-size: 35px\">编辑日记</font> <font\r\n");
      out.write("\t\t\t\tstyle=\"font-family: sans-serif; font-size: 15px; color: gray; margin-left: 8px\">");
      out.print(fmt.format(new Date()));
      out.write("</font>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- 编辑器 -->\r\n");
      out.write("\t\t<form name=\"form\"action=\"SaveSuccess.jsp\" method=\"post\">\r\n");
      out.write("\t\t<div style=\"margin-top: 25px; margin-right: 45px\">\r\n");
      out.write("\t\t\t<div id=\"content\" name=\"content\" style=\"width: 100%; height: 400px\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!-- 编辑器 -->\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"panel-group\" id=\"diaryTheme\" role=\"tablist\" style=\"margin-top: 60px\">\r\n");
      out.write("\t\t\t\t<div class=\"panel panel-default\">\r\n");
      out.write("\t\t\t\t\t<div class=\"panel-heading\" role=\"button\" id=\"headingOne\">\r\n");
      out.write("\t\t\t\t\t\t<font style=\"font-size: 25px;color: orange\">\r\n");
      out.write("\t\t\t\t\t\t\t<span><strong>|</strong>\r\n");
      out.write("\t\t\t\t\t\t\t<a style=\"text-decoration: none;color: orange\" role=\"button\"\r\n");
      out.write("\t\t\t\t\t\t\t\tdata-toggle=\"collapse\" data-parent=\"#headingOne\"\r\n");
      out.write("\t\t\t\t\t\t\t\thref=\"#diarySelects\" aria-expanded=\"true\"\r\n");
      out.write("\t\t\t\t\t\t\t\taria-controls=\"diarySelects\" >日记选项 (可选)</a>\r\n");
      out.write("\t\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t\t</font>\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<div id=\"diarySelects\" class=\"panel-collapse collapse in\"\r\n");
      out.write("\t\t\t\t\t\t\trole=\"tabpanel\" aria-labelledby=\"headingOne\" style=\"margin-top: 30px;margin-bottom: 40px;margin-left: 35px;margin-right:25px \">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"panel-theme\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t <font style=\"font-size: 20px\">日记标题:</font> <br>\r\n");
      out.write("\t\t\t\t\t\t\t\t <div style=\"margin-top: 15px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t <input id=\"title\"name=\"title\" class=\"text\" style=\"width: 500px; height: 40px\"value=\"");
      out.print( title);
      out.write("\"></input>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<div style=\"margin-top: 10px;\">\r\n");
      out.write("\t\t\t<input type=\"hidden\" name=\"diaryid\" value=\"");
      out.print( diaryid);
      out.write("\">\r\n");
      out.write("\t\t\t\t<button class=\"button\" >保存修改</button>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t<div style=\"height:100px \"></div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t//实例化编辑器\r\n");
      out.write("\t\tvar editor = UE.getEditor('content');\r\n");
      out.write("\t\t$(document).ready(function(){\r\n");
      out.write("\t\t\tvar ue = UE.getEditor('content');\r\n");
      out.write("\t\t\tue.ready(function() {\r\n");
      out.write("\t\t\t\tue.setContent('");
      out.print(content);
      out.write("');  //赋值给UEditor\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
