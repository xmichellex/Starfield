ring[] tom; 
void setup()
{ 
  background(0); 
  size(600, 600); 
  tom = new ring[100];
  for(int i = 0; i < tom.length; i++) {
    tom[i] = new ring(); 
  }
}
void draw()
{
  for(int i = 0; i < tom.length; i++) {
    tom[i].show(); 
    tom[i].move(); 
  }
  
}
class ring
{
int x, y; 
float angle, radiusX, radiusY;
ring()  
{ 
     angle = (float)(Math.random()*2*Math.PI); 
     radiusX = (float)(Math.random()*60) + 250;  
     radiusY = (float)(Math.random()*20) + 70; 
}    
void show() 
{
  frameRate(300);
  fill((int)(Math.random()*256), 255, 255); 
  strokeWeight(30); 
  ellipse(x, y, 5, 5); 
}
void move() { 
   frameRate(300);
   x = (int)(cos(angle)*radiusX) + 300;
   y = (int)(sin(angle)*radiusY) + 300; 
   angle++; 
  }
}

/*interface Particle
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
}*/

