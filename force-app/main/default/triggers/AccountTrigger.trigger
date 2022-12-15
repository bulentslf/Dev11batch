trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    if (Trigger.isBefore) {
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }


   
    // if (trigger.isAfter && trigger.isUpdate) {
    //     system.debug('after update trigger');

    //     map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    //     map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
    //     set<id> accountIds = accTriggerNewMap.keySet(); //all the IDS.
    //     integer countWebsite = 0;

    //     for (Id eachId : accountIds) {
    //         //get NEW account value from NewMap - id is same in newmap and oldmap
    //         account newAcc = accTriggerNewMap.get(eachId);
    //         string newWebsite = newAcc.Website;
    //         system.debug('** newWebsite -> ' + newWebsite);
    //         //get OLD account value from OldMap
    //         account oldAcc = accTriggerOldMap.get(eachId);
    //         string oldWebsite = oldAcc.Website;
    //         system.debug('** oldWebsite -> ' + oldWebsite);

    //         if (newWebsite != oldWebsite) {
    //             system.debug('Account is ' + newAcc.Name + ', website changed to ' + newwebsite);
    //             countwebsite++;
    //         }
           
    //     }
    //     system.debug('website updated for # of accounts => ' + countwebsite);
    // }

   
    // List<account> accTriggerOld = trigger.old; //list of old records
    // List<account> accTriggerNew = trigger.new; //list of new records
    // map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    // map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key

    // if (Trigger.isAfter && Trigger.isUpdate) {

    //     //old account name and new account name using ONE for loop.
        
    //     //get set of id using map.
    //     set<id> accountIds = accTriggerNewMap.keySet();
    //     for (Id eachId : accountIds) {
    //         //get NEW account value from NewMap - id is same in newmap and oldmap
    //         account newAcc = accTriggerNewMap.get(eachId);
    //         system.debug('NEW Acc Name is ' +  newacc.Name);
    //         //get OLD account value from OldMap
    //         account oldAcc = accTriggerOldMap.get(eachId);
    //         system.debug('Old Acc Name is ' +  oldacc.Name);
    //     }
    // }
    // //what elements we have in these maps.
    // if (Trigger.isBefore && Trigger.isInsert) {
    //     system.debug('before insert old => ' + accTriggerOld);
    //     system.debug('before insert new => ' + accTriggernew);
    //     system.debug('before insert old map => ' + accTriggerOldMap);
    //     system.debug('before insert new map => ' + accTriggernewMap);
    // }
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     system.debug('after insert old => ' + accTriggerOld);
    //     system.debug('after insert new => ' + accTriggernew);
    //     system.debug('after insert old map => ' + accTriggerOldMap);
    //     system.debug('after insert new map => ' + accTriggernewMap);
    // }

    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     system.debug('before update old => ' + accTriggerOld);
    //     system.debug('before update new => ' + accTriggernew);
    //     system.debug('before Update old map => ' + accTriggerOldMap);
    //     system.debug('before Update new map => ' + accTriggernewMap);
    // }
    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     system.debug('after update old => ' + accTriggerOld);
    //     system.debug('after update new => ' + accTriggernew);
    //     system.debug('after Update old map => ' + accTriggerOldMap);
    //     system.debug('after Update new map => ' + accTriggernewMap);
    // }

    // if (trigger.isAfter) {
    //     List<account> accTriggerNew = trigger.New;//New (updated) values of records

    //     set<id> setIds = new set<id>();//add all IDS of accounts which are inserted/updated
    //     for (account newAcc : accTriggerNew) {
    //         Id accId = newAcc.id;
    //         setids.add(accId);//adding ID to newly created set.
    //     }
    //     system.debug(setids);
    // }
    // if (trigger.isBefore && trigger.isUpdate) {
    //     List<account> accTriggerOld = trigger.old;//OLD (previous) values of records
    //     for (account oldAcc : accTriggerOld) {
    //         system.debug('old acc name = ' + oldAcc.Name + ', old acc id => ' + oldAcc.Id);
    //     }

    //     List<account> accTriggerNew = trigger.New;//New (updated) values of records
    //     for (account newAcc : accTriggerNew) {
    //         system.debug('new acc name = ' + newAcc.Name + ', new acc id => ' + newAcc.Id);
    //     }
    // }
    // if (trigger.isBefore && trigger.isInsert) {
