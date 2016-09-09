
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
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
public class SignUp extends HttpServlet {
    String name;
    String email;
    String contact_no;
    String password;
    String rePassword;
    
    String query;
    Connection conn;
    Statement stmt;
    ResultSet res;
    DatabaseConnection dbconn;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try  {
            
            dbconn = new DatabaseConnection();
            
            name = request.getParameter("name");
            email = request.getParameter("email");
            password = request.getParameter("password");
            contact_no = "0710408207";
            
            conn = dbconn.SetConnection();
            stmt = conn.createStatement();
            query = "insert into customer(name,contact_no,email,password) values('"+name+"','"+contact_no+"','"+email+"','"+password+"')";
            int i = stmt.executeUpdate(query);
        }
        catch(SQLException e){
            e.printStackTrace();
            
            

//            request.setAttribute("Error",e);
//            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
//            rd.forward(request, response);
        }
        finally{
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
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
