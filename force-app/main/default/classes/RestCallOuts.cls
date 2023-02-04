public with sharing class RestCallOuts {
    //Endpoint: https://th-apex-http-callout.herokuapp.com/animals
    //Http Method: GET  
    public static HttpResponse getAnimals(){
        //1. Prepare Http request and wrap all neccessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        //2. Prepare Internet
        Http http = new Http();

        //3. Sent tha HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process HttpResponse
        System.debug(response.getStatusCode());
        System.debug(response.getBody());
        return response;

    }

    //Endpoint: https://api.instantwebtools.net/v1/airlines
    //Http Mergod : GET
    public static HttpResponse getAirlines(){
       //1. Prepare Http request and wrap all neccessary data in it
       HttpRequest request = new HttpRequest();
       request.setEndpoint('https://api.instantwebtools.net/v1/airlines');
       request.setMethod('GET');
       //2. Prepare Internet
       Http http = new Http();
       //3. Sent tha HttpRequest over the internet in order to receive HttpResponse back
       HttpResponse response = http.send(request);

       //4. Process HttpResponse
       if(response.getStatusCode()==200){
        String jsonString = response.getBody();
        //convert the response body into list of Airlines__c
        list<Airlinewrapper> wrappers = (list<Airlinewrapper>)JSON.deserialize(jsonString, list<Airlinewrapper>.class);
        //convert the wrappers into list<Airline__c>
        list<Airlines__c> airlines = new list<Airlines__c>();
        for(Airlinewrapper aw : wrappers){
            if(aw.id != null && aw.id.length()<3){
            Airlines__c airline = new Airlines__c();
            airline.Name = aw.id;
            airline.Country__c = aw.country;
            airline.Established__c = aw.established;
            airline.Head_Quaters__c = aw.head_quaters;
            airline.Logo_URL__c = aw.logo;
            airline.Slogan__c = aw.slogan;
            airline.Name__c = aw.name; 
            airline.WebSite__c = aw.website;
            airlines.add(airline);
            }
        }
        try{
            insert airlines;
        }catch(Exception ex){
            System.debug(ex.getMessage());
        }
       }
       return response;
    }
    //Endpoint: https://api.onlinewebtutorblog.com/employees
    //Http Method :GET

    public static HttpResponse getEmployees(){

    
    //1. Prepare Http request and wrap all neccessary data in it
    HttpRequest request = new HttpRequest();
    request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
    request.setMethod('GET');
    //2. Prepare Internet
    Http http = new Http();

    //3. Sent tha HttpRequest over the internet in order to receive HttpResponse back
    HttpResponse response = http.send(request);

    //4. Process HttpResponse
    if(response.getStatusCode()==200){
    String jsonString = response.getBody();
    // convert jsonString to emloyee Response class
    EmployeeResponse empRes = (EmployeeResponse)JSON.deserialize(jsonString, EmployeeResponse.class);
    list< EmployeeResponse.EmployeeWrapper> wrappers = empRes.data;
    //convert each Employeewrapper into Employee__c sObject record
    List< Employee__c> employees = new List<Employee__c>();
    for(EmployeeResponse.EmployeeWrapper wrap : wrappers){
        Employee__c emp = new Employee__c();
        emp.Name = String.valueOf(wrap.id);
        emp.Username__c = wrap.username;
        emp.Employee_Name__c = wrap.name;
        emp.Email__c = wrap.email;
        emp.Gender__c = wrap.gender;
        emp.Designation__c = wrap.designation;
        emp.Phone_Number__c = wrap.phone_number;
        emp.Complete_Address__c = wrap.complete_address;
        employees.add(emp);
    }
    try{
        insert employees;
    }catch(Exception ex){
        System.debug(ex.getMessage());

        }
    }
    
    return response;
}

//Endpoint: https://mariya3-dev-ed.my.salesforce.com/services/apexrest/Cases/0034x00001EnKT4AAN
//Http Method: GET

public static HttpResponse getCasesUsingNC(){
//1. Prepare Http request and wrap all neccessary data in it
HttpRequest request = new HttpRequest();
request.setEndpoint('callout:NC_Dev_Account/services/apexrest/Cases/0034x00001EnKT4AAN');
request.setMethod('GET');

//2. Prepare Internet
Http http = new Http();

//3. Sent tha HttpRequest over the internet in order to receive HttpResponse back
HttpResponse response = http.send(request);

//4. Process HttpResponse
System.debug(response.getStatusCode());
System.debug(response.getStatus());
System.debug(response.getBody());
return response;
}


//Endpoint:https://th-apex-http-callout.herokuapp.com/animals
//Http Method : POST
public static HttpResponse postAnimal(){
//1. Prepare Http request and wrap all neccessary data in it
HttpRequest request = new HttpRequest();
request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
request.setMethod('POST');
String body = '{"name" : "mighty moose"}';
request.setBody(body);
request.setHeader('Content-Type', 'application/json; charset = UTF-8');
//2. Prepare Internet
Http http = new Http();

//3. Sent tha HttpRequest over the internet in order to receive HttpResponse back
HttpResponse response = http.send(request);

//4. Process HttpResponse
if(response.getStatusCode()==201){
    System.debug('Request has been processes successfully');
}else{
    System.debug('Something went wrong while creating animal info: ' + response.getBody());
}
return response;
    }
}