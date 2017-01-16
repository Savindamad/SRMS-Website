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

            out.println("<h3>&#9;Thank you for your review. Your post will be posted later in the website..</h3><br>");
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
