public with sharing class CividInfoCallout {
    
    //Endpoint: https://api.covidtracking.com/v1/us/current.json
    //Http Method: GET
    public static HttpResponse getCovidInfo(){
    //1. Prepare Http request and wrap all neccessary data in it
    HttpRequest request = new HttpRequest();
    request.setEndpoint('https://api.covidtracking.com/v1/us/current.json');
    request.setMethod('GET');
    //2. Prepare Internet
    Http http = new Http();
    //3. Sent tha HttpRequest over the internet in order to receive HttpResponse back
    HttpResponse response = http.send(request);
    //4. Process HttpResponse
    if(response.getStatusCode()==200){
        String jsonString = response.getBody();
        List<CovidInfoWrapper> wrapper = (List<CovidInfoWrapper>)JSON.deserialize(jsonString, List<CovidInfoWrapper>.class);
        CovidInfoWrapper cIW = wrapper[0];
        list<Covid_Info__c> covidInfo = [SELECT Id, Name, Positive__c, Negative__c, Pending__c, Received_Date__c FROM Covid_Info__c WHERE Received_Date__c = TODAY];
       if(covidInfo.isEmpty()){
        Covid_Info__c cI = new Covid_Info__c();
        cI.Name = string.valueOf(cIW.states);
        cI.Positive__c = cIW.positive;
        cI.Negative__c = cIW.negative;
        cI.Pending__c = cIW.pending;
        cI.Received_Date__c = date.Today();
        insert cI;
       }else if(!covidInfo.isEmpty()){
        covidInfo[0].Name = string.valueOf(cIW.states);
        covidInfo[0].Positive__c = cIW.positive;
        covidInfo[0].Negative__c = cIW.negative;
        covidInfo[0].Pending__c = cIW.pending;
        
        update covidInfo;
       }

       }
       return response;

    }
    }
