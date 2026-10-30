Particle[] parts;

void setup()
{
  size(400, 400);
  parts = new Particle[500];
  for (int i = 0; i < parts.length; i++)
  {
    parts[i] = new Particle();
  }
  parts[0] = new OddballParticle();
}

void draw()
{
  background(0);
  for (int i = 0; i < parts.length; i++)
  {
    parts[i].move();
    parts[i].show();
  }
}

class Particle
{
double myX, myY, myAngle, mySpeed;
int myColor;
Particle()
{
  myX = 200;
  myY = 200;
  myAngle = (Math.random()*2*Math.PI);
  mySpeed = (Math.random()*10);
  myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
}
void move()
{
   myX = myX + Math.cos(myAngle) * mySpeed;
  myY = myY + Math.sin(myAngle) * mySpeed;
}
void show()
{
  noStroke();
  fill(myColor);
  ellipse((float)myX, (float)myY, 5, 5);
}
  
}
class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = 200;
    myY = 200;
    myAngle = 0;
    mySpeed = 3;
    myColor = color(255, 255, 255);
  }

  void move()
  {
    myX = myX + (int)(Math.random() * 7) - 3;
    myY = myY + (int)(Math.random() * 7) - 3;
  }

  void show()
  {
    stroke(255, 0, 0);
    fill(myColor);
    rect((float)myX - 10, (float)myY - 10, 20, 20);
  }
}
  
  
  
  

