
package Beans;

import DB.DBConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author savinda
 */
public class Reviews {
    
    public ArrayList<Comment> getReviews(){
        ArrayList<Comment> comments = new ArrayList<>();
        try {
            DBConnection dbconn=new DBConnection();
            Connection myconnection= dbconn.connection();
            
            String sqlString = "SELECT * FROM review WHERE status = 'NEW'";
            Statement myStatement = myconnection.createStatement();
            ResultSet rs=myStatement.executeQuery(sqlString);
            
            while(rs.next())
                {
                    String id = rs.getString("comment_id");
                    String name = rs.getString("cus_name");
                    String comment = rs.getString("comment");
                    String time = "";
                    Comment temp = new Comment(id, name, comment, time);
                    comments.add(temp);
                    int x= comments.size();
                }
            myStatement.close();
            myconnection.close();
        } 
        catch (SQLException ex) {
        }
        return comments;
    }
}
