public with sharing class AccountHandler_assg {
  
    public static void createcontact (list<Account> newlist, List<Account> oldlist, map<id,account> newMap, Map<Id,Account> oldMap) {
        list<contact> listOfcontact = new List<contact>();
            for (account eachAcc : newList) {
                contact cnt = new contact();
                cnt.lastName = eachAcc.Name;
                cnt.AccountId = eachAcc.id;
                listOfcontact.add(cnt);
                
            }
            insert listOfcontact;
// Comment existing code in the Account trigger and write new code according to requirement given below.
// Create a handler class for AccountHandler_assg which should be called only after insert.
//Create a method createcontact which accept input as 
// LIST<Account>, LIST< Account >,MAP<ID, Account >,MAP<ID, Account >
//For every account record created we need to create a contact record with the respective account.id
//Insert contact.

  }
 
}
