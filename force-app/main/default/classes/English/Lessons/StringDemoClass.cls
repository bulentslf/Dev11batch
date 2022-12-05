public class StringDemoClass {
    public void stringMethod1(){
        String sessionDescription = ' learning string methods in apex language.';
        system.debug(sessionDescription);
        integer lengthOfStr = sessionDescription.length();
        system.debug('length of session description is ' + lengthOfStr);
        string capsSessionDescription = sessionDescription.toUpperCase();
        System.debug('in Caps' + capsSessionDescription);
        boolean apexContaions = sessionDescription.contains('apex');
        System.debug('contains apex??????? ' + apexContaions2);
        boolean sfContaions = sessionDescription.contains('salesforce');
        System.debug('contains salesforce?????????' + sfContaions);

        string rating = ' Hot ';
    }
}