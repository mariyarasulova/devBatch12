public  class collections {
  

public static string listassigment(integer i){
    list<string>LstMonth = new list<string>();
    string output_month= '';
    string errorMessage = 'Not a valid Month.';
    LstMonth.add('January');
    LstMonth.add('February');
    LstMonth.add('March');
    LstMonth.add('April');
    LstMonth.add('May');
    LstMonth.add('June');
    LstMonth.add('July');
    LstMonth.add('August');
    LstMonth.add('September');
    LstMonth.add('October');
    LstMonth.add('November');
    LstMonth.add('December');
    
    If(i>LstMonth.size()){
        system.debug(errorMessage);
        return errorMessage;
    }else
        output_month = LstMonth.get(i-1);
        system.debug(output_month);
        return output_month;
    
   

}
}
