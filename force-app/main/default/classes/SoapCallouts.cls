public with sharing class SoapCallouts {
    public static String[] parksCallout(String country){
        ParksServices.ParksImplPort parkService = new ParksServices.ParksImplPort();
        string[] parks = parkService.byCountry(country);
        System.debug(parks);
        return parks;
    }
    public static Double doAddCallout(Double arg0, Double arg1){
        CalculatorServices.CalculatorImplPort doAddServise = new CalculatorServices.CalculatorImplPort();
        Double result = doAddServise.doAdd(arg0, arg1);
        System.debug(result);
        return result;

    }
    public static Double doMultipleCallout(Double arg0, Double arg1){
        CalculatorServices.CalculatorImplPort doMultiplyService = new CalculatorServices.CalculatorImplPort();
        Double result = doMultiplyService.doMultiply(arg0, arg1);
        System.debug(result);
        return result;
    }
    public static Double doDevideCallout(Double arg0, Double arg1){
        CalculatorServices.CalculatorImplPort doDevideService = new CalculatorServices.CalculatorImplPort();
        Double result = doDevideService.doDivide(arg0, arg1);
        System.debug(result);
        return result;
    }
}