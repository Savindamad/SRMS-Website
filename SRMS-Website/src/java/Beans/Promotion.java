package Beans;

import DB.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Promotion {

    ArrayList<PromotionDetails> promotions = new ArrayList<PromotionDetails>();

    public Promotion() {
        try {
            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            String query = "SELECT * FROM promotion WHERE status = 'DISPLAY'";
            Statement st = myconnection.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                String id = rs.getString("id");
                String title = rs.getString("title");
                String description = rs.getString("description");
                String imagePath = rs.getString("image_path");

                PromotionDetails temp = new PromotionDetails(id, title, description, imagePath);
                promotions.add(temp);

            }
            st.close();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<PromotionDetails> getPromotions() {
        return promotions;
    }

    public void AddPromotion(String title, String description, String path) {
        try {
            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            Statement st = myconnection.createStatement(); 
            st.executeUpdate("INSERT INTO promotion (title, description, image_path, status) " + 
                "VALUES ('"+title+"', '"+description+"', '"+path+"', 'DISPLAY')"); 
            
        } catch (SQLException ex) {
            String error = ex.toString();
        }
    }

}
 