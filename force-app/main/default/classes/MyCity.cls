public  class MyCity {
    public void stringMethod(){
        string myJob = 'I\'m a saleforce developer';
        boolean b1 = myJob.contains('force');
        integer b2 =myJob.length();
        string b3 = myJob.toUpperCase();
        system.debug(b1);
        system.debug(' length is ' + b2);
        system.debug(b3);
    }
}
