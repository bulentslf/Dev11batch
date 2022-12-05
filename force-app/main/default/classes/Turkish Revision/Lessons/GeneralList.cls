public class GeneralList {
    public static list<string> toCaps(list<string> lst) {
        list<string> cptList = new list<string>();

        for (string eachItem : lst) {
        system.debug(eachItem);
         string cpt = eachItem.capitalize();
         system.debug(cpt);
         cptList.add(cpt);
         
        }
        return cptList;
    }
}
