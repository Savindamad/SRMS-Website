
package Other;

import Beans.TableInfo;
import java.util.ArrayList;

public class TableCombination {
    public ArrayList<CombinationInfo> getCombination(ArrayList<TableInfo> availableTables, String numSeats){
        ArrayList<CombinationInfo> combinations = new ArrayList<CombinationInfo>();
        
        for(int i=0; i<availableTables.size(); i++){
            if(availableTables.get(i).getNumOfSeats().equals(numSeats)){
                CombinationInfo temp = new CombinationInfo(availableTables.get(i).getTableNo(), availableTables.get(i).getNumOfSeats());
                combinations.add(temp);
                return combinations;
            }
        }
        
        return combinations;
    }
}
