public with sharing class DmlDemo {
        public static void dmlInsertDemo_stndObj(){
            // create a new account record using apex
            Account acc = new account();
            acc.Name = 'SoftInnovas';
            system.debug('Not inserted' + acc);
            insert acc;
            system.debug('INSERTED' + acc);
        }
        public static void dmlInsertDemo_cstmObj(){
           Salesforce_project__c spNew = new Salesforce_project__c();
           spNew.project_name__c = 'Teach DML to batch 11';
           spNew.description__c = 'Everybody is doing great. Keep it up.';

           insert spNew;
       }
       public static void dmlUpdateDemo_1(){
        Account acc = new account();
        acc.Name ='SoftInnovas';
        insert acc;
        acc.Name = 'Salesforce Inc.';
        update acc;
        system.debug(acc);
       }
}
