public class CollectionClass {
    public static string listaAssignment(integer m){

        List<String> LstMonth = new List<String>();
        LstMonth.add('January');
        LstMonth.add('February');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');
        string output_month='';
        integer listLong = LstMonth.size(); 
        if (m>0 && m<=listLong) {
            output_month = LstMonth[m-1];  
        } else { output_month = m +' is not a valid month...';

        }
        return output_month;
           
    }

}
