/**
 * SOAP SIMPLE OBJECT ACCESS PROTOCOL - Eerlier way of doing Web Communication/Integration, Secure way of data transfering,XML Messaging Format only
 * Outbound Callout using SOAP Api - 4 steps of Implementation
 * Step 1 : Create Remote Site Setting - to whitelist Domain
 * Step 2 : WSDL -(WEB SERVICE DESCRIPTION LANGUAGE ) - Get WSDL from External System
 * a.endpoint Url, Features available, Input parameters(Request), Response - XML format
 * Step 3 : Convert WSDL to Apex Class using Salesforce framework
 * Step 4 : Use/Consume/Invoke the Soap Apex Class to make callout
 * 
 */
public with sharing class SoapApiOutboundCallout {
    /**
     * SOAP API Callout to Calculator Heroku App to do multiplication
     */
    public static Double makeMultiplication() {
        CalculatorSOAPApex.CalculatorImplPort calc = new CalculatorSOAPApex.CalculatorImplPort();
        Double num1 = 8.0;
        Double num2 = 2.0;
        Double result = calc.doMultiply(num1, num2);
        System.debug('Calculator Request Paramaters for Multiply Feature is : ' + num1+ ' * ' + num2);
        System.debug('Calculator Response for Multiply Feature is : ' + result);
        return result;
        
    }
    /**
     * SOPA API  Callout to park heroku to get list of Park names based on Country
     */
    public static list<String> makeParkCallout() {
        ParkSOAPApex.ParksImplPort park = new ParkSOAPApex.ParksImplPort();
        string inputCountry ='India';
        List<String> parkNames = park.byCountry(inputCountry);
        System.debug('Park SOAP API Response for Country-Wise Feature is : ' + parkNames);
        return parkNames;
    }
    
}