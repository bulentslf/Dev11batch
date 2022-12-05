public class Dog {
    public string name;
    public string color;
    public Integer age= 0;
    public static Integer count=0;

 public Dog(){
    count++;
    age=1;
    checkAge();
    showDogCount();
 }
public Dog(string n, string c, integer a){
    name =n;
    color=c;
    age=a;
    count++;
    checkAge();
    showDogCount();
}
public static void showDogCount(){
    System.debug('The total number of dogs are ' + count);
}
public void checkAge(){
    if(age>0 && age<=1){
     System.debug('It is a Puppy Dog');   
    } else if (age>1 && age<=3){
        system.debug('It is a Young Dog');
    } else if (age>3 && age<=5){
        system.debug('It is a Adult Dog');
    }  else {
        system.debug('It is old Dog');
    } 

}
}

