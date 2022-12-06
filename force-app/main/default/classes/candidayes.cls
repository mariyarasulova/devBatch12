public class candidayes {
   public  string name;
   public string gender;
   public static string companyName;
   public static integer countCandidates = 0;

   public void printCandidates(){
    system.debug('name of candidate is ' + name + ', gender is ' + gender);
    system.debug('company name is ' + companyName);
   }
   //we can accses static members in static method.
   public static void printCandidateInfo(){
    system.debug('company name is static method is '+ companyName);
   }
}

