/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

/**
 *
 * @author savinda
 */
public class Review extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            Reviews reviews = new Reviews();
            String status = request.getParameter("status");
            if (status.equals("accept")) {
                reviews.acceptReview(request.getParameter("commentId"));
            } else if (status.equals("reject")) {
                reviews.rejectReview(request.getParameter("commentId"));
            }

            ArrayList<Comment> comments = new ArrayList<Comment>();
            comments = reviews.getReviews();

            for (int i = 0; i < comments.size(); i++) {
                Comment reviewComment = comments.get(i);
                String comment = reviewComment.getComment();
                String userName = reviewComment.getName();
                String commentId = reviewComment.getCommentId();

                out.println("<div class=\"row\">");
                out.println("<div class=\"col-md-1\"></div>");
                out.println("<div class=\"col-md-8\">");
                out.println("<div class=\"thumbnail\">");
                out.println("<div class=\"caption\">");
                out.println("<h3>"+userName+"</h3>");
                out.println("<p>"+comment+"</p>");
                out.println("<div>");
                out.println("<input type=\"hidden\" id=\"commentId\" value=\""+commentId+"\">");
                out.println("<button class=\"btn btn-primary\" id=\"accept\">Accept</button>");
                out.println("<button class=\"btn btn-danger\" id=\"reject\">Reject</button>");
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
