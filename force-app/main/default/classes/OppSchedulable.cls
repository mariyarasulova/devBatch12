public  class OppSchedulable implements schedulable{
    public void execute(SchedulableContext sc){
        OppBathc Opp = new OppBathc();
        database.executebatch(Opp,10);
    }
}
