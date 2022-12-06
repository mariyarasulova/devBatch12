public class SOQLdemo2 {
   public static void soqlChildToParent_1(){
    list<contact> listCnt = [Select id, name, account.name, account.Industry from contact where account.Industry = 'Energy' ];
    for( contact eachContact : listCnt){
        string cntName = eachContact.name;
        string cntId = eachContact.Id;
        string accountName= eachContact.account.name;
       string accountInd = eachContact.account.Industry;

        system.debug('contact name is ' + cntName + 'account name is ' + accountName);
    }
}

    public static void soqlParentToChild_1(){
        list<account> listAccOpp = [select id, name, annualrevenue, (select name, amount from Opportunities where stagename = 'Closed Won') from account where type = 'Customer - Direct'];
        for( account eachAcc : listAccOpp){
            system.debug('account name is ' + eachAcc.Name + ', annual revenue is ' + eachAcc.AnnualRevenue);
            list<Opportunity>listOpp = eachAcc.Opportunities;
            for(Opportunity eachOpp : listOpp){
                system.debug('----opp name is ' + eachOpp.Name + ', amount is ' + eachOpp.amount ); 
            
        }
    }
   }
}
