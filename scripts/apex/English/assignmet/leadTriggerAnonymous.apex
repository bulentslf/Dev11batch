List<Lead> leadlist = new List<Lead>();

Lead ld = new Lead();
ld.lastname = 'Kadir';
ld.company = 'Kadir Com ';
ld.status = 'Open - Not Contacted';
leadlist.add(ld);

Lead ld1 = new Lead();
ld1.lastname = 'Şen';
ld1.company = 'Şen Com.';
ld1.status = 'Open - Not Contacted';
leadlist.add(ld1);

Lead ld2 = new Lead();
ld2.lastname = 'Tarkan';
ld2.company = 'ABC 2';
ld2.status = 'Working - Contacted';
leadlist.add(ld2);

Lead ld3 = new Lead();
ld3.lastname = 'Nilüfer';
ld3.company = 'ABC 3';
ld3.status = 'Closed - Converted';
leadlist.add(ld3);

Lead ld4 = new Lead();
ld4.lastname = 'Aksu ';
ld4.company = 'Aksu Com';
ld4.status = 'Closed - Converted';
leadlist.add(ld4);

insert leadlist;