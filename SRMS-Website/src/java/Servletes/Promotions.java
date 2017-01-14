/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servletes;

import Beans.Promotion;
import Beans.PromotionDetails;
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
public class Promotions extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String id = request.getParameter("promoId");
        String status = request.getParameter("status");
        try (PrintWriter out = response.getWriter()) {

            Promotion promotion = new Promotion();

            if (status.equals("delete")) {
                promotion.deletePomotion(id);
            } else if (status.equals("remove")) {
                promotion.removePomotion(id);
            } else if (status.equals("repost")) {
                promotion.repostPomotion(id);
            }

            out.println("<div class=\"col-md-1\"></div>\n"
                    + "                <div class=\"col-md-10\">\n"
                    + "                    <div class=\"tabbable\" id=\"tabs-638888\">\n"
                    + "                        <ul class=\"nav nav-tabs\">\n"
                    + "                            <li class=\"active\">\n"
                    + "                                <a href=\"#panel-621843\" data-toggle=\"tab\">Displayed</a>\n"
                    + "                            </li>\n"
                    + "                            <li>\n"
                    + "                                <a href=\"#panel-733178\" data-toggle=\"tab\">Hidden</a>\n"
                    + "                            </li>\n"
                    + "                        </ul>\n"
                    + "                        <div class=\"tab-content\">\n"
                    + "                            <div class=\"tab-pane active\" id=\"panel-621843\">\n"
                    + "                                <div id=\"\" style=\"margin-top: 40px\">");
            Promotion promotions = new Promotion();
            ArrayList<PromotionDetails> proDetails = new ArrayList<PromotionDetails>();
            proDetails = promotions.getPromotions();

            for (int i = 0; i < proDetails.size(); i++) {
                PromotionDetails temp = proDetails.get(i);
                out.println("<div class=\"row\">\n"
                        + "                                        <div class=\"col-md-1\"></div>\n"
                        + "                                        <div class=\"col-md-10\">\n"
                        + "                                            <div class=\"thumbnail\">\n"
                        + "                                                <img alt=\"Bootstrap Thumbnail First\" src=\"" + temp.getImagePath() + "\" />\n"
                        + "                                                <div class=\"caption\">\n"
                        + "                                                    <h3>" + temp.getTitle() + "</h3>\n"
                        + "                                                    <p>" + temp.getDescription() + "</p>\n"
                        + "                                                    <p>\n"
                        + "                                                        <button class=\"btn btn-danger\" onclick=\"deleteFunction(" + temp.getId() + ")\">Delete</button>\n"
                        + "                                                        <button class=\"btn btn-primary\" onclick=\"removeFunction(" + temp.getId() + ")\">Hide</button>\n"
                        + "                                                    </p>\n"
                        + "                                                </div>\n"
                        + "                                            </div>\n"
                        + "                                        </div>\n"
                        + "                                    </div>");
            }
            if (proDetails.size() == 0) {
                out.println("<div class=\"row\">\n"
                        + "                                        <div class=\"col-md-1\"></div>\n"
                        + "                                        <div class=\"col-md-10\"><h4>No promotions displayed</h4></div>\n"
                        + "                                    </div>");
            }
            out.println("</div>\n"
                    + "                            </div>\n"
                    + "                            <div class=\"tab-pane\" id=\"panel-733178\">\n"
                    + "                                <div id=\"\" style=\"margin-top: 40px\">");

            ArrayList<PromotionDetails> proNotDetails = new ArrayList<PromotionDetails>();
            proNotDetails = promotions.getNotDisplayedPromotions();

            for (int i = 0; i < proNotDetails.size(); i++) {
                PromotionDetails temp = proNotDetails.get(i);
                out.println("<div class=\"row\">\n"
                        + "                                        <div class=\"col-md-1\"></div>\n"
                        + "                                        <div class=\"col-md-10\">\n"
                        + "                                            <div class=\"thumbnail\">\n"
                        + "                                                <img alt=\"Bootstrap Thumbnail First\" src=\"" + temp.getImagePath() + "\" />\n"
                        + "                                                <div class=\"caption\">\n"
                        + "                                                    <h3>" + temp.getTitle() + "</h3>\n"
                        + "                                                    <p>" + temp.getDescription() + "</p>\n"
                        + "                                                    <p>\n"
                        + "                                                        <button class=\"btn btn-danger\" onclick=\"deleteFunction(" + temp.getId() + ")\">Delete</button>\n"
                        + "                                                        <button class=\"btn btn-success\" onclick=\"repostFunction(" + temp.getId() + ")\">Re-post</button>\n"
                        + "                                                    </p>\n"
                        + "                                                </div>\n"
                        + "                                            </div>\n"
                        + "                                        </div>\n"
                        + "                                    </div>");
            }
            if (proNotDetails.size() == 0) {
                out.println("<div class=\"row\">\n"
                        + "                                        <div class=\"col-md-1\"></div>\n"
                        + "                                        <div class=\"col-md-10\"><h4>No promotions hidden</h4></div>\n"
                        + "                                    </div>");
            }
            out.println("</div>\n"
                    + "                            </div>\n"
                    + "                        </div>\n"
                    + "                    </div>\n"
                    + "                </div>");

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
