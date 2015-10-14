swirl[] tom; 
void setup()
{ 
  background(0); 
  size(600, 600); 
  tom = new swirl[100];
  for(int i = 0; i < tom.length; i++) {
    tom[i] = new swirl(); 
  }
}
void draw()
{
  for(int i = 0; i < tom.length; i++) {
    tom[i].show(); 
    tom[i].move(); 
  }
  
}
class swirl
{
float x, y, angle, radiusX, radiusY;
swirl()  
{
     angle = (float)(Math.random()*2*PI); 
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
   x = cos(angle)*radiusX + 300;
   y = sin(angle)*radiusY + 300; 
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

