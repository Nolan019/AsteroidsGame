class Bullet extends Floater{
public Bullet(Spaceship ship){
  myCenterX = ship.getCenterX();
  myCenterY = ship.getCenterY();
  myXspeed = ship.getXspeed();
  myYspeed = ship.getYspeed();
  myPointDirection = ship.getPoint();
  accelerate(6);
}
public void show(){
  
  ellipse((float)myCenterX,(float)myCenterY,10,10);
}
public double getCenterX(){return myCenterX;}
   public double getCenterY(){return myCenterY;}
}
