@IsTest
public with sharing class SoapCallouts_Test {
   @IsTest
   static void parksCalloutTest(){
    
    ParksServicesMock mock = new ParksServicesMock();
    test.setMock(WebServiceMock.class, mock);
    
    string country = 'Turkey';
    string[] parks = SoapCallout11.parksCallout(country);
    system.assertEquals(2, parks.size());
    

   }
}