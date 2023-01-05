@isTest
public class IfAndForLoop11Test {
 //return bir değeri return etmeyen veya bir şey üretmeyen metodlarda test sadece o metodu istenen parametrelerde çağırarak yapılır....
 @isTest
 private static void ifNumbersTest () {
     IfAndForLoop11.ifNumbers(9,7);
     IfAndForLoop11.ifNumbers(7,9);
     IfAndForLoop11.ifNumbers(7,7);
 }
 @isTest
 private static void ifBreadTest() {
    IfAndForLoop11.ifBread('simit',3);
    IfAndForLoop11.ifBread('ekmek',3);
    IfAndForLoop11.ifBread('kek',3);

 }
 private static void forLoopSumNumbersTest() {
    integer toplm = IfAndForLoop11.forLoopSumNumbers(5);
    
    system.assertEquals(15, toplm);
    integer tplm2 = IfAndForLoop11.forLoopSumNumbers(-5);
    system.assertEquals(null, tplm2);
    
 }
}