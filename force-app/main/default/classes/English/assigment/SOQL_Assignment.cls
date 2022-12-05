// Create an Apex Class SOQL_Assignment
// Create a static method soql_WhereClause 

public class SOQL_Assignment {
    public static void soql_WhereClause (){
// Create a variable lstcontact which is list<Contact>.
// Write an SOQL statement which gets all contact records where Name starts with string ‘A’. 
list<contact> lstcontact = [SELECT id, name FROM Contact WHERE Name LIKE 'A%'];
system.debug('List of contacts names starting with A are  ' + lstcontact);
// Display the size of lstcontact.
integer lstcontactSize = lstcontact.size();
system.debug('size of list contact '+ lstcontactSize);


    }
    // Create a static method soql_FromMethod
    public static void soql_FromMethod(){
// Create a variable lstcontact which is list<Contact>.
        list<contact> lstcontact = [SELECT lastName, Phone FROM contact WHERE lastName !=null and Phone !=null]; 
// 	Display the data of each record Lastname and phone number in for loop
        for (contact item : lstcontact ){
            string lstName = item.lastName;
            String phoneN = item.Phone;
            system.debug('Last name is ' + ' '+ lstName + '.'+ ' Phone number is '+ phoneN);
        }
    }
}
