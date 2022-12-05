public  class SoqlAssig01December {
public static void listOfContact() {
    list<contact> lstcontact = [select Id , Name , account.Id, account.name from contact];
        system.debug(lstcontact);
          for (contact eachCont : lstcontact){
            system.debug('Id ' + eachCont.Account.Id + ' Name ' + eachCont.Account.Name);
        

        }
    }
    public static void ListOfAccount() {
        List<account> lstAcount = [select (SELECT Id, name FROM Contacts ) FROM account];
        system.debug(lstAcount);
        for (account EachAcc : lstAcount) {
            system.debug('Id ' + EachAcc.Contacts.Id + ' Name ' + EachAcc.Contacts.Name)
            
        }
    }
}
