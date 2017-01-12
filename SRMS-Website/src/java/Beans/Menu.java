
package Beans;

import DB.DBConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Menu {
    ArrayList<MenuItem> itemArray = new ArrayList<>();
    
    public void setMenu(){
        try{
            DBConnection dbconn=new DBConnection();
            Connection myconnection= dbconn.connection();
            
            String query = "SELECT * FROM menu_item";
            Statement st = myconnection.createStatement();
            ResultSet rs = st.executeQuery(query);
            
            while (rs.next())
            {
              String itemId = rs.getString("item_id");
              String itemType = rs.getString("item_type");
              String itemName = rs.getString("item_name");
              String itemDescription = rs.getString("description");
              String itemPrice = rs.getString("price");
              String itemSpiciness = rs.getString("spiciness");
              String imagePath=rs.getString("image_path");
              
              MenuItem item = new MenuItem(itemId,itemType,itemName,itemDescription,itemPrice,itemSpiciness,imagePath);
              itemArray.add(item);
              
            }
            st.close();
        }
        catch(SQLException ex) 
        {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }  
    }
    public ArrayList<MenuItem> getMenu(){
        return itemArray;
    }
    public ArrayList<MenuItem> searchMenu(String search){
        ArrayList<MenuItem> tempArray = new ArrayList<MenuItem>();
        setMenu();
        for(int i = 0; i<itemArray.size(); i++){
            MenuItem temp = itemArray.get(i);
            if(temp.getItemName().toLowerCase().contains(search.toLowerCase())){
                tempArray.add(temp);
            }
            else if(temp.getItemType().toLowerCase().contains(search.toLowerCase())){
                tempArray.add(temp);
            }
        }
        return tempArray;
    }
}
