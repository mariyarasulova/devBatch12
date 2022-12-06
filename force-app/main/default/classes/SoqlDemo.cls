public class SoqlDemo {
    public static void accountSOQL_1(){
     list<Account> listAcc = [Select ID, Name from Account Where Name like '%A%'];
     system.debug('account list ' + listAcc);   
    }


    public static void accountSOQL_11(){
    Account acc = [ Select ID, Name, Phone from Account order by createddate desc limit 1];
    system.debug('latest created account is ' + acc);
}

   public static void accountSOQL_2(){
    Account acc = [Select ID, Name, Phone, AccountNumber from Account order by createddate desc limit 1];
    system.debug('latest created account is ' + acc);
    string accName = acc.Name;
    string accPhone = acc.Phone;
    system.debug('accName =  ' + accName + ', phone is '+ accPhone);
    system.debug('account number is ' + acc.AccountNumber);
   }



   public static void accountSOQL_3(){
    list<Account> listAcc = [Select ID, Name, Phone, AccountNumber from Account order by createddate desc];
    system.debug('all created account is ' + listAcc);
    for(Account eachAcc : listAcc){
        string accName = eachAcc.Name;
    string accPhone = eachAcc.Phone;
    system.debug('accName =  ' + accName + ', phone is '+ accPhone + 'account number is ' + eachAcc.AccountNumber);
   
   }


}
public static void accountSOQL_filter(string accNameFilter){
    list<account>listAcc = [select ID, name, phone from account where name = :accNameFilter];
    system.debug('filtered account --> '+ listAcc); 
}

public static void accountSOQL_filter(list <string>  accNames){
list<account>listAcc = [select ID, name, phone from account where name IN :accNames];   
system.debug('filtered account --> '+ listAcc); 

}
}