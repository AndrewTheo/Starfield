///your code here

NormalParticle [] space = new NormalParticle[300];

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

      
      speed = Math.random()*1.5;
      strokeWeight(2);
      
     
  }

  void move()
  {
    
   
     if(frameCount%100 == 0)
  {
//    x = 350;
//    y = 250;
     x = 300;
     y = 300;
  }
   
   
   
    println(speed);
    x = x + Math.cos(angle)*speed;
    y = y + Math.sin(angle)*speed;
    

    
  }

  void show()
  {
    //fill(255,0,0);
    //fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    //ellipse((int)x,(int)y,10,10);
    //strokeWeight(2);
    stroke(255,255,0);

    point((float)x,(float)y);
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
