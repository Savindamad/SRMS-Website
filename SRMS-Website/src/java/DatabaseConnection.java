import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Savinda Keshan
 */
public class DatabaseConnection {
    Connection conn;
    Statement stmt;
    ResultSet res;

    public DatabaseConnection() {
    }

    public Connection SetConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://br-cdbr-azure-south-b.cloudapp.net:3306/smart_rms?zeroDateTimeBehavior=convertToNull","b50735a87d1621","8a720e5f");
        } catch (Exception ex) {
        }
        return conn;
    }
    
    public ResultSet getResult(String sql, Connection conn){
        this.conn = conn;
        try{
        stmt = (Statement) conn.createStatement();
        res = stmt.executeQuery(sql);
        
        }
        catch(Exception e){
        }
        return res;
    } 
}
