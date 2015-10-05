//your code here

NormalParticle [] space = new NormalParticle[100];

void setup()
{
	//your code here
	size(300,300);
	
	for(int i = 0; i < space.length; i++)
	{
		space[i] = new NormalParticle();
	}

}
void draw()
{
	//your code here
	for(int i=0; i < space.length; i++)
	{
		space[i].move();
		space[i].show();
	}

}
class NormalParticle
{
		
		int x,y;
		color c;
		int angle;
		int speed;

	//your code here
	NormalParticle()
	{
	    x = 150;
		y = 150;
	    angle = 100;
	    speed = 25;

	}

	void move()
	{

		x = x + (int)Math.cos((angle)*speed);
		y = y + (int)Math.sin((angle)*speed);
		

		println("x: "+x);
		println("y: "+y);


		println("Math.cos(angle)*speed: "+Math.cos((angle)*speed));
		println("Math.sin(angle)*speed: "+Math.sin((angle)*speed));
	}

	void show()
	{
		fill(255,0,0);
		ellipse(x,y,25,25);
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

