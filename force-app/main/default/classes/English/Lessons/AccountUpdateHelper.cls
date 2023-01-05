public class AccountUpdateHelper {
    //invocabel method we can call from Process builder or Flows.
    @invocableMethod
    public static void accountWebsiteUpdate(list<id> accIdds) {
        system.debug('inside invocable method');
        //get all accounts from accids
        List<account> listAcc = [Select id,website,name FROM Account WHERE id in : accIdds];
        for (account eachAcc : listAcc) {
            eachAcc.Website = 'www.Sostinnovas.com';
        }
        update listAcc;
    }
}
