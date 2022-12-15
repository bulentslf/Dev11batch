  // •	Create a trigger on Salesforce_Project__c
trigger SalesforceProjecttriger on Salesforce_Project__c (before update,before insert,after insert,after update) {
      // •	Use the Trigger.New on insert and set the name of Project as ‘New Trigger Project’ before insert. Use system.debug to display the project name.
      if (trigger.isBefore && trigger.isInsert) {
         for (Salesforce_Project__c item : trigger.new) {
               item.Project_Name__c = 'New Trigger Project';
               System.debug('The name of the project is ' + item.Project_Name__c);
         }
      }
   // •	Use Trigger.newMap and Trigger.newMap on update. Use for loop on the map variable and use system.debug to display the project name before update and project name after update.
   if (trigger.isAfter && trigger.isUpdate) {
      map<id,Salesforce_Project__c> oldMap = trigger.oldMap;
      map<id,Salesforce_Project__c> newMap = trigger.newMap;

      set<id> sfId = newMap.keyset();

      for (id item : sfId) {
         Salesforce_Project__c slfold = oldMap.get(item);
         system.debug('The project name after update ==> ' + slfold.Project_Name__c);

         Salesforce_Project__c slfNew = newMap.get(item);
         system.debug('The project name before update ==>' + slfNew.Project_Name__c);
         
      }
     
   }
   
}