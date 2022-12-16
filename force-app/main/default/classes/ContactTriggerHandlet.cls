public  class ContactTriggerHandlet {
    public static void contactUpdatevalidation1(list<contact> cntTriggerNew, list<contact> cntTriggerOld, Map <id, contact> cntTriggerNewMap, Map <id, contact> cntTriggerOldMap ){
        for(contact eachContact : cntTriggerNew){
            if(eachContact.LeadSource =='Partner Referral'){
                eachContact.addError('Contact can not be update');
            }
        }
    }
}
