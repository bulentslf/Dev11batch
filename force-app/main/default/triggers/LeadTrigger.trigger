trigger LeadTrigger on Lead (before insert, before update) {
    List<Lead> listOfLead = Trigger.new;
    if (Trigger.isBefore && Trigger.isInsert) {
        for (Lead item : listOfLead) {
            System.debug('Lead record INSERT => ' + item);
        }
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        for (Lead item : listOfLead) {
            System.debug(' Lead record UPDATE => ID : ' + item.id + ' Lead Name : ' + item.lastname + ' Lead description : ' + item.description);
        }
    }

    
}