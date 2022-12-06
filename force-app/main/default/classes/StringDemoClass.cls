//DDEPLOY
public  class StringDemoClass {
   public void stringMethod1(){
    string sessionDescription = 'learning string methods in apex language';
    system.debug(sessionDescription);

    integer sessionStrLength = sessionDescription.length();
    system.debug('length of session description string is...' + sessionStrLength);
    string capsSessionDesc = sessionDescription.toUpperCase();
    system.debug('in capital->' + capsSessionDesc);

    Boolean containsApex = sessionDescription.contains('apex');
    system.debug('contains apex??' + containsApex);

    Boolean containsSF = sessionDescription.contains('saleforce');
    system.debug('conteins SF' + containsSF);

    Boolean containsApex3 = sessionDescription.containsIgnoreCase('Apex');
    system.debug('contains idnore case Apex???' + containsApex3);
   }
}
