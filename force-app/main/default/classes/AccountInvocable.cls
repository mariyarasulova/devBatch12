public with sharing class AccountInvocable {
    @InvocableMethod(label ='Close opportunities'
    description = 'This method going to update the stagename of all opportunities under the given account to closed lost'
    category = 'Account')
    public static void closeOpportunities(list<Id> accountIds){
        //query to get all the opps under the gives accounts
        list<opportunity> opps = [select id, StageName from opportunity where AccountId IN :accountIds AND StageName NOT IN ('Closed Won', 'Closed Lost')];
        for(opportunity opp :opps){
            opp.StageName = 'Closed Lost';
        }
        if(!opps.isEmpty()){
            try{
                update opps;
            }catch(Exception ex){
                //create a log
            }
        }
    }
}