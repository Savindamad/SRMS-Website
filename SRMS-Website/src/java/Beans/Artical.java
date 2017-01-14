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

public class Artical {

    public ArrayList<ArticalDetails> GetArticals() {
        ArrayList<ArticalDetails> articals = new ArrayList<ArticalDetails>();

        try {
            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            String query = "SELECT * FROM article WHERE status = 'DISPLAY'";
            Statement st = myconnection.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                String id = rs.getString("id");
                String title = rs.getString("title");
                String content = rs.getString("content");
                String aboutArticle = rs.getString("aboutArticle");
                String articleLink = rs.getString("articleLink");
                ArticalDetails temp = new ArticalDetails(id, title, content, aboutArticle, articleLink);
                articals.add(temp);
            }
            st.close();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return articals;
    }
    
    public ArrayList<ArticalDetails> getNotDisplayedArticals() {
        ArrayList<ArticalDetails> articals = new ArrayList<ArticalDetails>();

        try {
            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            String query = "SELECT * FROM article WHERE status = 'NOT-DISPLAY'";
            Statement st = myconnection.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                String id = rs.getString("id");
                String title = rs.getString("title");
                String content = rs.getString("content");
                String aboutArticle = rs.getString("aboutArticle");
                String articleLink = rs.getString("articleLink");
                ArticalDetails temp = new ArticalDetails(id, title, content, aboutArticle, articleLink);
                articals.add(temp);
            }
            st.close();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return articals;
    }

    public void AddArtical(String title, String article, String aboutArticle, String articleLink) {
        try {
            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            String query = " insert into article (title, content, aboutArticle, articleLink) values (?, ?, ?, ?)";
            PreparedStatement preparedStmt = myconnection.prepareStatement(query);
            preparedStmt.setString(1, title);
            preparedStmt.setString(2, article);
            preparedStmt.setString(3, aboutArticle);
            preparedStmt.setString(4, articleLink);
            preparedStmt.execute();

            myconnection.close();

        } catch (SQLException ex) {
        }
    }
    
}
