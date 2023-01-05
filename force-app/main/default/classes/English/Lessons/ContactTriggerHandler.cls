public class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
    Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {

        //validation
        for (contact eachContact : conTriggerNew) {
            Contact oldContact = conTriggerOldMap.get(eachContact.id);
            if (oldContact.LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update Partner Referral contact');
            }
        }
}
public static void contactUpdateValidation2(List<contact> conTriggerNew, List<contact> conTriggerOld,
    Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {

        for (contact eachContact : conTriggerNew) {
            contact oldContact = conTriggerOldMap.get(eachContact.id);
            if (eachContact.LeadSource != oldContact.LeadSource) {
                string customError = system.label.ContactValidation2;
                eachContact.LeadSource.addError(customError);
            }
        }
}
    // public static void contactNumbers(list<contact> newList) {
    //     set<id> accIds = new set<id> ();
    //     for (contact item : newList) {
    //         accIds.add(item.Account.Id);
            
    //     }
    //     ContactTriggerHandler.contactNumbers(accIds);
    // } 
    // @future
    // private static void contactNumbers(set<id> accIds) {
    //     list<account> listofAcc = [Select id, name,Number_Of_Contacts__c, (SELECT  id,lastname FROM contacts ) FROM Account WHERE id in :accIds];
    //     for (account acc : listofAcc) {
    //         acc.Number_Of_Contacts__c = acc.contacts.size();
    //     }
    //     update listofAcc;
        
    // }
 
    //*turkish revision 21/12/2022=========================
   /* public static void otherPhoneOfContact(List<Contact> trgNew, Map<Id,Contact> trgNewMap) {
        //insert edilen tum contactlardan accounta bagli olanlari secelim..
        set<id> conIds = new set<id>();
        for (contact con : trgNew) {
            if (con.AccountId != null) {
                conIds.add(con.id);
            }
        }
        //Accounta bagli olan tum Contactlari accountun(parent) phone ile beraber SOQL yapiyoruz..
        List<Contact> conList = [select id, otherPhone, account.phone from Contact where id IN :conIds];

        //Bu listeyi bir for each dongusunun icine alip otherPhone guncellemesini yapalim..
        for (Contact cn : conList) {
            cn.OtherPhone = cn.account.phone;
        }
        update conList;
   }
   public static void otherPhoneOfContact2(List<Contact> triggerNew, Map<Id, Contact> triggerNewMap) {
    //Account idlerin key oldugu ilgili accountun recordunun da value oldugu bir map olusturup. contactlarin bagli oldugu accountlarin recordlarini burada toplarim..
    Map<Id, Account> AccMap = new Map<Id, Account>();
    set<id> accIds = new Set<id>();
    List<Contact> conList = new List<Contact>();
    for (contact con : triggerNew) {
        if (con.AccountId != null) {
            accIds.add(con.AccountId);
            //accounta bagli contactlari bir listeye koyduk
            conList.add(con);
        }
    }
    //SOQL ile bu accountlarin recordlarini getirelim..
    List<Account> accList = [select id, name, phone from account where id IN :accIds];

    //Mapi dolduruyoruz..
    for (account acc : accList) {
        AccMap.put(acc.id, acc);
    }

    //Accounta bagli olan create edilmis contaclari for dongusune alip otherPhone guncelliyoruz..
    for (contact con : conList) {
        con.OtherPhone = AccMap.get(con.accountId).phone;
    }
    
    

   }*/
//*========================

    // public static void contactUpdateValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
    //          Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {
 
    //              validation
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
        //* TR ÖDEV
     // Contact lastName her değiştirildiğinde, Contact Trigger Contact ın description fieldına aşağıdaki mesajı yazdırsın.
    //  Mesaj : lastName değiştirildi - [OldLastName], [NewLastName] olarak değiştirildi. (edited) 
    //  }
    //     public static void updateDescription(List<contact> newList, List<contact> oldlist, Map<id, contact> NewMap, Map<id, contact> OldMap) {
    //         for (contact item : newList) {
    //             if (item.lastname != oldMap.get(item.id).lastname) {
    //                 item.description = 'lastName değiştirildi ' + oldMap.get(item.id).lastname + ' yeni last name '  + item.lastname +  ' olarak değiştirildi';

               
    //             }
                
    //         }

    //     }

   
}