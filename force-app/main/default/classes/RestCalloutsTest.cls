@isTest
public with sharing class RestCalloutsTest {
    @isTest 
    private static void getAnimalsTest(){
        //1. Set the mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the mock
        HttpResponse responce = RestCallouts.getAnimals();

        //3. Run asserts
        System.assertEquals(200, responce.getStatusCode());
        System.assertEquals('OK', responce.getStatus());
    }
    @isTest
    private static void getAirlinesTest(){
        //1.Set the mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);
        //2. Test the mock
        HttpResponse responce = RestCallouts.getAirlines();

        //3. Run asserts
        System.assertEquals(200, responce.getStatusCode());
        System.assertEquals('OK', responce.getStatus());

    }
    @isTest
    private static void getEmployeesTest(){
        //1. Set the mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the mock
        HttpResponse responce = RestCallouts.getEmployees();

        //3. Run asserts
        System.assertEquals(200, responce.getStatusCode());
        System.assertEquals('OK', responce.getStatus());

    }
    
        
    }
