public  class listDemo {
    public static string candidateList(integer i){
        List<string> listCandidates = new List<string>();
        listCandidates.add('Mark');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Elon');
        system.debug('list of candidate is ' + listCandidates);
        string returnString = '';
        integer sizeOfList = listCandidates.size();
        if(i>= 0 && i<sizeOfList){
            returnString = listCandidates[i];
        }else{
            returnString = ' No values found. Stay in limits';
        }
        return returnString;
    }
    public static void randomIntegerList(){
        list<integer> listInteger = new list<integer>();
        listInteger.add(11);
        listInteger.add(25);
        listInteger.add(35);
        listInteger.add(76);

        integer valueAt3index = listInteger.get(3);
        //or
        integer valueAt2index2 = listInteger[2];
        system.debug('list of integer is ' + listInteger);
        system.debug('value at index 3 is ' + valueAt3index);
        system.debug('value at index 2 is ' + valueAt2index2);
    }
 public static void allCats(){
    list<cat> listCat = new list <cat>();
    cat batch12Cat = new cat('Ginger', 'white');
    cat batch12Cat2 = new cat('Snow', 'black');
    cat batch12Cat3 = new cat('Blackpepper', 'brown');
    listCat.add(batch12Cat);
    listCat.add(batch12Cat2);
    listCat.add(batch12Cat3);
    listCat.add(batch12Cat);
    system.debug(' list of cats ' + listCat);
 }

}
