public  class accOperations_1 {
    public static Decimal accConAndOppOperations(){
        list <Opportunity> listOpp = [select id, stagename, amount from opportunity where stagename = 'Closed Won'];
        Decimal totalSum = 0;
        for(opportunity eachOpp : listOpp){
            totalSum +=eachOpp.amount;
        }

        system.debug(totalSum);
        return totalSum;
    }
}
