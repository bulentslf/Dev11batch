public class Calculator {
    public void welcomeMessage() {
        System.debug('welcome to apex calc');

        }
        public void printNewMessage(string msg){
            System.debug(msg);
        }
        public string printAndReturnMessage(string msg){
            string returnString = msg + ' ...OK cool.';
            return returnString;
        }
        public Integer add(Integer a, Integer b){
            Integer sum= a + b;
            return sum;
        }
        public Integer add(Integer x, integer y, integer z){
            integer sum = x + y + z;
            return sum;
        }
        public boolean leapYearCheck(date dt) {
            integer year = dt.year();
            boolean lp = date.isLeapYear(year);
            return lp;

        }
        
        
}
