Dust[] tom; 
void setup()
{ 
  background(0); 
  size(600, 600); 
  tom = new Dust[500];
  for(int i = 2; i < tom.length; i++) {
    tom[i] = new ring(); 
  }
  tom[0] = new king(); 
  tom[1] = new jumboDust(); 
}
void draw()
{
  background(0);
    tom[0].show();
  for(int i = 2; i < tom.length; i++) {
    tom[i].show();
    ((ring)tom[i]).move(); 
  }

  tom[1].show(); 
  ((jumboDust)tom[1]).move();


}
class ring implements Dust
{

float x, y, angle, radiusX, radiusY, diameter;
ring()  
{ 

     angle = (float)(Math.random()*2*Math.PI); 
     radiusX = (float)(Math.random()*60) + 250;  
     radiusY = (float)(Math.random()*20) + 70; 
     diameter = 5; 
}    
public void show() 
{
 frameRate(200);
  if(y < 300 && x > 168 && x < 430) {
  noFill();
 } else{
 fill((int)(Math.random()*256), 255, 255);
 } 
 noStroke();
 ellipse(x, y, diameter, diameter); 

}
void move() { 
   frameRate(50);
   x = (float)(Math.cos(angle)*radiusX) + 300;
   y = (float)(Math.sin(angle)*radiusY) + 300; 
   angle++; 
  }
}

interface Dust
{
  public void show(); 
  public void move(); 
}
class king implements Dust 
{ 
king() {
}  
  public void show() {
  fill(0, 51, 102);
  ellipse(300, 300, 300, 300); 
  }
  public void move() {
    
  }
}
class jumboDust extends ring
{
jumboDust() { 
diameter = 25; 
}
  public void show() { 
if(y < 300 && x > 168 && x < 430) {
  noFill();
 } else{
 fill((int)(Math.random()*256), 255, 255);
 } 
  ellipse(x, y, diameter, diameter); 
  }
  public void move() { 
   frameRate(50);
   x = (float)(Math.cos(angle)*radiusX) + 300;
   y = (float)(Math.sin(angle)*radiusY) + 300; 
   angle++; 
  }
}

