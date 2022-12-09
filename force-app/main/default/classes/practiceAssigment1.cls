public class practiceAssigment1 {
    public static list<account> stgName(string stg){
        list<account>listAcc_0 = new list<account>();
        list<account>listAcc = [select id, name, (select stagename from opportunities where stagename =: stg) from account];
        for(account eachAccount : listAcc){
            if (eachAccount.opportunities.size() > 0){
                listAcc_0.add(eachAccount);
            }
        }
        return listAcc_0;
        
    }
    
    }
   
