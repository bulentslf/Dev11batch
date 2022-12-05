// “MathPractice” Class’ının içerisine “practiceFive” isimli bir method oluşturun. Bu method iki integer parametere kabul etsin ve iki parametre arasındaki sayıların toplamını return etsin.
// [İpucu: Toplama işlemine parametre değerleri dahil edilmeli ve parametrelerin eşitlik durumunda iki parametre toplanmalıdır.]


public class MathPractice {
    public integer practiceFive(integer x, integer y) {
        integer total=0;
        if(x<y){
            for (Integer i = x; i<=y; i++){  
                total +=i;
            }                 
            } else if (y<x) {
                for (Integer i = y; i<=x; i++) {
                    total += i;
                } } else { 
                total = x+y;        
            }
            Return total;
    
}

// SORU 16: Elemanları ‘Dünya, Venüs , Mars, Merkür, Satürn, Jupiter’ olan bir Liste oluşturun. Listenin boş olup olmadığını kontrol ederek ekrana yazdıran bir kod yazın.
public static void Space() {
    List<string> planet = new List<string>();
    planet.add('Dünya');
    planet.add('Venüs');
    planet.add('Mars');
    planet.add('Merkür');
    planet.add('Satürn');
    planet.add('Jupiter');
    system.debug(planet);
    Boolean emp = !(planet.isEmpty());
    system.debug('Liste dolu mudur kurban? ' + emp);

 
    
}

}


