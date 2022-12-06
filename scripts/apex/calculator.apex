calculator c1 = new calculator();
c1.welcomeMessage();
string message = ' welcome again';
c1.printNewMessage(message);
string r = c1.printAndReturnMessage(' Print this asap.');
system.debug(r);
integer sum1 = c1.add(10, 15);
system.debug(sum1);
integer sum2 = c1.add(15, 16, 11);

system.debug(sum2);
date newDate = date.newInstance(2016, 4, 8);
boolean lpChech = c1.leapYearCheck(newDate);
system.debug(newDate + ' check leap year ' + lpChech);