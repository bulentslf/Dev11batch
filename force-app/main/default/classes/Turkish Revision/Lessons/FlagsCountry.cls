public class FlagsCountry {
    public static HttpResponse getCountry() {
        // 1 request enpoint and methor
        HttpRequest Request = new HttpRequest();
        Request.setEndpoint('https://restcountries.com/v2/all');
        Request.setMethod('GET');

        //2 Http
        Http Http = new Http();
        HttpResponse response=Http.send(request);

        //3 body alip donuşturuyoruz.. sonrada wrapper class ile org. muza kaydedelim

        if (response.getStatusCode() == 200) {
            string jsonData = response.getBody();
            //3.1 wrapper yardımı ile json dan wrappera dönüştürüyoruz
            list<WrapperCountryFlag> listWrapper =(list<WrapperCountryFlag>) JSON.deserialize(jsonData,list<WrapperCountryFlag>.class);
            //orguama kaydetmek için bir obje listesi oluşturuyoruz
            list<Flag_Country__c> listCountry = new  list<Flag_Country__c>();
            //
            for (WrapperCountryFlag eachWrapper : listWrapper) {
                Flag_Country__c obj = new Flag_Country__c();
                obj.name = eachWrapper.name;
                obj.Capital__c=eachWrapper.capital;
                obj.Flag_URL__c=eachWrapper.flags.svg;
                obj.Native_Name__c=eachWrapper.nativeName;
                obj.Region__c=eachWrapper.region;
                obj.Population__c=eachWrapper.population;
                listCountry.add(obj);
                
            }
            insert listCountry;
        }
        return response;

        
    }
    public class WrapperCountryFlag{
        public string name;
        public string nativeName;
        public Integer population;
        public string capital;
        public string region;
        public FlagsWrapper flags;
        

    }
    public class FlagsWrapper{
        public string svg;
    }

 
}