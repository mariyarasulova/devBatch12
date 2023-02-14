//CallOut Test
RestCallOuts.getAnimals();
RestCallOuts.getAirlines();
RestCallOuts.getEmployees();
RestCallOuts.getCasesUsingNC();
RestCallOuts.postAnimal();
HttpResponse response = CividInfoCallout.getCovidInfo();
system.debug(response);

SoapCallouts.parksCallout('United States');
SoapCallouts.doAddCallout(12,4);
SoapCallouts.doMultipleCallout(12,4);
SoapCallouts.doDevideCallout(100,2);
//Solution Design
