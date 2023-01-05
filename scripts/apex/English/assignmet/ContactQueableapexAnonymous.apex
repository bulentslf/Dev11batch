List<Account> accList = [select id,name from account where active__c ='Yes'];
ContactQueableapex ob = new ContactQueableapex(accList);
System.enqueueJob(ob);