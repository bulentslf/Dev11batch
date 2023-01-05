public class ContactQueableapex implements Queueable{
    public List<Account> acList;
    public ContactQueableapex(List<Account> accountList) {
        aclist = accountList;
    }
    public void execute(QueueableContext qc){
        List<Contact> conList = new List<Contact>();
        for (account acc : acList) {
            contact con = new contact(lastname = 'contact ' + acc.name , AccountId = acc.id);
            conList.add(con);
        }
        if (!conList.isEmpty()) {
            insert conlist;
        }
    }
}