/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.50
 * Generated at: 2019-01-08 16:23:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menuBar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/bootstrap-3.3.7/css/bootstrap.css\" >\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/bootstrap-3.3.7/css/bootstrap.min.css\" >\r\n");
      out.write("<script src=\"./bootstrap-3.3.7/js/jquery-2.1.0.js\"> </script>\r\n");
      out.write("<script src=\"./bootstrap-3.3.7/js/bootstrap.js\"> </script>\r\n");

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
      out.write("<title>菜单</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body style=\"background-color:gray;background-image: url('./img/background.png');overflow:hidden\">\r\n");
      out.write("<div class=\"panel-group\" id=\"accordion\" role=\"tablist\"  style=\"margin-top:60px \">\r\n");
      out.write("  <div class=\"panel panel-default\">\r\n");
      out.write("    <div class=\"panel-heading\" role=\"tab\" id=\"headingOne\">\r\n");
      out.write("      <h4 class=\"panel-title\">\r\n");
      out.write("        <a style=\"text-decoration:none \" role=\"button\" data-toggle=\"collapse\" data-parent=\"#headingOne\" href=\"#collapseOne\" aria-expanded=\"false\" aria-controls=\"collapseOne\" >\r\n");
      out.write("          \t用户信息\r\n");
      out.write("        </a>\r\n");
      out.write("      </h4>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div id=\"collapseOne\" class=\"panel-collapse collapse in\" role=\"tabpanel\" aria-labelledby=\"headingOne\">\r\n");
      out.write("      <div class=\"panel-body\">\r\n");
      out.write("      \t\t<h4><a style=\"text-decoration:none \" class=\"collapsed\" role=\"button\"  href=\"#collapseOne\" >\r\n");
      out.write("       \t\t   我的昵称\r\n");
      out.write("        \t\t</a></h4>\r\n");
      out.write("      \t\t<h4><a style=\"text-decoration:none \" class=\"collapsed\" role=\"button\" href=\"#collapseOne\" >\r\n");
      out.write("       \t\t  我的签名\r\n");
      out.write("        \t\t</a></h4>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"panel panel-default\">\r\n");
      out.write("    <div class=\"panel-heading\" role=\"tab\" id=\"headingTwo\">\r\n");
      out.write("      <h4 class=\"panel-title\">\r\n");
      out.write("        <a style=\"text-decoration:none \" class=\"collapsed\" role=\"button\" data-toggle=\"collapse\" data-parent=\"#headingTwo\" href=\"#collapseTwo\" aria-expanded=\"false\" aria-controls=\"collapseTwo\">\r\n");
      out.write("       \t\t   我的日记本\r\n");
      out.write("        </a>\r\n");
      out.write("      </h4>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div id=\"collapseTwo\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingTwo\">\r\n");
      out.write("      <div class=\"panel-body\">\r\n");
      out.write("\t      \t\t<h4><a style=\"text-decoration:none \" class=\"collapsed\" role=\"button\"   href=\"WriteDiary.jsp\" target=\"detail_Frame\" >\r\n");
      out.write("\t       \t\t   记录日记\r\n");
      out.write("\t        \t\t</a></h4>\r\n");
      out.write("\t      \t\t<h4><a style=\"text-decoration:none \" class=\"collapsed\" role=\"button\"   href=\"AllDiarys.jsp\" target=\"detail_Frame\" >\r\n");
      out.write("\t       \t\t  所有日记\r\n");
      out.write("\t        \t\t</a></h4>\r\n");
      out.write("\t      \t\t<h4><a style=\"text-decoration:none \" class=\"collapsed\" role=\"button\"  href=\"DiaryTags.jsp\" target=\"detail_Frame\" >\r\n");
      out.write("\t       \t\t  日记标签\r\n");
      out.write("\t        \t\t</a></h4>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"panel panel-default\">\r\n");
      out.write("    <div class=\"panel-heading\" role=\"tab\" id=\"headingThree\">\r\n");
      out.write("      <h4 class=\"panel-title\">\r\n");
      out.write("        <a style=\"text-decoration:none \" class=\"collapsed\" role=\"button\" data-toggle=\"collapse\" data-parent=\"#headingThree\" href=\"#collapseThree\" aria-expanded=\"false\" aria-controls=\"collapseThree\">\r\n");
      out.write("          \t安全设置\r\n");
      out.write("        </a>\r\n");
      out.write("      </h4>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div id=\"collapseThree\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingThree\">\r\n");
      out.write("      <div class=\"panel-body\">\r\n");
      out.write("      \t\t\t<h4><a style=\"text-decoration:none \" class=\"collapsed\" role=\"button\"  href=\"./user/ModifyPassword.jsp\" target=\"detail_Frame\" >\r\n");
      out.write("\t       \t\t  修改密码\r\n");
      out.write("\t        \t</a></h4>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"panel panel-default\">\r\n");
      out.write("    <div class=\"panel-heading\" role=\"tab\" id=\"headingFour\">\r\n");
      out.write("      <h4 class=\"panel-title\">\r\n");
      out.write("        <a style=\"text-decoration:none \" class=\"collapsed\" role=\"button\" href=\"");
      out.print(request.getContextPath() );
      out.write("/logInOut/Logout.jsp\" target=\"_top\"aria-expanded=\"false\">\r\n");
      out.write("          \t退出登录\r\n");
      out.write("        </a>\r\n");
      out.write("      </h4>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("  </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
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