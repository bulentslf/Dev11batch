public class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
             Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {
 
                 //validation
    //              for (contact eachContact : conTriggerNew) {
    //                  Contact oldContact = conTriggerOldMap.get(eachContact.id);
    //                  if (oldContact.LeadSource == 'Partner Referral') {
    //                      eachContact.addError('Cannot update Partner Referral contact');
    //                  }
    //              }
    // }
    // public static void contactUpdateValidation2(List<contact> conTriggerNew, List<contact> conTriggerOld,
    //          Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {
 
    //              for (contact eachContact : conTriggerNew) {
    //                  contact oldContact = conTriggerOldMap.get(eachContact.id);
    //                  if (eachContact.LeadSource != oldContact.LeadSource) {
    //                      eachContact.LeadSource.addError('Cannot update lead source. Please user!');
    //                  }
    //              }
    //  }>
        // TR ÖDEV
     // Contact lastName her değiştirildiğinde, Contact Trigger Contact ın description fieldına aşağıdaki mesajı yazdırsın.
    //  Mesaj : lastName değiştirildi - [OldLastName], [NewLastName] olarak değiştirildi. (edited) 
     }
        public static void updateDescription(List<contact> newlist, List<contact> oldlist, Map<id, contact> NewMap, Map<id, contact> OldMap) {
            for (contact item : newList) {
                if (item.lastname != oldMap.get(item.id).lastname) {
                    item.description = 'lastName değiştirildi ' + oldMap.get(item.id).lastname + ' yeni last name '  + item.lastname +  ' olarak değiştirildi';

               
                }
                
            }

        }

   
}