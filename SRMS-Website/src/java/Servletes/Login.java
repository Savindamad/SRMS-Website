package Servletes;

import Beans.User;
import com.sun.prism.Texture;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import org.hibernate.validator.constraints.Email;


public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{            
            User user = new User();
            user.setEmail(request.getParameter("email"));
            user.setPassword(request.getParameter("password"));
            String page = request.getParameter("page");
            
            if(User.loginUser(request.getParameter("email"),request.getParameter("password"))){
                User user1 = new User();
                user1.setEmail(request.getParameter("email"));
                
                user1.getUser();
                
                HttpSession sessionUser = request.getSession();
                sessionUser.setAttribute("email",user1.getEmail());
                
                request.setAttribute("login", "success");
                //RequestDispatcher rd1 = request.getRequestDispatcher(page);
                response.sendRedirect(page);
                
            }
            else{
                request.setAttribute("login", "fail");
                response.sendRedirect("login.jsp?login=fail");
            }
        }
        finally{
            out.close();
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
    }
}
