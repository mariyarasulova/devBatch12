trigger Opportunitytrigger on Opportunity (before update) {
    /*When the StageName of an opportunity is updated, then print the value of description field and opportunity name. [OPTIONAL]*/
    if(Trigger.isUpdate){
        Map<id, Opportunity> OppTriggerOldMap = trigger.oldmap;
        for(Opportunity eachOpp : trigger.new){
            if(eachOpp.StageName != OppTriggerOldMap.get(eachOpp.Id).StageName){
                system.debug('Description is updated ' + ' ' + eachOpp.Description + eachOpp.Name);
        }

        
        }
}
















}
   /* list<Opportunity> newTriggerList = Trigger.new; 
    list<Opportunity> oldTriggerList = Trigger.old;
    Map<id, Opportunity> oppTriggerNewMap = trigger.newmap;
    Map<id, Opportunity> oppTriggerOldMap = trigger.oldmap;

    if(Trigger.isBefore && Trigger.isUpdate){
        set<id> OppId = oppTriggerNewMap.keySet();
        for( id eachId : oppId){
            system.debug(' new opportuniry name is' + oppTriggerNewMap.get(eachId).name);
            system.debug(' new opportuniry amount is' + oppTriggerNewMap.get(eachId).amount);
            system.debug(' old opportuniry name is' + oppTriggerOldMap.get(eachId).name);
            system.debug(' old opportuniry name is' + oppTriggerOldMap.get(eachId).amount);
        }
}

}*/



/*1. Print the new and old field values for (Opportunity Name and Amount) fields whenever an opportunity is updated.
2. Show the message as 'Case origin is changed for [Case Number]' whenever case origin field value is changed.
3. When the StageName of an opportunity is updated, then print the value of description field and opportunity name. [OPTIONAL]*/


