public class DateTimeMethodsDemo {
    public void calculateAgeInMonths() {
        date dttoday = date.today();

        date VBdate = date.newInstance(1976, 01, 01);
        Integer ageInMonths = VBdate.monthsBetween(dtToday);
        System.debug('Bulent age in month is ' + ageInMonths);


    }
    public void calculateAgeInDays(){
        date dttoday = date.today();
        date VBdate = date.newInstance(1976, 01, 01);
        Integer ageIndays = VBdate.daysBetween(dtToday);
        System.debug('Bulent age in days is ...' + ageIndays);

    }
    public void printSubscriptionEndDate(){
         date SubscriptionStartDate = date.today();
         Date SubscriptionEndDate = SubscriptionStartDate.addDays(1000);
         System.debug('subscription ends on ' + SubscriptionEndDate);

        Integer endDateYear = SubscriptionEndDate.year();
        System.debug(' subscription end date YEAR is ' + endDateYear);

        Integer endDateMonth = SubscriptionEndDate.month();
        System.debug('subscription end date month is ' + endDateMonth);
            
        }
        public void printOfferEndDateTime(){
            datetime dtNow = datetime.now();

            Datetime dtofferEnd = dtNow.addHours(51);
            System.debug('offer end date & time '  + dtOfferEnd);
   
            date dateOfferEnd = dtOfferEnd.Date();
            System.debug('date of offer end' + dateOfferEnd);


        }
        public void birthDateToMilliSeconds(){
            datetime birthDate = datetime.newInstance(1976, 1, 1, 7, 30, 35);
            long longBirthDate = birthDate.getTime();
            system.debug('long birth date => ' + longBirthDate);
        }
    }

