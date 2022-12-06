public  class DatetimeMethodsDemo {
   public void calculateAgeInMonths(){
    date birthDate = date.newInstance(1988, 12, 11);
    system.debug(' My birth day is ' +  birthDate);
    date todayDate = date.today();

   integer ageInMonth =  birthDate.monthsBetween(todayDate);
   system.debug( ' My age in month is ' + ageInMonth);

   }

   public void catculateAgeInDays(){
   date birthDate = date.newInstance(1988, 12, 11);
   date todayDate = date.today();
   integer ageInDays = birthDate.daysBetween(todayDate);
   system.debug(ageInDays);
   }

   public void printSubscriptionEndDate(){
    date subscriptionStartDate = date.today();
    date subscriptionEndDate = subscriptionStartDate.addDays(999);
    system.debug(subscriptionEndDate);

    date pastSubscriptionDate = subscriptionStartDate.addDays(-999);
    system.debug(pastSubscriptionDate);

    integer endDateYear = subscriptionEndDate.year();
    system.debug(endDateYear);

    integer endDayMonth = subscriptionEndDate.month();
    system.debug(endDayMonth);
   }

   public void printOfferEndDateTime(){
    datetime dtNow =datetime.now();
    datetime dtOfferEnd = dtNow.addHours(51);
    system.debug(dtOfferEnd);
   }
   public void birthdateInMilliSeconds(){
   datetime birthTime = datetime.newInstance(1988, 12, 11, 3, 30, 0);
   long longBirthDate = birthTime.getTime();
   system.debug( ' My Birth Date in long(milliseconds) is... ' + longBirthDate);
   }
   public void diffofDate(){
    date TomorrowDate = date.newInstance(2022, 11, 16);
    system.debug(' Tomorrow is ' + TomorrowDate);

    date TodayDate = date.today();
    system.debug(' Today is ' + TodayDate);

    integer DayBetween = TodayDate.daysBetween(TomorrowDate);
    system.debug( ' Between days is '+ DayBetween);
   }
   public void Timecheck(){
    datetime TomorrowDateTime = datetime.newInstance(2022, 11, 16, 7, 0, 0);
    system.debug(' Tomorrow Date and Time is ' + TomorrowDateTime);
    datetime Days10DateTime = datetime.newInstance(2022, 11, 26, 9, 0, 0);
    system.debug(Days10DateTime);

    long DateTimeLong = 12339874361L;
     datetime  longDatetime= datetime.newInstance(DateTimeLong);
    system.debug(DateTimeLong);

    datetime addDays = TomorrowDateTime.addDays(7);
    system.debug(TomorrowDateTime);
   }
}
