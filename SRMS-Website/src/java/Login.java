import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Savinda Keshan
 */
public class Login extends HttpServlet {
    String username;
    String password;
    String query;
    
    Connection conn;
    Statement stmt;
    ResultSet res;
    DatabaseConnection dbconn;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            dbconn = new DatabaseConnection();
            
            username = request.getParameter("username");
            password = request.getParameter("password");
       
            conn = dbconn.SetConnection();
            stmt = conn.createStatement();
            query = "select * from customer where email='"+username+"' and password='"+password+"'";
            res = dbconn.getResult(query, conn);
            if(res.next()){
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
                out.close();
            }
            
            
        }
        catch(Exception e){
            
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
