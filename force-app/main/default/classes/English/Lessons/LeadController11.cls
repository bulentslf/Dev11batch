public with sharing class LeadController11 {
    
    @AuraEnabled
    public static List<Lead> searchName(String word) {
        
        String searchWord = '%'+word+'%';
        return [SELECT FirstName, LastName, Company, Industry, LeadSource
                FROM Lead
                WHERE Name LIKE :searchWord];
    }

    @AuraEnabled
    public static List<Lead> searchIndustry(String indust){
        return [SELECT FirstName, LastName, Company, Industry, LeadSource
                FROM Lead
                WHERE Industry =: indust];
    }
}