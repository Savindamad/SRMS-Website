package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Beans.User;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Maharaja Palace</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script> \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\"  media=\"all\" />\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href=\"css/slider.css\" rel=\"stylesheet\" type=\"text/css\"  media=\"all\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/lightbox.css\" media=\"screen\" />\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"js/map.js\"></script> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.min.js\"></script> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.easing.1.3.js\"></script> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/camera.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.lightbox.js\"></script>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(function () {\n");
      out.write("                $('.gallery a').lightBox();\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            jQuery(function () {\n");
      out.write("                jQuery('#camera_wrap_1').camera({\n");
      out.write("                    pagination: false,\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        .btn {\n");
      out.write("            margin-right: 30px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        ");

            HttpSession sessionUser = request.getSession(false);
            String email = (String) sessionUser.getAttribute("email");

            User user1 = new User();
            user1.setEmail(email);
            user1.getUser();
            String log;
            String logLink;
            String sign = "Signup";
            String signLink;
            String name = user1.getName();
            if (name == "") {
                log = "login";
                logLink = "login.jsp?login=index.jsp";
                sign = "Signup";
                signLink = "signup.jsp";

            } else {
                log = "logout";
                logLink = "logout.jsp?page=index.jsp";
                //signup = user1.getName();
                signLink = "#";
                sign = "Savinda Keshan";
            }

            pageContext.setAttribute("log", log);
            pageContext.setAttribute("logLink", logLink);

        
      out.write("\n");
      out.write("        <!----start-header----->\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"wrap\">\n");
      out.write("                <div class=\"top-header\">\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <a href=\"/SRMS-Website/index.jsp\"><img src=\"images/logo2.png\" title=\"logo\" /></a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"social-icons\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"#\"><img src=\"images/facebook.png\" title=\"facebook\" /></a></li>\n");
      out.write("                            <li><a href=\"#\"><img src=\"images/twitter.png\" title=\"twitter\" /></a></li>\n");
      out.write("                            <li><a href=\"#\"><img src=\"images/google.png\" title=\"google pluse\" /></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clear\"> </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"top-nav\">\n");
      out.write("                    <div class=\"top-nav-left\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li class=\"active\"><a href=\"/SRMS-Website/index.jsp\">Home</a></li>\n");
      out.write("                            <li><a href=\"nav/menu.jsp\">Menu</a></li>\n");
      out.write("                            <li><a href=\"nav/reservation.jsp\">Reservation</a></li>\n");
      out.write("                            <li><a href=\"nav/promotion.jsp\">Promotion</a></li>\n");
      out.write("                            <li><a href=\"nav/reviews.jsp\">Reviews</a></li>\n");
      out.write("                            <div class=\"clear\"> </div>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"top-nav-right\">\n");
      out.write("                        <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                            <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${signupLink}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><span class=\"glyphicon glyphicon-user\"></span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sign}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>        \n");
      out.write("                            <li><button class=\"btn btn-default navbar-btn\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${logLink}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('"');
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${log}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></button></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clear\"> </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"slider\">\t\t\t\t\t     \n");
      out.write("            <div class=\"camera_wrap camera_azure_skin\" id=\"camera_wrap_1\">\t\t\t\t\t\t\t\t\t           \n");
      out.write("                <div data-src=\"images/slide1.jpg\"></div> \n");
      out.write("                <div data-src=\"images/slider2.jpg\"></div>\n");
      out.write("                <div data-src=\"images/slider3.jpg\"></div>\n");
      out.write("                <div data-src=\"images/slider4.jpg\"></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"clear\"> </div>\t\t\t\t\t       \n");
      out.write("        </div>\t\t\t\t\t\n");
      out.write("        <div class=\"content\">\n");
      out.write("            <div class=\"top-grids\">\n");
      out.write("                <div class=\"wrap\">\n");
      out.write("                    <div class=\"top-grid\">\n");
      out.write("                        <a href=\"aboutus.html\" target=\"iframe\"><img src=\"images/icon2.png\" title=\"icon-name\"></a>\n");
      out.write("                        <h3>About us</h3>\n");
      out.write("                        <p> </p>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"top-grid\">\n");
      out.write("                        <a href=\"contactus.html\" target=\"iframe\"><img src=\"images/icon2.png\" title=\"icon-name\"></a>\n");
      out.write("                        <h3>Contact us</h3>\n");
      out.write("                        <p>  </p>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"top-grid last-topgrid\">\n");
      out.write("                        <a href=\"map.html\" target=\"iframe\"><img src=\"images/icon3.png\" title=\"icon-name\"></a>\n");
      out.write("                        <h3>Location</h3>\n");
      out.write("                        <p> </p>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clear\"> </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"mid-grid\">\n");
      out.write("                <iframe name=\"iframe\" class=\"wrap\" src=\"aboutus.html\"></iframe>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"bottom-grids\">\n");
      out.write("                <div class=\"wrap\">\n");
      out.write("                    <div class=\"bottom-grid1\"></div>\n");
      out.write("                </div>\t\t\t\t\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"footer\">\n");
      out.write("            <div class=\"wrap\">\n");
      out.write("                <div class=\"footer-grid\">\n");
      out.write("                    <h3></h3>\n");
      out.write("                    <a href=\"#\"></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"footer-grid center-grid\">\n");
      out.write("                    <h3></h3>\n");
      out.write("                    <ul>\n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"footer-grid\"></div>\n");
      out.write("                <div class=\"clear\"> </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"clear\"> </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"copy-right\">\n");
      out.write("            <div class=\"top-to-page\">\n");
      out.write("                <a href=\"#top\" class=\"scroll\"></a>\n");
      out.write("                <div class=\"clear\"></div>\n");
      out.write("            </div>\t\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
