public class Trigger_Map {
    public static Id InsertSF_Project() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'SpaceProject';
        insert sp;
        return sp.id;
    
    }
    public static void UpdateSF_Project(string id, string name1) {
        Salesforce_Project__c SpUpdateList = [select id, Project_Name__c from Salesforce_Project__c where id =: id];
        SpUpdateList.Project_Name__c = name1;
        update SpUpdateList;
    }
}