//     system.debug('account before insert trigger.old ==>' + trigger.old);
// }
// if (trigger.isafter && trigger.isInsert) {
//     system.debug('account after insert trigger.old ==>' + trigger.old);
// }


//     System.debug('======Trigger Tetiklendi..=========');
//     /*System.debug('Trigger isBefore => ' + trigger.isBefore);
//     System.debug('Trigger isAfter => ' + trigger.isAfter);
//     System.debug('Trigger isInsert => ' + trigger.isInsert);
//     System.debug('Trigger isUpdate => ' + trigger.isUpdate);*/
//     if(trigger.isBefore && trigger.isInsert){
//         System.debug('Before Insert Trigger Calisti');
//         system.debug('Trigger New => ' + trigger.new);
//         List<Account> triggerNew = trigger.new;
//         for(account acc : triggerNew){
//             System.debug('Name = ' + acc.name);
//             System.debug('Id = ' + acc.Id);
//         }
//     }
//     if(trigger.isAfter && trigger.isInsert){
//         System.debug('After Insert Trigger Calisti');
//         system.debug('Trigger New => ' + trigger.new);
//         for(account acc : trigger.new){
//             System.debug('Name = ' + acc.name);
//             System.debug('Id = ' + acc.Id);
//         }
//     }
//     if(trigger.isBefore && trigger.isUpdate){
//         System.debug('Before Update Trigger Calisti');
//         system.debug('Trigger New => ' + trigger.new);
//         for(account acc : trigger.new){
//             System.debug('Name = ' + acc.name);
//             System.debug('Id = ' + acc.Id);
//         }
//     }
//     if(trigger.isAfter && trigger.isUpdate){
//         System.debug('After Update Trigger Calisti');
//         system.debug('Trigger New => ' + trigger.new);for(account acc : trigger.new){
//             System.debug('Name = ' + acc.name);
//             System.debug('Id = ' + acc.Id);
//         }
//     }
//     System.debug('======Trigger Bitti..=========');
// }

// trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    
//     list<account> accTriggerNew = trigger.new;
//     if (Trigger.isBefore && Trigger.isUpdate) {
//         system.debug('BEFORE UPDATE new record ==> '  + accTriggerNew);
//         system.debug('BEFORE UPDATE  new accounts size ==> ' + accTriggerNew.size());

//         for (account eachAcc : accTriggerNew) {
//             system.debug('BEFORE UPDATE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
//         }
//     }
//     if (Trigger.isAfter && Trigger.isUpdate) {
//         system.debug('AFTER newly UPDATE record ==> '  + accTriggerNew);
//         system.debug('AFTER newly UPDATE accounts size ==> ' + accTriggerNew.size());

//         for (account eachAcc : accTriggerNew) {
//             system.debug('AFTER UPDATE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
//         }
//     }



   /*if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('BEFORE INSERT new record ==> '  + accTriggerNew);
        system.debug('BEFORE INSERT  new accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            system.debug('BEFORE each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('AFTER newly inserted record ==> '  + accTriggerNew);
        system.debug('AFTER newly inserted accounts size ==> ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            system.debug('AFTER each acc id is ' + eachAcc.Id + ', each acc name is ' + eachacc.Name);
        }
    }*/


    /*
    //insert
    if (trigger.isInsert && trigger.isAfter) {
        system.debug('account after insert trigger called');
    }

    if (trigger.isInsert && trigger.isBefore) {
        system.debug('account before insert trigger called');
    }
    
    //update
    if (trigger.isUpdate && Trigger.isBefore) {
        system.debug('account Before UPDATE trigger called');
    }
    if (trigger.isUpdate && Trigger.isAfter) {
        system.debug('account after UPDATE trigger called');
    }*/
    
    
    
    /*//before insert
    if (Trigger.isInsert) {
        system.debug('account before INSERT trigger called.'); //when will this code run?
    }
    if (Trigger.isUpdate) {
        system.debug('account before UPDATE trigger called.');
    }
     */

    /*
    if (Trigger.isBefore) {
        system.debug('account before insert trigger called.');
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
    }
    */
    
    
}