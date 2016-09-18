package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head><title> Login Page </title>\r\n");
      out.write("        <style>\r\n");
      out.write("\r\n");
      out.write("            body{\r\n");
      out.write("                background-image:url(img/res.jpg);\r\n");
      out.write("                background-size: cover;\r\n");
      out.write("                background-repeat: no-repeat;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .form{\r\n");
      out.write("                margin-left: 200px;\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            table{\r\n");
      out.write("                border: 1px solid black;\r\n");
      out.write("                margin-top: 250px;\r\n");
      out.write("                margin-left:650px;\r\n");
      out.write("                border-radius: 0.2em;\r\n");
      out.write("                padding: 10px;\r\n");
      out.write("                height: 100px;\r\n");
      out.write("                background-color: black;\r\n");
      out.write("                opacity: 0.9;\r\n");
      out.write("                width: 300px;\r\n");
      out.write("                height: 250px;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            td {\r\n");
      out.write("                padding: 5px;\r\n");
      out.write("                height: 20px;\r\n");
      out.write("            }\r\n");
      out.write("            input{\r\n");
      out.write("                width: 90%;\r\n");
      out.write("                padding: 5px;\r\n");
      out.write("                height: 15px;\r\n");
      out.write("                margin-left: 7px;\r\n");
      out.write("                margin-right: 7px;\r\n");
      out.write("                border-radius: 0.3em;\r\n");
      out.write("            }\r\n");
      out.write("            .button{\r\n");
      out.write("                width: 95%;\r\n");
      out.write("                padding: 5px;\r\n");
      out.write("                height: 30px;\r\n");
      out.write("                background-color: #008fbf;\r\n");
      out.write("                margin-left: 7px\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <form class=\"form\" name=\"login\" onSubmit=\"return validateForm();\" action=\"login\" method=\"post\">\r\n");
      out.write("            <table class=\"table\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td colspan=\"2\"><img ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" class=\"img\" src=\"img/login.png\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td colspan=\"2\"><input type=\"text\" name=\"email\" placeholder=\"username\"></td>\r\n");
      out.write("                </tr> \r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td><input type=\"password\" name=\"password\" placeholder=\"password\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr><td colspan=\"2\" align=center>\r\n");
      out.write("                        <input class=\"button\" type=\"submit\" value=\"Login\"/></td></tr>\r\n");
      out.write("                <tr><td colspan=\"2\" align=center>\r\n");
      out.write("                        <a href=\"signup.jsp\">Signup Here</a></td></tr>\r\n");
      out.write("            </table>\r\n");
      out.write("        </form>\r\n");
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("            function validateForm() {\r\n");
      out.write("                var un = document.loginform.usr.value;\r\n");
      out.write("                var pw = document.loginform.pword.value;\r\n");
      out.write("                var username = \"username\";\r\n");
      out.write("                var password = \"password\";\r\n");
      out.write("                if ((un == username) && (pw == password)) {\r\n");
      out.write("                    return true;\r\n");
      out.write("                } else {\r\n");
      out.write("                    alert(\"please check your username and password\");\r\n");
      out.write("                    return false;\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
