list<string>listStr = new list<string>();
if(listStr.isEmpty()){
    system.debug('List is empty, come on.');
}

listStr.add('some string');
boolean listIsEmpty = listStr.isEmpty();
if(!listIsEmpty){
    system.debug('List is not Empty');
}

list<integer> listInteger = new list<integer>();
        listInteger.add(11);
        listInteger.add(8);
        listInteger.add(35);
        listInteger.add(15);
        system.debug('before sort ' + listInteger);

        listInteger.sort();
        system.debug('after sort ' + listInteger);