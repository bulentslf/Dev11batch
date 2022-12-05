// Add multiple mappings of your choice in the marksObtainInMaths Map.
 map<String,integer> marksObtainInMaths = new  map<String,integer>();
 marksObtainInMaths.put('0111CE112', 40);
 marksObtainInMaths.put('0111CE102', 19);
 marksObtainInMaths.put('0111CE100', 33);
 marksObtainInMaths.put('0111CE098', 40);
System.debug(marksObtainInMaths);
// Print all the Student Roll Number present in the marksObtainInMaths.
for (string StdNum : marksObtainInMaths.keySet()) {
   System.debug(StdNum);
   }
//   Print all the Marks Obtain present in the marksObtainInMaths. 
for (integer StdMark : marksObtainInMaths.values()) {
   System.debug(StdMark);
   }
// • Create a set as uniqueRollNumberSet and populate it with all the Roll number from marksObtainInMaths.
Set<String> uniqueRollNumberSet = marksObtainInMaths.keySet();
   System.debug(uniqueRollNumberSet);
// • Create a List as marksObtainList and populate it with all the marks obtain from marksObtainInMaths.
List<Integer> marksObtainList = marksObtainInMaths.values();
   system.debug(marksObtainList);
   // Optional
// If the mark obtain is less than 20.
// • Print the mgs (rollNumber + ‘ is not qualified for next class’)
for (string stdNum : marksObtainInMaths.keySet()) {
   integer grade = marksObtainInMaths.get(stdNum);
   if(grade<20){
      system.debug(stdNum + ' ==> '+ grade + ' is not qualified for next class ');
   } else {
      system.debug(stdNum + ' ==>' + grade + ' succeeded in passing exam... ');
   }
   
}