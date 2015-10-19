ring[] tom; 
void setup()
{ 
  background(255); 
  size(600, 600); 
  tom = new ring[100];
  for(int i = 0; i < tom.length; i++) {
    tom[i] = new ring(); 
  }
}
void draw()
{
  for(int i = 0; i < tom.length; i++) {
    tom[i].move(); 
    tom[i].show(); 
  }
  
}
class ring
{
int x, y; 
float angle, radiusX, radiusY;
ring()  
{ 
     x = y =300;
     angle = (float)(Math.random()*2*Math.PI); 
     radiusX = (float)(Math.random()*60) + 250;  
     radiusY = (float)(Math.random()*20) + 70; 
}    
void show() 
{
  //frameRate(300);
 fill((int)(Math.random()*256), 255, 255); 
 ellipse(x, y, 5, 5); 
}
void move() { 
  // frameRate(300);
   x = (int)(Math.cos(angle)*radiusX) + 300;
   y = (int)(Math.sin(angle)*radiusY) + 300; 
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

