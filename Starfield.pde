

//NormalParticle [] space = new NormalParticle[300];
Particle [] space = new Particle[302];


void setup()
{
  //your code here
  size(500,500);
  background(0);
  noStroke();
  
  for(int i = 0; i < 300; i++)
  {
    space[i] = new NormalParticle();
  }
  
  space[300] = new OddballParticle();
  space[301] = new JumboParticle();

}
void draw()
{
  //your code here
  if (frameCount%7 == 0)
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
class NormalParticle implements Particle
{
    
    double x,y;
    color c;
    double angle;
    double speed;
    int pick;
    
    
    int r;
    int g;
    int b;

  //your code here
  NormalParticle()
  {
      x = 250;
      y = 250;
      angle = Math.random()*(2*PI);

      speed = Math.random()*2.5;
      
      
        r =  (int)(Math.random()*255);
        g =  (int)(Math.random()*255);
        b =  (int)(Math.random()*255);
    
      
     
  }

  public void move()
  {
    
   
     if(frameCount%300 == 0)
    {
     
        x = 250;
        y = 250;
        angle = Math.random()*(2*PI);
        speed = Math.random()*2.5;
    
    }
   
   
   
   
    x = x + Math.cos(angle)*speed;
    y = y + Math.sin(angle)*speed;
    

    
  }

  public void show()
  {
    //fill(255,0,0);
    //fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    //ellipse((int)x,(int)y,10,10);
    //strokeWeight(2);
    stroke(r,g,b);
     fill(r,g,b);
    
    ellipse((float)x,(float)y,(float)4,(float)4);
  }
}


interface Particle
{
  //your code here
  public void move();
  public void show();
}



class OddballParticle implements Particle //uses an interface
{
    double Oddx,Oddy;
    color c;
    double angle;
    double speed;
    
    int Oddr;
    int Oddg;
    int Oddb;
 
 
  OddballParticle()
  {
      Oddx = 250;
      Oddy = 250;
      angle = Math.random()*(2*PI);
      speed = Math.random()*2.5;
      
       
        Oddr =  (int)(Math.random()*255);
        Oddg =  (int)(Math.random()*255);
        Oddb =  (int)(Math.random()*255);
    
      
      
      
      
  }
  public void move()
  {
    
     if(frameCount%300 == 0)
     {
        Oddx = 250;
        Oddy = 250;
        //angle = Math.random()*(2*PI);
        //speed = Math.random()*2.5;
           Oddr =  (int)(Math.random()*255);
        Oddg =  (int)(Math.random()*255);
        Oddb =  (int)(Math.random()*255);
     }
     
     if(frameCount%25 == 0)
     {
        angle = Math.random()*(2*PI);
        //fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
        speed = Math.random()*2.5;
     }
     
    Oddx = Oddx + Math.cos(angle)*speed;
    Oddy = Oddy + Math.sin(angle)*speed;
    
  }
  public void show()
  {
    fill(Oddr,Oddg,Oddb); 
    ellipse((float)Oddx,(float)Oddy,(float)20,(float)20);
  }
}
class JumboParticle extends NormalParticle //uses inheritance
{
  
  int Jumbor;
  int Jumbog;
  int Jumbob;
  
  JumboParticle()
  {
        Jumbor =  (int)(Math.random()*255);
        Jumbog =  (int)(Math.random()*255);
        Jumbob =  (int)(Math.random()*255);
  }
  void show()
  {
    fill(Jumbor,Jumbog,Jumbob);
    ellipse((float)x,(float)y,(float)35,(float)35);
  }
  
    
}
