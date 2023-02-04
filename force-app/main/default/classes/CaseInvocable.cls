public with sharing class CaseInvocable {
  @InvocableMethod(label ='Send Email & Save Activity'
  description = 'this method sends email and saves the same as acrivity'
  category = 'Case')
  
    public static void sendEmailSaveActivity(list<InputRequest> inputs){
       list<Messaging.SingleEmailMessage> msgs = new  list<Messaging.SingleEmailMessage>();
        // iterate over the inputs and create an email for each
        for(InputRequest input :inputs ){
            Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
            msg.setSubject('Case Created: ' + input.caseNumber);
            msg.setPlainTextBody('A case has been created for your query. Please quote the case number avialable in the subject when you talk to customer care');
            msg.setTargetObjectId(input.contactId);
            msg.setSaveAsActivity(true);
            msgs.add(msg);
        }
        if(!msgs.isEmpty()){
            Messaging.sendEmail(msgs);
        }
  }  
public class InputRequest{
   @InvocableVariable(label = 'Contact Id' description = 'Contact Id' required = true)
    public Id contactId;

    @InvocableVariable(label = 'Case Number' description = 'Contact Id' required = true)
    public String caseNumber;
}

}