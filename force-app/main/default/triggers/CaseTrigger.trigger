trigger CaseTrigger on Case ( before update){

if (trigger.isUpdate){
    //count number of times trigger run
    system.debug('before update trigger run');
    CaseTriggerHundler.countTriggerExecution++;
    system.debug('# of times trigger run--> ' +  CaseTriggerHundler.countTriggerExecution);

    CaseTriggerHundler.countRecordUpdated += trigger.size;
    system.debug('# of total records updated => ' + CaseTriggerHundler.countRecordUpdated);
}














/*If(Trigger.isAfter && Trigger.isInsert){
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