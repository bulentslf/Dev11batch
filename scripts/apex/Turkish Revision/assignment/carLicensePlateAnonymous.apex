//SORU 18 : Plaka ve o plakaya ait şehir isimlerinin olduğu bir Map<Integer,String> oluşturalım.
//1.İstanbul(34),Bursa(16),İzmir(35),Konya(42),Gaziantep(27) şehirlerini plaka numaralarıyla mapimize ekleyelim.

Map<Integer,string> licensePlate = new Map<Integer,string>();
licensePlate.put(34,'Istanbul');
licensePlate.put(16 ,'Bursa');
licensePlate.put(35,'İzmir');
licensePlate.put(42,'Konya');
licensePlate.put(27,'Gaziantep');
System.debug(licensePlate);


//2.Mapimizde 34(İstanbul) ve 61(Trabzon) ait plakaların olup olmadığını kontrol edelim.
Boolean check34 = licensePlate.containsKey(34);
system.debug('Does the list contain car license plate of Istanbul ==>' + check34);

//3.Mapimizin eleman sayısnı system.debug ile yazdıralım.
system.debug('The size of list is = ' + licensePlate.size());
//4.16 nolu plakayı mapimizden çıkaralım.

System.debug('The removed licence is = '  + licensePlate.remove(16));
//4.Mapimizdeki plakalardan oluşan yeni bir set oluşturalım.
Set<Integer> licensePlateKeySet = licensePlate.keySet();
System.debug(licensePlateKeySet);

//5.Mapimizdeki şehirlerden oluşan yeni bir list oluşturalım.
list<string> licensePlateValue = licensePlate.values();
System.debug('The names of the cities are' + licensePlateValue);


//6.Plaka ve şehir ismini aynı system.debug içerisinde kullanalım.
System.debug(licensePlate.get(34));
for(integer item : licensePlateKeySet){
   string item2 = licensePlate.get(item);
   system.debug('licensePlate = ' + item + ' City = '+ item2);
}
