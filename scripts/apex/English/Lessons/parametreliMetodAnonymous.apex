ParametreliMetod11 pm11 = new ParametreliMetod11();
string metin = 'Salesforce Developer yolunda ilerliyoum...';
integer uzunluk = pm11.uzunluk(metin);
system.debug(metin + 'cumlesinin karakter sayisi ' + uzunluk);

ParametreliMetod11 pm2 = new ParametreliMetod11();
system.debug(pm2.rakamSayisi(3333));
Integer rs = pm2.rakamSayisi(4444444);
System.debug('sayinin rakam adedi = ' + rs);

ParametreliMetod11 pm3 = new ParametreliMetod11();
integer sonuc1 = pm3.sum(11, 22);
system.debug('toplama işlemi sonucu = ' + sonuc1);
integer soncuc2 = pm3.cıkarma(44, 33);
system.debug('çıkarma işlemnin sonucu = ' + soncuc2);

Decimal bolme =sonuc1/soncuc2;
System.debug(' iki degerin bolme sonucu = ' + bolme);

ParametreliMetod11 pm4 = new ParametreliMetod11();
pm4.kitapOdemesi('Sefiller', 5, 39);



