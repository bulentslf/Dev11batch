public class ParametreliMetod11 {
//   bu metod parametre olarak string bir değer alsın. bu stringin karakter sayısını return etsin.
public integer uzunluk (string text){
    integer uzn = text.length();
    return uzn;
}
// Bu metod parametre olarak integer bir deger alsın bu indeger kaç rakamdan oluştuğunu return etsin.
public integer rakamSayisi(integer sayi){
    string strSy = string.valueOf(sayı);
    // return
   integer rkmSys = strSy.length();
   return rkmSys;

}
public integer sum(integer a, Integer b){
    return a+b;
 }
 public integer cikarma (integer c, integer d){
    return c -  d;
 }

 public void kitapOdemesi(string kitapAdi, integer adet, decimal fiyat){
    decimal totalPrice = adet*fiyat;
    system.debug(kitapAdi +' kitabından ' + adet + ' adet aldiniz.Odemeniz gerekn miktar = ' + totalPrice);
 }
}

