public class Loops_assingment {
    public void forLoops(integer n) {

for (integer i = 1; i<n; i++){
    System.debug(i);
}
     

    }
    public void printEven (){
        for (integer i=1; i<100; i+=1){
            integer modI = Math.mod(i, 2);
            if (modI == 0){
                system.debug(i);
            }
        }

    }
}
