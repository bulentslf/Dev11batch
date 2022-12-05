public class MyCity {
    public void cityInformation() {
        String famousFor = 'Tava Ciger';
        String cityName = 'Edirne';
        String FamousCity = cityName + ' is famous for ' + famousFor;
        System.debug(FamousCity);
    }
   public void stringMethod(){
        string s1 = 'I am a Salesforce Developer ';
        Boolean check = s1.contains ('force');
        system.debug('Does sentence contain "force"?' + check);
        integer character = s1.length();
        system.debug('The number of the character is ' + character);

        string uppCase = s1.toUpperCase();
        system.debug(uppCase);

    } 
   
        
    public void dateMethod(){
        date today = date.today();
        system.debug('Today is ' + today);

        datetime today2 = datetime.now();
        System.debug(today2);
        datetime newTime = datetime.newInstance(2022,11,20);
        Datetime newDaytime = newTime.addHours(50);
        system.debug('New date is ' + newDaytime);
    }    
    
}
