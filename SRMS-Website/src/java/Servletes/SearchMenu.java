
package Servletes;

import Beans.Menu;
import Beans.MenuItem;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchMenu extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            
        }
        catch(Exception e){
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search");
        Menu menu = new Menu();
        menu.setMenu();
        ArrayList<MenuItem> itemArray = menu.getMenu();
       
        ArrayList<MenuItem> tempArray = new ArrayList<>();
        for(int i = 0; i<itemArray.size(); i++){
            if(itemArray.get(i).getItemName().toLowerCase().contains(search)){
                tempArray.add(itemArray.get(i));
            }
        }
        resp.setContentType("text/plain");
        resp.setCharacterEncoding("UTF-8");
        String response = "";
        for(int i = 0; i<tempArray.size(); i++){
            response+="<div>"+tempArray.get(i).getItemName()+"</div>";
        }
        resp.getWriter().write(response);
    }
    

}
