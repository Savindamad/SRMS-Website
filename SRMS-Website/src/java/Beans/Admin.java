package Beans;

import DB.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author savinda
 */
public class Admin {
    String userId,name;

    public Admin() {
        userId="";
        name="";
    }
    public boolean loginUser(String username,String password){
        boolean check = false;
        try{
            DBConnection dbconn=new DBConnection();
            Connection myconnection= dbconn.connection();
            
            PreparedStatement ps1 =myconnection.prepareStatement("select * from user_account where username=? and password=? and user_type=ADMIN");

            ps1.setString(1, username);
            ps1.setString(2, password);
            
            ResultSet rs1 =ps1.executeQuery();
            
            
            while(rs1.next())
                {
                    check = true;
                    userId = rs1.getString("user_id");
                    name= rs1.getString("f_name")+" "+rs1.getString("l_name");
                }
            
            myconnection.close();
        }
        catch(Exception e){e.printStackTrace();}
        
        return check;
    }

    public String getName() {
        return name;
    }

    public String getUserId() {
        return userId;
    }
    
}
