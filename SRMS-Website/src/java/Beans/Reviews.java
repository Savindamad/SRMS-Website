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

/**
 *
 * @author savinda
 */
public class Reviews {

    public ArrayList<Comment> getReviews() {
        ArrayList<Comment> comments = new ArrayList<>();
        try {
            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            String sqlString = "SELECT * FROM review WHERE status = 'NEW'";
            Statement myStatement = myconnection.createStatement();
            ResultSet rs = myStatement.executeQuery(sqlString);

            while (rs.next()) {
                String id = rs.getString("comment_id");
                String name = rs.getString("cus_name");
                String comment = rs.getString("comment");
                String time = "";
                Comment temp = new Comment(id, name, comment, time);
                comments.add(temp);
                int x = comments.size();
            }
            myStatement.close();
            myconnection.close();
        } catch (SQLException ex) {
        }
        return comments;
    }

    public ArrayList<Comment> getLastComments() {
        ArrayList<Comment> comments = new ArrayList<>();
        try {
            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            String sqlString = "SELECT * FROM review WHERE status = 'ACCEPTED' order by comment_id desc";

            Statement myStatement = myconnection.createStatement();
            ResultSet rs = myStatement.executeQuery(sqlString);

            while (rs.next()) {
                String id = rs.getString("comment_id");
                String name = rs.getString("cus_name");
                String comment = rs.getString("comment");
                String time = rs.getString("comment_date");
                Comment temp = new Comment(id, name, comment, time);
                comments.add(temp);
                int x = comments.size();
            }
            myStatement.close();
            myconnection.close();
        } catch (SQLException ex) {
        }
        return comments;
    }

    public void acceptReview(String commentId) {
        try {
            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            String query = "update review set status = ? where comment_id = ?";
            PreparedStatement preparedStmt = myconnection.prepareStatement(query);
            preparedStmt.setString(1, "ACCEPTED");
            preparedStmt.setInt(2, Integer.parseInt(commentId));

            preparedStmt.executeUpdate();

        } catch (Exception e) {
        }

    }

    public void rejectReview(String commentId) {
        try {
            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            String query = "update review set status = ? where comment_id = ?";
            PreparedStatement preparedStmt = myconnection.prepareStatement(query);
            preparedStmt.setString(1, "REJECTED");
            preparedStmt.setInt(2, Integer.parseInt(commentId));

            preparedStmt.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void addComment(String comment, String username) {
        try {
            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            String query = " insert into review (cus_name, comment) values (?, ?)";
            PreparedStatement preparedStmt = myconnection.prepareStatement(query);
            preparedStmt.setString(1, username);
            preparedStmt.setString(2, comment);
            preparedStmt.execute();

            myconnection.close();

        } catch (SQLException ex) {
        }
    }
}
