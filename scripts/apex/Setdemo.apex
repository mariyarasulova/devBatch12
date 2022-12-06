SertDemo.citySet();
SertDemo.randomIntegerSet();

list<integer> listInteger = new list<integer>();
        listInteger.add(11);
        listInteger.add(25);
        listInteger.add(35);
        listInteger.add(76);
        set<integer>setInteger = SertDemo.setFromList(listInteger);
        system.debug('set--> '+ setInteger);

set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Moscva');
        cities.add('Nairobi');
        cities.add('TURKMENABAT');
        cities.add('Berlin');
        cities.add('Tokyo');
        set<string>uppercaseCities = SertDemo.UpperCaseSet(cities);
        system.debug(uppercaseCities);