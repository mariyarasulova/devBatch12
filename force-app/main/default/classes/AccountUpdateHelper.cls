public  class AccountUpdateHelper {
    @invocableMethod
    public static void updateAccountWebsite(list<id>accIds){
        list<account> listAcc = [select id, website from account where id in : accIds];
        for(account eachAcc : listAcc){
            eachAcc.website = 'www.softinnovas.com';

        }
        update listAcc;
    }
}
