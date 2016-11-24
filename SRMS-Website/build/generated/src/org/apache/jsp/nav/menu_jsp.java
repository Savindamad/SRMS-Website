package org.apache.jsp.nav;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Beans.User;
import Beans.Menu;
import Beans.MenuItem;
import java.util.ArrayList;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <title>Menu</title>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("    <link href=\"../css/style.css\" rel=\"stylesheet\" type=\"text/css\"  media=\"all\" />\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("    <script type=\"text/javascript\" src=\"js/search.js\"></script>\n");
      out.write("    <script srs=\"http://code.jquery.com/jquery-latest.js\"></script>\n");
      out.write("    <script>\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            $('#searchBtn').click(function(event) {\n");
      out.write("                var search = $('#search').val();\n");
      out.write("                alert(search);\n");
      out.write("                $.get('SearchMenu',\n");
      out.write("                        {search_name, search},\n");
      out.write("                        function (response) {\n");
      out.write("                            $('#imagediv').text(responce);\n");
      out.write("                        });\n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");

        HttpSession sessionUser = request.getSession(false);
        String email = (String) sessionUser.getAttribute("email");

        User user1 = new User();
        user1.setEmail(email);
        user1.getUser();
        String log;
        String logLink;
        String name = user1.getName();

        if (name == "") {
            log = "login";
            logLink = "../login.jsp?login=nav/menu.jsp";
        } else {
            log = "logout";
            logLink = "../logout.jsp?page=nav/menu.jsp";
        }

        pageContext.setAttribute("log", log);
        pageContext.setAttribute("logLink", logLink);

        //String size1 = "size";
        Menu menu = new Menu();
        menu.setMenu();
        ArrayList<MenuItem> menuArray = menu.getMenu();
        //String size = "size"+menuArray.size();

    
      out.write("\n");
      out.write("    <div class=\"header\">\n");
      out.write("        <div class=\"wrap\">\n");
      out.write("            <div class=\"top-header\">\n");
      out.write("                <div class=\"logo\">\n");
      out.write("                    <a href=\"../index.jsp\"><img src=\"../images/logo2.png\" title=\"logo\" /></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"social-icons\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"#\"><img src=\"../images/facebook.png\" title=\"facebook\" /></a></li>\n");
      out.write("                        <li><a href=\"#\"><img src=\"../images/twitter.png\" title=\"twitter\" /></a></li>\n");
      out.write("                        <li><a href=\"#\"><img src=\"../images/google.png\" title=\"google pluse\" /></a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clear\"> </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"top-nav\">\n");
      out.write("                <div class=\"top-nav-left\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"../index.jsp\">Home</a></li>\n");
      out.write("                        <li class=\"active\"><a href=\"menu.jsp\">Menu</a></li>\n");
      out.write("                        <li><a href=\"reservation.jsp\">Reservation</a></li>\n");
      out.write("                        <li><a href=\"promotion.jsp\">Promotion</a></li>\n");
      out.write("                        <li><a href=\"reviews.jsp\">Reviews</a></li>\n");
      out.write("                        <div class=\"clear\"> </div>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"top-nav-right\">\n");
      out.write("                    <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${logLink}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('"');
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${log}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a> </li>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clear\"> </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div>\n");
      out.write("        <div class=\"content\">\n");
      out.write("            <div><img src=\"../images/menu.png\"></div>\n");
      out.write("            <!---start-about---->\n");
      out.write("            <div class=\"about-us\"></div>\n");
      out.write("            <div class=\"wrap\">\n");
      out.write("                <div class=\"about-header\"></div>\n");
      out.write("                <div class=\"about-info\"></div>\n");
      out.write("                <div class=\"specials\">\n");
      out.write("                    <div class=\"specials-heading\">\n");
      out.write("                        <h3>Our menu</h3>\n");
      out.write("                        <div class=\"clear\"> </div>\n");
      out.write("                        <input type=\"text\" name=\"search\" id=\"search\">\n");
      out.write("                        <input type=\"button\" id=\"searchBtn\" value=\"Search\" >\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div id='imagediv'>\n");
      out.write("                    ");
                    int x = menuArray.size();
                        for (int i = 0; i < x; i++) {
                            String itemDescription = menuArray.get(i).getItemDescription();
                            String itemName = menuArray.get(i).getItemName();
                            String imagePath = menuArray.get(i).getItemImagePath();

                            out.write("<div class='specials-grids'>");
                            out.write("<div class='special-grid'>");
                            out.write("<img src='" + imagePath + "'>");
                            out.write("<h3>" + itemName + "</h3>");
                            out.write("</div>");
                            out.write("</div>");
                        }
                    
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"testmonials\">\n");
      out.write("                <div class=\"wrap\">\n");
      out.write("                    <div class=\"testmonial-grid\">\n");
      out.write("                        <h3>TESTIMONIALS :</h3>\n");
      out.write("                        <p>\" Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat luctus eros ac placerat. Quisque erat metus, facilisis non felis eu, aliquam hendrrit quam. Donec ut lectus vel dolor adipiscing tincidunt. Ut auctor diam at est iaculis, vitae interdum magna sagittis.\"</p>\n");
      out.write("                        <a href=\"#\"> - Lorem ipsum</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div> \n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
