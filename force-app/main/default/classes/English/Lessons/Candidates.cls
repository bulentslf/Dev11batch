public  class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;
    public static Integer countCandidates = 0;

    public void PrintCandidate(){
        system.debug('Name is ' + Name);
        system.debug( 'Gender is ' + Gender);
        System.debug( ' Company name is '+ CompanyName);
        
    }
    public static void PrintCandidateInfo(){
        system.debug('Company name is ' + CompanyName);
    }
     
   
}
