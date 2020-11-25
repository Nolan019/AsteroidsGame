Star[] spaceStar = new Star[200];
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
}
