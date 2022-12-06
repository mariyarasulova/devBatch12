public  class PrimitiveDataTypeDemo3 {
   public void printNewDateTime(){
    Datetime dt3 =datetime.newInstance(2021, 7, 8, 9, 10,11);
    system.debug('dt3 is ' + dt3);
     Long longtime = 1341828183000L;
    DateTime dt4 = datetime.newInstance(longtime);
    system.debug('dt4 ==> ' + dt4);
    Datetime dt4_1 = datetime.newInstance(300000);
    system.debug('dt 4.1==> ' + dt4_1);

    datetime dt6 = datetime.now();
    system.debug(' dt6 ==> ' + dt6);

    datetime dt5 = datetime.newInstanceGmt(1998, 5, 24, 5, 8, 10);
    system.debug( 'dt5 is==> '+ dt5);
   }
}
