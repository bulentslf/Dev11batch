ogrenci11 student1 = new ogrenci11();
student1.firstName = 'Marry';
student1.lastName = 'Doe';
student1.className = '6E';
student1.language = 'English';
student1.art = True;
student1.sport = False;
student1.ingGrade = 95;
student1.mathGrade = 92;
student1.fenGrade = 90;
system.debug(student1);

ogrenci11 student2 = new ogrenci11();
student2.firstName = 'John';
student2.lastName = 'Doe';
student2.className = '7E';
student2.language = 'Spanish';
student2.art = False;
student2.sport = True;
student2.ingGrade = 99;
student2.mathGrade = 82;
student2.fenGrade = 90;
system.debug(student2);

system.debug('===class Listesi')
list<ogrenci11> studentsList = new list<ogrenci11>();
studentsList.add(student1);
studentsList.add(student2);