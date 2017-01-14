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
            st.executeUpdate("INSERT INTO promotion (title, description, image_path, status) "
                    + "VALUES ('" + title + "', '" + description + "', '" + path + "', 'DISPLAY')");

        } catch (SQLException ex) {
            String error = ex.toString();
        }
    }

    public ArrayList<PromotionDetails> getNotDisplayedPromotions() {
        ArrayList<PromotionDetails> promotionsNotDisplayed = new ArrayList<PromotionDetails>();
        try {
            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            String query = "SELECT * FROM promotion WHERE status = 'NOT-DISPLAY'";
            Statement st = myconnection.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                String id = rs.getString("id");
                String title = rs.getString("title");
                String description = rs.getString("description");
                String imagePath = rs.getString("image_path");

                PromotionDetails temp = new PromotionDetails(id, title, description, imagePath);
                promotionsNotDisplayed.add(temp);

            }
            st.close();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return promotionsNotDisplayed;
    }

    public void deletePomotion(String id) {
        try {
            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            String query = "delete from promotion where id = ?";
            PreparedStatement preparedStmt = myconnection.prepareStatement(query);
            preparedStmt.setString(1, id);

            preparedStmt.execute();
            myconnection.close();
        } catch (Exception e) {
        }
    }

    public void removePomotion(String id) {
        try {
            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            String query = "update promotion set status = ? where id = ?";
            PreparedStatement preparedStmt = myconnection.prepareStatement(query);
            preparedStmt.setString(1, "NOT-DISPLAY");
            preparedStmt.setString(2, id);

            preparedStmt.executeUpdate();

            preparedStmt.execute();
            
            myconnection.close();
        } catch (Exception e) {
        }
    }

    public void repostPomotion(String id) {
       try {
            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            String query = "update promotion set status = ? where id = ?";
            PreparedStatement preparedStmt = myconnection.prepareStatement(query);
            preparedStmt.setString(1, "DISPLAY");
            preparedStmt.setString(2, id);

            preparedStmt.executeUpdate();

            preparedStmt.execute();
            
            myconnection.close();
        } catch (Exception e) {
        }
    }

}
