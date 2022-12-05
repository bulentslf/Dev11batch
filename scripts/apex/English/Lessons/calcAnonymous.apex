Calculator c2 = new Calculator();
Date date1 = Date.newInstance(2020, 6, 22);
boolean date1LP = c2.leapYearCheck(date1);
system.debug(' date 1 is leap year?' + date1LP);



Calculator c2 = new Calculator();
integer c2sum33 = c2.add(10,15,25);
system.debug(c2sum33);


Calculator c2 = new Calculator();
integer c2sum1 = c2.add(10,15);
system.debug('c2Sum1 is ' + c2sum1);
Integer c2sum2 = c2.add(45,55);
system.debug('c2sum2 is ' + c2sum2);
Integer x = 88;
Integer y = 99;
Integer c2sum3 = c2.add(x,y);
system.debug('c2sum3 is ' + c2sum3);


Calculator c2 = new Calculator();
string returnC2 = c2.printAndReturnMessage('print this asap');
system.debug(returnC2);

Calculator c1 = new Calculator ();
c1.welcomeMessage();
string message = 'print this message';
c1.printNewMessage(message);
c1.printNewMessage('now print this.');