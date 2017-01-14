package Servletes;

import Beans.ReserveTable;
import Beans.TableInfo;
import Other.CombinationInfo;
import Other.TableCombination;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Reservation extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();
        try {

            String type = request.getParameter("tableType");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
            String seats = request.getParameter("numOfSeats");
            
            ReserveTable reserve = new ReserveTable();
            ArrayList<TableInfo> availableTables = reserve.AvailableTables(time, date, type, seats);
            TableCombination tableCombination = new TableCombination();
            ArrayList<CombinationInfo> bestCombinations =new ArrayList<CombinationInfo>();
            bestCombinations = tableCombination.getCombination(availableTables,seats);
            
            for(int i = 0; i<bestCombinations.size(); i++){
            
            out.write("<div class=\"col-md-4\">");
            out.write("<div class=\"thumbnail\">");
            out.write("<img alt=\"Bootstrap Thumbnail First\" src=\"http://lorempixel.com/output/people-q-c-600-200-1.jpg\" />");
            out.write("</div>");
            out.write("</div>");
            out.write("<div class=\"col-md-8\">");
            out.write("<div class=\"thumbnail\">");
            out.write("<div class=\"caption\">");
            out.write("<h3>Table number : "+bestCombinations.get(i).getTableNo()+"</h3>");
            out.write("<p>Number of seats : "+bestCombinations.get(i).getNumOfSeats()+"</p>");
            out.write("<p><button class=\"btn btn-primary\" href=\"reserveTable\">Book</button></p>");
            out.write("</div>");
            out.write("</div>");
            out.write("</div>");
            }
            
        } catch (Exception e) {
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
