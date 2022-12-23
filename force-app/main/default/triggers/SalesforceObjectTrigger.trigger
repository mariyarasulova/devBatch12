trigger SalesforceObjectTrigger on Salesforce_Project__c (before insert,after insert, before update) {
if(trigger.isAfter && trigger.isInsert){
    SalesforceProjectTriggerHandler.createDefaultTicket(trigger.new);
}
if(trigger.isBefore && trigger.isUpdate){
    SalesforceProjectTriggerHandler.validateSPComplete(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
}
}