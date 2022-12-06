public  class DML_Assign {
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
}