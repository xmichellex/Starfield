ring[] tom; 
void setup()
{ 
  background(0); 
  size(600, 600); 
  tom = new ring[1000];
  for(int i = 0; i < tom.length; i++) {
    tom[i] = new ring(); 
  }
}
void draw()
{
  background(0);
  for(int i = 0; i < tom.length; i++) {
    tom[i].move(); 
    tom[i].show(); 
  }
  
}
class ring
{

float x, y, angle, radiusX, radiusY;
ring()  
{ 

     angle = (float)(Math.random()*2*Math.PI); 
     radiusX = (float)(Math.random()*60) + 250;  
     radiusY = (float)(Math.random()*20) + 70; 
}    
void show() 
{
  frameRate(200);
 fill((int)(Math.random()*256), 255, 255); 
 noStroke();
 ellipse(x, y, 5, 5); 
}
void move() { 
   frameRate(200);
   x = (float)(Math.cos(angle)*radiusX) + 300;
   y = (float)(Math.sin(angle)*radiusY) + 300; 
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

