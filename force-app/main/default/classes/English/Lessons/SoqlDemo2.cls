public class SoqlDemo2 {
    public static void soqlchildToParent_1(){
        list<contact> listCnts = [Select id,name, Account.Name, Account.Industry FROM Contact WHERE Account.Industry = 'Energy'];

for (contact eachContact : listCnts){
    String accName = eachContact.Account.Name;
        system.debug('Contact name is ' + eachContact.Name + ' its acc is ' + accName);

}
}
public static void soqParentToChild_1(){
    list<account> listAccOpp = [select id, name, annualrevenue,type, (select name, amount from opportunities where stageName = 'Closed Won' )from account where type= 'Customer - Direct'];

    for (account eachAcc : listAccOpp){
        System.debug('Acc name is ' + eachAcc.Name + ', annual revenue = ' + eachAcc.AnnualRevenue);
        list<opportunity> listOpp = eachAcc.Opportunities;
        for(opportunity eachOpp : listOpp){
            system.debug('--opp name => ' + eachOpp.Name + ', amount is ' + eachOpp.Amount);
        }
    }
}
}
