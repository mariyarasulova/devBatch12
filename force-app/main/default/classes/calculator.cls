public  class calculator {
    public void welcomeMessage(){
      system.debug(' Welcome to apex calc. '); 
    }
    public void printNewMessage(string msg){
        system.debug(msg);
        printNewMessage();
    }
    public string printAndReturnMessage(string msg2){
        system.debug(msg2);
        string returnStr = msg2 + ' ... OK Cool';
        return returnStr;
       
    }
    public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }
    public integer add(integer a,integer b, integer c ){
        integer sum = a + b + c;
     return sum;
    }
    public boolean leapYearCheck(date dt){
        integer year = dt.year();
        boolean lp = date.isLeapYear(year);
        return lp;
    }
    private void printNewMessage(){
        system.debug(' I need a sleep');
    }

}
