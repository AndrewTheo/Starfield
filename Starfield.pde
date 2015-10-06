//your code here

NormalParticle [] space = new NormalParticle[100];

void setup()
{
  //your code here
  size(700,500);
  background(0);
  noStroke();
  
  for(int i = 0; i < space.length; i++)
  {
    space[i] = new NormalParticle();
  }

}
void draw()
{
  //your code here
  if (frameCount%5 == 0)
  {
      background(0,0,0);
  }
 // background(0,0,0);
  for(int i=0; i < space.length; i++)
  {
    space[i].move();
    space[i].show();
  }

}
class NormalParticle
{
    
    double x,y;
    color c;
    double angle;
    double speed;

  //your code here
  NormalParticle()
  {
      x = 150;
      y = 150;
      angle = Math.random()*(2*PI);
      
      int rand = (int)(Math.random()*4);
      if (rand == 1)
      {
        speed = 10;
      }
      else if (rand == 2)
      {
        speed = 20;
      }
      else if (rand == 3)
      {
           speed = 30;
      }
      //speed = 30;
      
      
  }

  void move()
  {
    
    x = x + Math.cos((angle)*speed);
    y = y + Math.sin((angle)*speed);
    

    
  }

  void show()
  {
    //fill(255,0,0);
    //fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse((int)x,(int)y,10,10);
  }
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
