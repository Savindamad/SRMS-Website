package Servletes;

import Beans.Comment;
import Beans.Reviews;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddComment extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String comment = request.getParameter("comment");
            String username = request.getParameter("username");
            if (username.equals("")) {
                request.setAttribute("login", "fail");
                response.sendRedirect("login.jsp");
            } else {
                Reviews review = new Reviews();
                review.addComment(comment, username);
            }

            Reviews reviews = new Reviews();
            ArrayList<Comment> comments = new ArrayList<Comment>();
            comments = reviews.getLastComments();
            out.println("<div class=\"col-md-1\"></div>\n"
                    + "<div class=\"col-md-10\" >\n"
                    + "<div style=\"margin-top : 20px\">\n"
                    + "<h5>Thank you for your review. Your post will be posted later in the website</h5>\n"
                    + "</div>\n"
                    + "</div>");
            for (int i = 0; i < comments.size(); i++) {
                String cusName = comments.get(i).getName();
                String cusComment = comments.get(i).getComment();
                String time = comments.get(i).getDate();
                out.println("<div class=\"row\" style=\"margin-top : 20px\">\n"
                        + "                                                        <div class=\"col-md-1\"></div>\n"
                        + "                                                        <div class=\"col-md-10\">\n"
                        + "                                                            <div class=\"media\">\n"
                        + "                                                                <!-- edited   -->\n" +
"                                                                                           <div class=\"col-md-1 col-sm-1 hidden-xs\">\n" +
"                                                                                           <figure class=\"thumbnail\">\n" +
"                                                                                               <img class=\"img-responsive\" src=\"http://www.keita-gaming.com/assets/profile/default-avatar-c5d8ec086224cb6fc4e395f4ba3018c2.jpg\" />\n" +
"                                                                                               <figcaption class=\"text-center\"></figcaption>\n" +
"                                                                                           </figure>\n" +
"                                                                                           </div>\n" +
"                                                                                           <!--*******************-->\n"
                        
                        
                        + "                                                                <div class=\"media-body\">\n"
                        + "                                                                    <h4 class=\"media-heading\">" + cusName + "</h4>\n"
                        + "                                                                    <p>" + cusComment + "</p>\n"
                        + "                                                                    <h5>" + time + "</h5>\n"
                        + "                                                                </div>\n"
                        + "                                                            </div>\n"
                        + "                                                        </div>\n"
                        + "                                                    </div>");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
