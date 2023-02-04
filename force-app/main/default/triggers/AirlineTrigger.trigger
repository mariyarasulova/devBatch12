trigger AirlineTrigger on Airlines__c (after insert) {
if(Trigger.isAfter ){
    if(Trigger.isInsert){
        AirlineHandler.afterInsert(Trigger.newMap);
         }
    }
}