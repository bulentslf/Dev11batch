Map<String, country_code__c>allCountryCodes = country_code__c.getAll();
System.debug('all country codes =>' + allCountryCodes);
for (string eachCountry : allCountryCodes.keySet()) {
   system.debug('Country is ' + eachCountry + 'its codes is ' + allCountryCodes.get(eachCountry).code__c);
   
}