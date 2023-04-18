public with sharing class SoapCallout11 {
   
    public static String[] parksCallout(string country) {
 
        ParksServices.ParksImplPort parksService = new ParksServices.ParksImplPort();
        string[] parks = ParksService.byCountry(country);
        System.debug(country + ' ülkesinin parkları => ' + parks);
        return parks;
        
    }
    
}