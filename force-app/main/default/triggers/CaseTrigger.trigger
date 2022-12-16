trigger CaseTrigger on Case (before update,after update, before insert, after insert) {

If(Trigger.isAfter && Trigger.isInsert){
 for(Case eachCase : Trigger.new){
    if(eachCase.origin == 'Email'){
        eachCase.Status = 'New';
        eachCase.Priority = 'Medium';
    }
 }
}





    /*
    if(Trigger.isUpdate){
        Map<id, Case> CaseTriggerOldMap = trigger.oldmap;
        for(Case eachCase : trigger.new){
            if(eachCase.Origin != CaseTriggerOldMap.get(eachCase.Id).Origin){
                system.debug('Case origin is changed for' + eachCase.CaseNumber);
        }

        
        }
}*/

}