
package Beans;

import DB.DBConnection;
import com.sun.org.apache.xpath.internal.axes.HasPositionalPredChecker;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Named;
import javax.enterprise.context.Dependent;

public class User {
    private String name,email,password,contact_no;
    private Date birthday;

    public User() {
        name="";
        email="";
        password="";
        contact_no="";
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getContact_no() {
        return contact_no;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setContact_no(String contact_no) {
        this.contact_no = contact_no;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
    
    public static boolean loginUser(String email,String password){
        boolean check = false;
        try{
            DBConnection dbconn=new DBConnection();
            Connection myconnection= dbconn.connection();
            
            PreparedStatement ps1 =myconnection.prepareStatement("select * from customer where email=? and password=?");

            ps1.setString(1, email);
            ps1.setString(2, password);
            
            ResultSet rs1 =ps1.executeQuery();
            check = rs1.next();
            
            myconnection.close();
        }
        catch(Exception e){e.printStackTrace();}
        
        return check;
    }
    public boolean register(){
        boolean check = true;
        try{
            DBConnection dbconn=new DBConnection();
            Connection myconnection= dbconn.connection();
        
            String sqlString="INSERT INTO customer (name,email,password,birthday,contact_no) VALUES ('"+name+"','"+email+"','"+password+"','"+birthday+"','"+contact_no+"')";
            Statement myStatement = myconnection.createStatement();
            
            try{
                myStatement.executeUpdate(sqlString);
                myStatement.close();
                myconnection.close();
            }
            catch(SQLException ex) 
            {
                Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
                check = false;
            }
        }
        catch(SQLException ex) 
        {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            check = false;
        }  
        return check;
        
    }
    
    public void getUser(){
        try {
            DBConnection dbconn=new DBConnection();
            Connection myconnection= dbconn.connection();
            
            String sqlString = "SELECT * FROM customer WHERE email = '"+email+"'";
            Statement myStatement = myconnection.createStatement();
            ResultSet rs=myStatement.executeQuery(sqlString);
            
            while(rs.next())
                {
                    name= rs.getString("name");
                    email = rs.getString("email");
                    birthday = rs.getDate("birthday");
                    contact_no = rs.getString("contact_no");  
                }
            myStatement.close();
            myconnection.close();
        } 
        catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);} 
    }    
}
