
public  class PrimitiveDataTypeDemo2{
    public void printNewTime(){
        Time myTime = Time.newInstance(2, 15, 45, 55);
        system.debug('my time is '+ myTime);

        Time metime = time.newInstance(15, 9, 16, 0);
        system.debug('me time is '+ metime);

    }
    public void printNewDate(){
        Date myDate = Date.newInstance(2022, 12, 11);
        system.debug('my date is ' + myDate);
    }

    public void printNewDateTime(){
        Date newDate = date.today();
        Time newTime = Time.newInstance(2, 15, 45, 55);

        DateTime dt1 = Datetime.newInstance(newDate,newTime);
        system.debug('dt1 is ' + dt1);

        Datetime dt2 = Datetime.NewInstance(2001, 4, 14);
        system.debug('dt2 is ' + dt2);

    }
}