public  class SertDemo {
    public static void citySet(){
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Moscva');
        cities.add('Nairobi');
        cities.add('TURKMENABAT');
        cities.add('Berlin');
        cities.add('Tokyo');
        system.debug('cities are '+ cities);
    }

    public static void randomIntegerSet(){
        set<integer> setInteger = new set<integer>();
            setInteger.add(15);
            setInteger.add(10);
            setInteger.add(87);
            setInteger.add(11);
            setInteger.add(34);
            setInteger.add(12);
            system.debug('integer set ' + setInteger);
        
    }

    public static set<integer> setFromList(list<integer> intList){
       set<integer> setInt = new set<integer>();
       setInt.addAll(intList);
       return setInt; 
    }
    public static set<string> UpperCaseSet(set <string> setStr){
        set<string> returnSet = new set<string>();
        for(string eachStr : setStr){
            string tempStr = eachStr.toUpperCase();
            returnSet.add(tempStr);
        }


        return returnSet;
    }
}
