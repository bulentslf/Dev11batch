@isTest
public class ContactQueableapexTest {
    @TestSetup
    static void makeData(){
        List<Account> accList = new List<Account>();
        for (Integer i = 0; i < 200; i++) {
            account ac = new account(name = 'Account ' + i, active__c = 'Yes');
            accList.add(ac);
        }
        insert accList;
    }
    @isTest
    private static void test1() {
        List<Account> acList = [select id,name,active__c from account where active__c = 'Yes'];
        Test.startTest();
        ContactQueableapex ob = new ContactQueableapex(acList);
        System.enqueueJob(ob);
        Test.stopTest();
        System.assertEquals(200,acList.size());
        List<Account> accountList = [select id,name,active__c,(select id,lastname from contacts where lastname like '%contact%') from account];
        System.assertEquals(1,accountList[0].contacts.size());
    }
}

