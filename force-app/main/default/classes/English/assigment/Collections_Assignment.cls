public  class Collections_Assignment {
    public static void listMethods() {
         list<string> dayList = new list<string>{'Monday','Wednesday','Thursday','Friday','Saturday'};
        system.debug(dayList);
        list<string> dayList1 = new list<string>{'Monday', 'Tuesday','Wednesday','Thursday','Friday','Saturday', 'Sunday'};
        system.debug(dayList1);

        dayList.add('Sunday');
        system.debug('The added day is ' + dayList);
        
         dayList.add(1, 'Tuesday');
         system.debug('The day added by index no is ' + dayList);

         Boolean check = dayList.contains('Monday');
         system.debug('Is Monday in the list ? ' + check);

         Boolean equal = dayList.equals(dayList1);
         system.debug('Is the dayList equal the dayList1? = ' + equal);

         string get3day = dayList.get(3);
         System.debug('get3day =  ' + get3day);

         integer indexNumber = dayList.indexOf('Monday');
         system.debug('Index number of Monday is =  ' + indexNumber);

         Boolean isListEmpty = dayList.isEmpty();
         system.debug('Is the list empty ? = ' + isListEmpty);

         string rmv = dayList1.remove(3);
         system.debug('The removed day is = ' + rmv);
         system.debug('After removed index no 3 = ' + dayList1);

         dayList.set(3, 'Thursday');
         system.debug(dayList);

         integer dayLlistsize = dayList.size();
         system.debug(dayLlistsize);

         dayList.sort();
         system.debug('Sorted by Alphabetic ' + dayList);
         

       
    }
    public static set<string> setMethods() {
        set<string> dayList1 = new set<string>{'Monday', 'Tuesday','Wednesday','Thursday'};
        system.debug(dayList1);
        set<string> weekend = new set<string>{'Tuesday', 'Saturday', 'Sunday'};
        system.debug (weekend);
     
        
         dayList1.add('Friday');
         system.debug('Added Friday = ' + dayList1);
         
         dayList1.addAll(weekend);
         system.debug(dayList1);

         Boolean checkMonday = dayList1.contains('Monday');
         system.debug('Is Monday in the list ? ' + checkMonday);

         Boolean checkAll = weekend.containsAll(dayList1);
         system.debug('Is Monday in the list ? ' + checkAll);

         Boolean setEqeual = dayList1.equals(weekend);
         system.debug('Is the weekend equal the dayList1? = ' + setEqeual);

         Boolean isSetListEmpty = dayList1.isEmpty();
         system.debug('Is the Set list empty ? = ' + isSetListEmpty);

         Boolean rmvSet = weekend.remove('Tuesday');
         system.debug('The removed day is = ' + rmvSet);
         system.debug('After removed Tuesday = ' + weekend);

        
         system.debug('The size of dayList1 ' + dayList1.size());
         system.debug('before removing Weekend ' + dayList1);
         boolean removeWeekend = dayList1.removeAll(weekend);
         system.debug('Removed Weekend ' + dayList1);
         


         return dayList1;
    }
}
