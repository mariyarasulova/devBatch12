public with sharing class ValidateAddress {
    public  void validateHomeAddress(){
        string houseName = 'My house';
        string streetName = 'Andalusian Trl';
        string cityName = 'Celina';
        string stateName = 'Texas';
        string stateISOCode ='TX';
        string countryName = 'USA';
        string countryISOCode = 'US';
        integer numberLetter = streetName.length();
        System.debug(numberLetter);
    }
}