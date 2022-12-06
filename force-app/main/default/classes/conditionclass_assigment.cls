public  class conditionclass_assigment {
    public string ifClassmethod(integer Month){
    string output_Month ='';

    if (Month == 1){
        output_Month = ' January'; 
    } else if (Month == 2){
        output_Month = ' February';
    } else {
        output_Month = ' Not a valid Month';
    }
    return output_Month;
    } 

    public string caseMerhod(string Quater){
        string output_Quater = ' Enter a proper Month Name';

        if (Quater == 'January' || Quater == 'February' || Quater == 'March'){
            output_Quater = ' Quater 1';

        } else{
            output_Quater = 'Not a valid Quater';
        }
        return output_Quater;
    }
  

}
