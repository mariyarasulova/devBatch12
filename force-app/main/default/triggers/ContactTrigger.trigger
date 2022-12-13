trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    if(trigger.isBefore){
system.debug('we are in BEFORE trigger.');


if(trigger.isInsert){
    system.debug( 'we are in BEFORE insert Trigger.');
}
    if(trigger.isUpdate){
        system.debug( 'we are in BEFORE Update Trigger.'); 
    }
}


if(trigger.isAfter){
    system.debug( 'we are in AFTER Trigger.'); 

if(trigger.isInsert){
    system.debug( 'we are in AFTER Insert Trigger.'); 
}
if(trigger.isUpdate){
    system.debug( 'we are in AFTER  Update Trigger.'); 
}

}
}