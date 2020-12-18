class Asteroids extends Floater
{
  
  private double rotSpeed;
  public Asteroids(){
    corners = 9;
    int center = (int)Math.random()*500;
    int speed1 = (int)(Math.random()*11) - 5;
    int speed2 = (int)(Math.random()*11) - 5;
    int direction = (int)(Math.random()*360);
    rotSpeed = (Math.random()*10)-5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    myColor = color(255);
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myCenterX = myCenterY = center;
    myXspeed = speed1;
    myYspeed = speed2;
    myPointDirection = direction;
  }
 public void move()
 {
   fill(myColor);
   turn(rotSpeed);
   super.move();
 }
 public double getCenterX(){return myCenterX;}
  public double getCenterY(){return myCenterY;}
}
