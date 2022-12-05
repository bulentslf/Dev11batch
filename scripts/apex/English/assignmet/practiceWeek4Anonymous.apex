
1-1
SELECT AccountId, FirstName, LastName, Email FROM Contact
1-2
select id, name, phone from account where phone = null order by name 
1-3
select accountid, id, name from contact where accountid=null
1-4
select count(id) from opportunity

// Store the currency exchange rate values in a Map named ‘currISOCodeAndExchangeRateMap’ for
// any 5 currency ISO codes. Like below:
// a. AUD => 0.73
// b. CAD => 0.78
// c. EUR => 1.13
// d. NZD => 0.68
// e. INR => 0.013
Map<String,Decimal> currISOCodeAndExchangeRateMap = new Map<String,Decimal>{'AUD' => 0.73, 'CAD' => 0.78, 'EUR' => 1.13, 'NZD' => 0.68, 'INR' => 0.013};

//2-2 2. Fetch the currency conversion rate for any one currency ISO code and print it.
System.debug(currISOCodeAndExchangeRateMap.get('EUR'));

//2-3 Check if the above Map has a conversion rate for SAD ISO code.
Boolean isocode = currISOCodeAndExchangeRateMap.containsKey('SAD');
System.debug(isocode);
//2-4 Collect all the currency ISO codes from currISOCodeAndExchangeRateMap for which the conversion rate is >= 1 in one variable and other iso codes in other variables.
Set<String> greaterOne = new Set<String>();
Set<String> lessThanOne = new Set<String>();
Set<String> keySets = currISOCodeAndExchangeRateMap.keySet();
System.debug(keySets);
for(String item : keySets){
    decimal val = currISOCodeAndExchangeRateMap.get(item);
        if(val>1){
            greaterOne.add(item);
        } else {
            lessThanOne.add(item);
        }
}
System.debug('greaterOne ' + greaterOne);
System.debug('lessThanOne ' + lessThanOne);

//3-1
select name, stagename, amount from opportunity where stagename = 'Closed Won' and Amount >= 35000
//3-2
select lastname, account.name from contact order by lastname desc
//3-3
select id, name, (select id, stagename from opportunities where stagename != 'Closed Lost') from account
//3-4
select name, amount from opportunity order by amount desc limit 10
//3-5
select name, amount from opportunity where stagename != 'Closed Won' and stagename != 'Closed Lost' order by amount limit 20
//4-1
public class AccConAndOppOperation {
    public static List<account> one(){
        List<account> lstaccount = [select name, annualrevenue, type, accountsource from account];
        return lstaccount;
    }
    public static List<opportunity> two(String x, String y){
        List<Opportunity> lstOpp = [select name, leadsource, stagename from Opportunity where LeadSource = :x and stagename = :y];
        return lstOpp;
    }
    public static void three(){
        List<Account> lstAcc = [select name, annualrevenue,(select name, amount, stagename from Opportunities where stagename = 'Closed Won') from account where type = 'Customer - Direct'];
        for (Account item : lstAcc){
            //system.debug(item.Opportunities);
                for(opportunity item2 : item.Opportunities){
                    System.debug(item2);
                }
        }        
    }
}
