public class DecList {
public static void PozNegList(list<decimal> x) {
    list<decimal> poz = new list<Decimal>();
    list<decimal> neg = new list<decimal>();
    
    for (decimal pozNum : x) {
        if (pozNum>0) {
            poz.add(pozNum);
            
        }else if(pozNum <=-1) {
            neg.add(pozNum);
                      
        } else {
            System.debug('it is not a negative or pozitive number');
        }
        
    }
    System.debug('these are pozitive numbers' + poz);
    System.debug('these are negative numbers' + neg);
}

}
