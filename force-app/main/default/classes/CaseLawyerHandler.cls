public with sharing class CaseLawyerHandler {
    public static void validateCaseLawyer(List < Case_Lawyer__c > caseLawyers){
      Set<Id> caseIds = new Set<Id>();
      Set<Id> lawyerIds = new Set<Id>();
      Map<String,Case_Lawyer__c> caselawyerMap = new Map<String,Case_Lawyer__c>();
      for(Case_Lawyer__c cl : caseLawyers ){
        caseIds.add(cl.Case__c);
        lawyerIds.add(cl.Lawyer__c);

        String myKey = String.valueOf(cl.Case__c) + String.valueOf(cl.Lawyer__c);
        caselawyerMap.put(myKey, cl);
      }  
      System.debug('caseIds: ' + caseIds);
      System.debug('lawyersIds: ' + lawyerIds);

      for(Case_Lawyer__c cl : [SELECT Id, Case__c, Lawyer__c FROM Case_Lawyer__c WHERE Case__c IN: caseIds AND Lawyer__c IN: lawyerIds])
      {
        String systemKey = String.valueOf(cl.Case__c) + String.valueOf(cl.Lawyer__c);
        Case_Lawyer__c toBeFailed = caselawyerMap.get(systemKey);
        if(toBeFailed !=null){
            toBeFailed.addError('This is a dublicate record');
        }
      }
    }
}