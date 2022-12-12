

public class DML2_Assgn {
    public static void insert_dml() {
        account acc = new account();
        acc.Name = 'Bulent';
        acc.AnnualRevenue = 100;
        acc.Description = 'Good, good, good';
        insert acc;
        account acc1 = new account();
        acc1.Name = 'Levent';
        acc1.AnnualRevenue = 200;
        acc1.Description = 'Perfect, Perfect';
        insert acc1;
   
    }
public static void updating_dml() {
        account acc = new account();
        acc.Name ='Account Created';
        insert acc;
        System.debug(acc);
        acc.Name ='Account Updated';
        update acc;
        System.debug(acc);
}
// Create a method createBulkContacts
public static void createBulkContacts() {
    list<contact> listCnt = new  list<contact>();
// The method creates 5 contacts by name given below.
    contact cnt1 = new Contact();
    cnt1.firstName= 'Mark';
    cnt1.lastName='Ruffalo';
    listCnt.add(cnt1);

    contact cnt2 = new Contact();
    cnt2.firstName= 'Mark';
    cnt2.lastName='Ruffalo';
    listCnt.add(cnt2);

    contact cnt3 = new Contact();
    cnt3.firstName= 'Chris';
    cnt3.lastName='Hemsworth';
    listCnt.add(cnt3);

    contact cnt4 = new Contact();
    cnt4.firstName= 'Scarlett';
    cnt4.lastName='Johansson';
    listCnt.add(cnt4);

    contact cnt5 = new Contact();
    cnt5.firstName= 'Scarlett';
    cnt5.lastName='Johansson';
    listCnt.add(cnt5);
    insert listCnt;
}
// oCreate a method searchForContacts
// The method must accept one incoming string as parameter.
// The method should then find any contact that has a last name matching the string that is received as parameter.
// The method should finally return a list of Contact records of type List that includes the ID and Name fields.
 public static list<contact> searchForContacts(string lstNm){
    list<contact> lstNameCont = [select id,firstName,lastName FROM Contact WHERE lastName =: lstNm];
    system.debug('The matching last name = ' + lstNameCont );
    return lstNameCont;
 }
}

