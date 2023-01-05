public  class AccountSchedule implements Schedulable {
    public void execute(SchedulableContext sc){
        //we will execute batch
        // any apex code.
        //any method of any calss ca be called

        database.executeBatch(new AccountsBatch());
    }
}
