package Beans;

import DB.DBConnection;
import java.sql.Connection;
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
                ArticalDetails temp = new ArticalDetails(id, title, content);
                articals.add(temp);
            }
            st.close();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return articals;
    }
    public void AddArtical(){
    }
}
