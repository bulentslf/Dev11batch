@isTest
public class AccountTriggerHandlerTest {
    @isTest
   private static void testUpdateDescription() {
        Account acc1 = new account();
        acc1.name = 'SI Test';
        acc1.Industry = 'Energy';
        acc1.Active__c = 'No';

        Account acc2 = new account();
        acc2.name = 'UI Test';
        acc2.Industry = 'Energy';
        acc2.Active__c = 'Yes';

        Account acc3 = new account();
        acc3.name = 'PI Test';
        acc3.Industry = 'Banking';
        acc3.Active__c = 'No';

        List<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        //verify if description for acc2 is updated. 
        //How to do that?
        //soql to get latest data.
        list<account> insertYesList = [select name, active__c, description from account where active__c = 'Yes'];
        system.assertEquals('Account is now active. Enjoy buddy!!', insertYesList[0].Description);


        for (account eachAcc : listAcc) {
            eachAcc.Active__c = 'Yes';
        }
        update listAcc;

        list<account> updateYesList = [select name, active__c, description from account where active__c = 'Yes'];
        system.assertEquals('Account is now active. Enjoy buddy!!', insertYesList[0].Description);
   }
}