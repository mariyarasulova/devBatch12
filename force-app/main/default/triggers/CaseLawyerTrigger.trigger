trigger CaseLawyerTrigger on Case_Lawyer__c (before insert, before update) {
if(Trigger.isBefore){
    if(Trigger.isInsert || Trigger.isUpdate){
        CaseLawyerHandler.validateCaseLawyer(Trigger.new);
    }
}
}