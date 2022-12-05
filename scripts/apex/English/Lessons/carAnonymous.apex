car sahin = new car();
sahin.carName ='model SLX';
sahin.carColor = 'Black';
sahin.switchOn();
system.debug('sahin car color ' + sahin.carColor);
system.debug('sahin ' + sahin);
sahin.drive();
sahin.driveAtMaxSpeed();
system.debug('sahin done');

System.debug(' bmw created ');
car bmw = new car();
bmw.carName = 'zyz';
bmw.carColor = 'White';
bmw.switchOn();
system.debug('bmw car color -> ' + bmw.carColor);
system.debug('bmw ' + bmw);
bmw.drive();

car toyoto = new car();
toyoto.switchOn();
toyoto.drive();
          