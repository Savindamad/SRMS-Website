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

public class ReserveTable {

    public ArrayList<TableInfo> AvailableTables(String time, String date, String type,String seats) {
        ArrayList<TableInfo> tables = new ArrayList<TableInfo>();
        ArrayList<TableInfo> tablesNew = new ArrayList<TableInfo>();
        tables = GetAvailableTables(time, date, type);
        for(int i = 0; i<tables.size(); i++){
            if(tables.get(i).equals(seats)){
                tablesNew.add(tables.get(i));
            }
        }
        return tablesNew;
    }

    public ArrayList<TableInfo> GetAvailableTables(String time, String date, String type) {
        ArrayList<TableInfo> tables = new ArrayList<TableInfo>();
        try {

            DBConnection dbconn = new DBConnection();
            Connection myconnection = dbconn.connection();

            PreparedStatement ps2 = myconnection.prepareStatement("SELECT * FROM dining_table WHERE table_type=?");
            ps2.setString(1, type);
            ResultSet rs2 = ps2.executeQuery();
            while (rs2.next()) {
                TableInfo temp = new TableInfo(rs2.getString("id"), rs2.getString("table_no"), rs2.getString("table_type"), rs2.getString("num_of_seats"));
                tables.add(temp);
            }

            PreparedStatement ps = myconnection.prepareStatement("SELECT * FROM reservation WHERE date=? and meal_time=?");
            ps.setString(1, date);
            ps.setString(2, time);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String resId = rs.getString("res_id");

                PreparedStatement ps1 = myconnection.prepareStatement("SELECT * FROM reservation_table WHERE res_id=?");
                ps1.setString(1, resId);
                ResultSet rs1 = ps1.executeQuery();

                String tableId = rs1.getString("table_id");
                for(int i = 0; i<tables.size(); i++){
                    if(tables.get(i).getId().equals(tableId)){
                        tables.remove(i);
                        break;
                    }
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }

        return tables;
    }
}
