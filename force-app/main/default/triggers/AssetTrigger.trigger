   // •	Create an Apex trigger for Asset object. // o	The trigger should work on before insert and before update
trigger AssetTrigger on Asset (before insert, before update) {

   if (trigger.isbefore && trigger.isInsert) {
      AssetTriggerHandler.Assethandlerupdate(Trigger.new,trigger.old, trigger.newMap,trigger.oldMap );
      
   }
   if (trigger.isBefore && trigger.isUpdate) {
      AssetTriggerHandler.Assethandlerupdate(Trigger.new,trigger.old, trigger.newMap,trigger.oldMap );
   }

   // o	The trigger should work on before insert and before update
   // o	On both the cases it should call a handler class by passing trigger.new, trigger.old,trigger.newmap,trigger.oldmap.
   // •	Create an apex Assethandler class
   // o	Create a static method Assethandlerupdate which returns nothing and accepts 
   // 
   // •	If status of the field while inserting or updating is equal to Shipped then the Description should be ‘Asset is shipped’
   // •	If status of the field while inserting or updating  is equal to Installed then the Description should be ‘Asset is Installed’
   // •	By any chance if we try to just update without modifying the status field it should not change the description.
   
}