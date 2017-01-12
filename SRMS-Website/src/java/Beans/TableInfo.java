
package Beans;
public class TableInfo {
    String id,tableNo,tableType,numOfSeats;

    public TableInfo(String id,String tableNo,String tableType, String numOfSeats) {
        this.id = id;
        this.tableNo = tableNo;
        this.tableType = tableType;
        this.numOfSeats = numOfSeats;
    }

    public String getId() {
        return id;
    }

    public String getTableNo() {
        return tableNo;
    }

    public String getTableType() {
        return tableType;
    }

    public String getNumOfSeats() {
        return numOfSeats;
    }
    
    
}
