package Servletes;

import Beans.Artical;
import Beans.ArticalDetails;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CustomizeArticle extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("articleId");
        String status = request.getParameter("status");

        Artical article = new Artical();

        try (PrintWriter out = response.getWriter()) {
            if (status.equals("delete")) {
                article.deleteArticle(id);
            } else if (status.equals("remove")) {
                article.removeArticle(id);
            } else if (status.equals("repost")) {
                article.repostArticle(id);
            }

            out.println("<div class=\"col-md-1\"></div>\n"
                    + "                <div class=\"col-md-10\">\n"
                    + "                    <div class=\"tabbable\" id=\"tabs-638888\">\n"
                    + "                        <ul class=\"nav nav-tabs\">\n"
                    + "                            <li class=\"active\">\n"
                    + "                                <a href=\"#panel-621843\" data-toggle=\"tab\">Display</a>\n"
                    + "                            </li>\n"
                    + "                            <li>\n"
                    + "                                <a href=\"#panel-733178\" data-toggle=\"tab\">Not display</a>\n"
                    + "                            </li>\n"
                    + "                        </ul>\n"
                    + "                        <div class=\"tab-content\">\n"
                    + "                            <div class=\"tab-pane active\" id=\"panel-621843\">\n"
                    + "                                <div id=\"\" style=\"margin-top: 40px\">");
            Artical articles = new Artical();
            ArrayList<ArticalDetails> articleDetails = new ArrayList<ArticalDetails>();
            articleDetails = articles.GetArticals();

            for (int i = 0; i < articleDetails.size(); i++) {
                ArticalDetails temp = articleDetails.get(i);
                out.println("<div class=\"row\">\n"
                        + "                                        <div class=\"col-md-1\"></div>\n"
                        + "                                        <div class=\"col-md-10\">\n"
                        + "                                            <div class=\"thumbnail\">\n"
                        + "                                                <div class=\"caption\">\n"
                        + "                                                    <h3>" + temp.getTitle() + "</h3>\n"
                        + "                                                    <p>" + temp.getContent() + "</p>\n"
                        + "                                                    <p><small>-<cite>" + temp.getAboutArticle() + "</cite></small></p>\n"
                        + "                                                    <a href=\"" + temp.getArticleLink() + "\">Link</a>\n"
                        + "                                                    <p></p>\n"
                        + "                                                    <p>\n"
                        + "                                                        <button class=\"btn btn-danger\" onclick=\"deleteFunction(" + temp.getId() + ")\">Delete</button>\n"
                        + "                                                        <button class=\"btn btn-primary\" onclick=\"removeFunction(" + temp.getId() + ")\">Remove</button>\n"
                        + "                                                    </p>\n"
                        + "                                                </div>\n"
                        + "                                            </div>\n"
                        + "                                        </div>\n"
                        + "                                    </div>");
            }
            if (articleDetails.size() == 0) {
                out.println("<div class=\"row\">\n"
                        + "                                        <div class=\"col-md-1\"></div>\n"
                        + "                                        <div class=\"col-md-10\"><h4>Empty</h4></div>\n"
                        + "                                    </div>");
            }
            out.println("</div>\n"
                    + "                            </div>\n"
                    + "                            <div class=\"tab-pane\" id=\"panel-733178\">\n"
                    + "                                <div id=\"\" style=\"margin-top: 40px\">");
            ArrayList<ArticalDetails> articleNotDisplayed = new ArrayList<ArticalDetails>();
            articleNotDisplayed = articles.getNotDisplayedArticals();

            for (int i = 0; i < articleNotDisplayed.size(); i++) {
                ArticalDetails temp = articleNotDisplayed.get(i);
                out.println("<div class=\"row\">\n"
                        + "                                        <div class=\"col-md-1\"></div>\n"
                        + "                                        <div class=\"col-md-10\">\n"
                        + "                                            <div class=\"thumbnail\">\n"
                        + "                                                <div class=\"caption\">\n"
                        + "                                                    <h3>" + temp.getTitle() + "</h3>\n"
                        + "                                                    <p>" + temp.getContent() + "</p>\n"
                        + "                                                    <p><small>-<cite>" + temp.getAboutArticle() + "</cite></small></p>\n"
                        + "                                                    <a href=\"" + temp.getArticleLink() + "\">Link</a>\n"
                        + "                                                    <p></p>\n"
                        + "                                                    <p>\n"
                        + "                                                        <button class=\"btn btn-danger\" onclick=\"deleteFunction(" + temp.getId() + ")\">Delete</button>\n"
                        + "                                                        <button class=\"btn btn-primary\" onclick=\"repostFunction(" + temp.getId() + ")\">Re-post</button>\n"
                        + "                                                    </p>\n"
                        + "                                                </div>\n"
                        + "                                            </div>\n"
                        + "                                        </div>\n"
                        + "                                    </div>");
            }
            if (articleNotDisplayed.size() == 0) {
                out.println("<div class=\"row\">\n"
                        + "                                        <div class=\"col-md-1\"></div>\n"
                        + "                                        <div class=\"col-md-10\"><h4>Empty</h4></div>\n"
                        + "                                    </div>");
            }
            out.println("</div>\n"
                    + "                            </div>\n"
                    + "                        </div>\n"
                    + "                    </div>\n"
                    + "                </div>");

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
