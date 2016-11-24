package Beans;

public class MenuItem {
    String itemId;
    String itemType;
    String itemName;
    String itemDescription;
    String itemPrice;
    String itemSpiciness;
    String itemImagePath;
    
    public MenuItem(String itemId,String itemType,String itemName,String itemDescription,String itemPrice,String itemSpiciness,String itemImagePath){
        this.itemId=itemId;
        this.itemType=itemType;
        this.itemName=itemName;
        this.itemDescription=itemDescription;
        this.itemPrice=itemPrice;
        this.itemSpiciness=itemSpiciness;
        this.itemImagePath=itemImagePath;
    }
    public String getItemDescription(){
        return itemDescription;
    }

    public String getItemId() {
        return itemId;
    }

    public String getItemType() {
        return itemType;
    }

    public String getItemName() {
        return itemName;
    }

    public String getItemPrice() {
        return itemPrice;
    }

    public String getItemSpiciness() {
        return itemSpiciness;
    }

    public String getItemImagePath() {
        return itemImagePath;
    }
    
}
