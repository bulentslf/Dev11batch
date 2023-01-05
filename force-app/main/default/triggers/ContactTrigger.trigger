trigger ContactTrigger on Contact (before insert, after insert, before update, after update,after delete, after undelete) {
   if (Trigger.isBefore) {
      if (Trigger.isUpdate) {
          system.debug('we are in before update trigger.');
          ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
          ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
      }
  }

// if (trigger.isAfter) {
//    if (trigger.isInsert || trigger.isUpdate || trigger.isUndelete) {
//       ContactTriggerHandler.contactNumbers(trigger.new);
      
//    }
   
// }
   // if (trigger.isAfter&&trigger.isInsert) {
   //    ContactTriggerHandler.otherPhoneOfContact(trigger.new, trigger.newMap);
   // }
//    //I want to print when we are in BEFORE
//    if (Trigger.isBefore) {
//        system.debug('We are in BEFORE. Not Saved');
//        if (Trigger.isInsert) {
//            system.debug('we are in before insert trigger.');
//        } 
//        if (Trigger.isUpdate) {
//            system.debug('we are in before update trigger.');
//        }
//    }
//    if (Trigger.isAfter) {
//        system.debug('We are in AFTER. SBNC.');
//        if (Trigger.isInsert) {
//            system.debug('we are in after insert trigger.');
//        } 
//        if (Trigger.isUpdate) {
//            system.debug('we are in after update trigger.');
//        }
//    }

// if (Trigger.isBefore) {
//     if (Trigger.isUpdate) {
//         system.debug('we are in before update trigger.');
//         ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//         ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//     }
// }
// TR ODEV 21
// if (trigger.isBefore && Trigger.isUpdate) {
//         ContactTriggerHandler.updateDescription(trigger.new, trigger.old,trigger.newMap, trigger.oldMap);
// }
//Yeni bir Contact mevcut bir Accounta bağlı olarak oluşturulduğunda Contact other phone bağlı olduğu Account phone olsun.
// if (trigger.isBefore && trigger.isInsert) {
//    ContactTriggerHandler11.otherPhoneOfContact2(trigger.new, trigger.newMap);
// }
/*if (trigger.isAfter && trigger.isInsert) {
   ContactTriggerHandler11.otherPhoneOfContact(trigger.new, trigger.newMap);
}*/

}


