public  class ForEachLoopDemo1 {
    public static void iterateIntegerList(){
        list<integer> listInteger = new list<integer>();
        listInteger.add(11);
        listInteger.add(25);
        listInteger.add(35);
        listInteger.add(76);
        for(integer eachInteger: listInteger){
            system.debug(eachInteger);
        }
    }

    public static integer add(list<integer> intList){
        integer returnInt = 0;
        for(integer eachInt: intList){
            system.debug('eachInt-->' + eachInt);
            returnInt += eachInt;
            system.debug('returnInt-->' +returnInt);
        }
        return returnInt;
    }
}
