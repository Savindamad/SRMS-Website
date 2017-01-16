package Other;

import Beans.TableInfo;
import java.util.ArrayList;

public class TableCombination {

    public ArrayList<CombinationInfo> getCombination(ArrayList<TableInfo> availableTables, String numSeats) {
        ArrayList<CombinationInfo> combinations = new ArrayList<CombinationInfo>();
        int numOfSeats = Integer.parseInt(numSeats);

        for (int i = 0; i < availableTables.size(); i++) {
            if (availableTables.get(i).getNumOfSeats().equals(numSeats)) {
                CombinationInfo temp = new CombinationInfo(availableTables.get(i).getTableNo(), availableTables.get(i).getNumOfSeats());
                combinations.add(temp);
                return combinations;
            }

        }
        ArrayList<CombineTable> array = new ArrayList<CombineTable>();
        for (int i = 0; i < availableTables.size(); i++) {
            for (int j = 0; j < availableTables.size(); j++) {
                if(i!=j){
                    TableInfo tableTemp_i = availableTables.get(i);
                    TableInfo tableTemp_j = availableTables.get(j);
                    CombineTable temp1 = new CombineTable(tableTemp_i.getTableNo(),tableTemp_j.getTableNo(),tableTemp_i.getNumOfSeats(),tableTemp_j.getNumOfSeats());
                    if(!temp1.checkEqualObj(array, temp1)){
                        array.add(temp1);
                    }
                }
            }
        }
        
        for(int i = 0; i<array.size(); i++){
            if(array.get(i).addTable()-numOfSeats<4){
                CombinationInfo temp2 = new CombinationInfo(array.get(i).getTable1()+" + "+array.get(i).getTable2(), array.get(i).getNumSeatstable1()+" + "+array.get(i).getNumSeatstable2());
                combinations.add(temp2);
            }
        }
        return combinations;
    }
}
