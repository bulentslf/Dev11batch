account ac1 = new account();
ac1.Name ='Abc Test';
ac1.Industry ='Energy';

account ac2 = new account();
ac2.Name ='xyz test';

account ac3 = new account();
account ac4 = new account();

list<account> listAcc = new list<account>{ac1,ac2,ac3,ac4};
list<database.SaveResult> results = Database.insert(listAcc, false);

for (database.SaveResult r : results) {
   if(r.isSuccess()){
      system.debug('inserted succesfully, record id is ' + r.getId());
   }else {
      system.debug('error out. errors are ' + r.getErrors());
   }
}