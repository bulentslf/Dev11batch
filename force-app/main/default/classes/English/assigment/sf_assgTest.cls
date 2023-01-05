@isTest
public  class sf_assgTest {
    @isTest
    private static void test1() {
        sf_assg.insertsf();
        list<Salesforce_Project__c> listProject = [select id,Project_Name__c from Salesforce_Project__c where Project_Name__c = 'Phone23'];
        System.assertEquals(10, listProject.size());
    }
    @isTest
    private static void test2() {
        Salesforce_Project__c ob = new Salesforce_Project__c();
        ob.Project_Name__c = 'Phone 123';
        insert ob;
        sf_assg.updatesf();
        List<Salesforce_Project__c> listProject = [select id,Project_Name__c from Salesforce_Project__c limit 1];
        System.assertEquals('Phone2', listProject[0].Project_Name__c);
        System.assertEquals(1, listProject.size());
    }
}