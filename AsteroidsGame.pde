Star[] spaceStar = new Star[200];
ArrayList <Bullet> shots = new ArrayList<Bullet>();
ArrayList <Asteroids> rocks = new ArrayList<Asteroids>();

Spaceship bob = new Spaceship();
public void setup() 
{
  size(500,500);
  for (int i = 0; i < spaceStar.length; i++)
  {
    spaceStar[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < spaceStar.length; i++)
  {
    spaceStar[i].show();
  }
  bob.show();
  bob.move();
  for(int i = 0; i < shots.size(); i++){
  shots.get(i).move();
  shots.get(i).show();
  float d = dist((float)shots.get(i).getCenterX(), (float)shots.get(i).getCenterY(), (float)rocks.get(i).getCenterX(), (float)rocks.get(i).getCenterY());
 if (d < 10)
 rocks.remove(i);
  }
  for(int i = 0; i < rocks.size(); i++){
  rocks.get(i).move();
  rocks.get(i).show();
  float d = dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)rocks.get(i).getCenterX(), (float)rocks.get(i).getCenterY());
 if (d < 10)
 rocks.remove(i);
}
  
}


public void keyPressed()
{
  if(key == '4')
  bob.turn(-5);
  else if (key == '6')
  bob.turn(5);
  else if(key == '5') // fires rockets to accelerate ship
  bob.accelerate(0.3);
 else if (key == '7')
  bob.hyperspace();
 else if (key == ' ')
  shots.add(new Bullet(bob));
}
