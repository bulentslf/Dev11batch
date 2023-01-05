@isTest // class becomes test class
public class Calculator2Test {
    @isTest // method becomes test method
    public static void testMasage() {
        // we want to test our calculator class's methods.
        Calculator2.welcomeMessage();
        //can we call parameterized methods from test class?
        Calculator2.printNewMessage('This is from test method' );
        
    }
    @isTest
    private static void addTest1() {
        Integer i = 10;
        Integer j = 15;
        Integer sum1 = Calculator2.add(i, j);
        system.assertEquals(25, sum1);
    }
    @isTest
    private static void addTest2() {
       
        Integer sum1 = Calculator2.add(10, 15,25);
        system.assertEquals(50, sum1);
    }

}
