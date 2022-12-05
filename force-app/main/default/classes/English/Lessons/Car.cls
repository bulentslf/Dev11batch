public class Car {
  public string carColor = '';
  public string carName = '';
  private integer maxSpeed = 150;
  // method
   public void switchOn(){
    // method body
     system.debug('starting the car');

   }
   public void drive(){
    system.debug('driving the car' + carName + ' of color ' + carColor);

   }
   public void driveAtMaxSpeed(){
    string drivingDescription = ' Driving ' + carName + ' at ' + maxSpeed + ' km/hr';
    System.debug(drivingDescription);
   }
    }

