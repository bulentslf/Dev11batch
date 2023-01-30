@isTest
public class SalesforceProjectTriggerHandlerTest {
@TestSetup
static void makeData(){
   list<salesforce_project__c> listSp = new list<salesforce_project__c> ();
   
    salesforce_project__c sfl1 = new salesforce_project__c();
    sfl1.Project_Name__c = 'Test-1';
    listSp.add(sfl1);    
    salesforce_project__c sfl2 = new salesforce_project__c();
    sfl2.Project_Name__c = 'Test-2';
    listSp.add(sfl2); 
    salesforce_project__c sfl3 = new salesforce_project__c();
    sfl3.Project_Name__c = 'Test-3';
    listSp.add(sfl3);    
    insert listSp;

   

}

    @isTest
    private static void createDefaultTicketTest() {
        List<salesforce_Ticket__c> listSp = [Select id FROM salesforce_Ticket__c ];
        System.assertEquals(3, listSp.size());
    }

}

