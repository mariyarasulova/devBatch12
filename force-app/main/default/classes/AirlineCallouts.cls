public with sharing class AirlineCallouts {

    //Endpoint: https://api.instantwebtools.net/v1/airlines
    //Http Method: POST
    @future(callout=true)
    public static void postAirline(Id airlineId){
//1. Prepare Http request and wrap all neccessary data in it
HttpRequest request = new HttpRequest();
request.setEndpoint('https://api.instantwebtools.net/v1/airlines');
request.setMethod('POST');

//1.1 Get Airline detail and prepare the same as json body
Airlines__c airline = [SELECT Name, Country__c, Established__c, Head_Quaters__c, Logo_URL__c, Name__c, Slogan__c, WebSite__c 
                      FROM Airlines__c 
                      WHERE Id = : airlineId LIMIT 1];
 Airlinewrapper wrap = convertToWrapper(airline);   
 String body = JSON.serialize(wrap);
 request.setBody(body);
 request.setHeader('Content-Type', 'application/json;charset=UTF-8');                  

//2. Prepare Internet
Http http = new Http();

//3. Sent tha HttpRequest over the internet in order to receive HttpResponse back
HttpResponse response = http.send(request);

//4. Process HttpResponse
Application_log__c log = new Application_log__c();
log.Clas_Method__c = 'AirlineCallouts: postAirline - ' + airlineId;
log.Exception_Type__c = 'Success';
log.Exception_Message__c = response.getStatusCode() + ' ' + response.getStatus();
log.Stack_Trace__c = response.getBody();
insert log;


    }
   private static Airlinewrapper convertToWrapper(Airlines__c airline){
    Airlinewrapper wrap = new Airlinewrapper();
    wrap.country = airline.Country__c;
    wrap.established = airline.Established__c;
    wrap.head_quaters = airline.Head_Quaters__c;
    wrap.id = airline.Name;
    wrap.logo = airline.Logo_URL__c;
    wrap.name = airline.Name__c;
    wrap.slogan = airline.Slogan__c;
    wrap.website = airline.WebSite__c;
    return wrap;
    }
}