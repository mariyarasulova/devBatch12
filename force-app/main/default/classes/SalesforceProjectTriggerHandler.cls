public class SalesforceProjectTriggerHandler {
    public static void createDefaultTicket( list <Salesforce_project__c> spTriggerNew){
        // create one empty list
        list<Salesforce_Ticket__c> stList = new list<Salesforce_Ticket__c>();
        //for each project create new ticket
        for(Salesforce_project__c eachSP :spTriggerNew){
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = 'Default st';
            st.Salesforce_project__c = eachSP.id;
            stList.add(st);
        }
        If(!stList.isEmpty()){
            insert stList;
        }
    }

    public static void validateSPComplete(list <Salesforce_project__c> spTriggerNew, list <Salesforce_project__c> spTriggerOld, Map <id, Salesforce_project__c> spTriggerNewMap, Map <id, Salesforce_project__c> spTriggerOldMap){

        set<id> allCompletedPrIds = new set<id>();
        for(Salesforce_project__c eachSP : spTriggerNew){
            if(eachSP.Status__c == 'Completed' && eachSP.Status__c != spTriggerOldMap.get(eachSP.id).Status__c ){
                allCompletedPrIds.add(eachSP.id);
                system.debug(allCompletedPrIds);
            }
        }
        List<Salesforce_Ticket__c> ListST =[ select id, status__c,Salesforce_project__c from Salesforce_Ticket__c where Salesforce_Project__c in: allCompletedPrIds and status__c !='Completed'];
        system.debug(listST);

        for(Salesforce_Ticket__c eachST : ListST){
            Salesforce_Project__c sp = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            sp.Status__c.addError('Cannot complete project...');
            system.debug(sp);
        }
    }

}
