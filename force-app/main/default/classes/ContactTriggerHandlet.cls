public  class ContactTriggerHandlet {
    public static void contactUpdatevalidation1(list<contact> cntTriggerNew, list<contact> cntTriggerOld, Map <id, contact> cntTriggerNewMap, Map <id, contact> cntTriggerOldMap ){
        for(contact eachContact : cntTriggerNew){
            contact oldContact = cntTriggerOldMap.get(eachContact.id);
            if(oldContact.LeadSource =='Partner Referral'){
                eachContact.addError('Contact can not be update');
            }
        }
    }

    
        public static void contactUpdatevalidation2(list<contact> cntTriggerNew, list<contact> cntTriggerOld, Map <id, contact> cntTriggerNewMap, Map <id, contact> cntTriggerOldMap ){
            for(contact eachContact : cntTriggerNew){
                contact oldContact = cntTriggerOldMap.get(eachContact.id);
                if(eachContact.LeadSource !=cntTriggerOldMap.get(eachContact.id).LeadSource){
                    eachContact.LeadSource.addError('CANNOT UPDATE LEAD SOURSE.');
                }
            }
        }

}

