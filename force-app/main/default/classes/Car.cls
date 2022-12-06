public  class Car {
   public string carColor = ' ';
   public string carName;
   private integer maxSpeed = 150;
   public void switchOn(){
    system.debug('Starting the car');
 }  
 public void drive(){
   system.debug(' Driving ' + carName + carColor);
 } 

 public void driveAtMaxSpeed(){
   string drivingDescription = ' Driving ' + carName + ' at ' + maxSpeed + ' km/h ';
   system.debug(drivingDescription);
 }
}
