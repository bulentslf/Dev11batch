public class Calculator3 {
public static integer add(list<integer> listInt) {
    integer returnInt = 0;
    for (integer eachInt : listInt) {
        system.debug('each => ' + eachInt);
        returnInt += eachInt;
        system.debug('each => ' + returnInt);
        
    }
  return returnInt;
} 
}
