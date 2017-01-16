package Other;

import java.util.ArrayList;

public class CombineTable {
    String table1;
    String table2;
    String numSeatstable1;
    String numSeatstable2;
    

    public CombineTable(String table1, String table2 ,String numSeatstable1, String numSeatstable2) {
        this.table1 = table1;
        this.table2 = table2;
        this.numSeatstable1 = numSeatstable1;
        this.numSeatstable1 = numSeatstable1;
    }

    public String getTable1() {
        return table1;
    }

    public String getTable2() {
        return table2;
    }

    public String getNumSeatstable1() {
        return numSeatstable1;
    }

    public String getNumSeatstable2() {
        return numSeatstable2;
    }
    
        
    public boolean equalCombination(CombineTable obj1,CombineTable obj2){
        if(obj1.getNumSeatstable1().equals(obj2.getNumSeatstable1()) && obj1.getNumSeatstable2().equals(obj2.getNumSeatstable2())){
            return true;
        }
        else if(obj1.getNumSeatstable1().equals(obj2.getNumSeatstable2()) && obj1.getNumSeatstable2().equals(obj2.getNumSeatstable1())){
            return true;
        }
        else{
            return false;
        }
    }
    
    public boolean checkEqualObj(ArrayList<CombineTable> array, CombineTable obj){
        for(int i = 0; i<array.size(); i++){
            if(equalCombination(array.get(i), obj)){
                return true;
            }
        }
        return false;
    }
    public int addTable(){
        return (Integer.parseInt(numSeatstable1)+Integer.parseInt(numSeatstable2));
    }
}
