particle[] tom;
star[] starLight;  
void setup()
{ 
  background(0); 
  size(600, 600); 
  tom = new particle[500];
  for(int i = 2; i < tom.length; i++) {
    tom[i] = new dust(); 
  }
  tom[0] = new planet(); 
  tom[1] = new jumboParticle(); 
  starLight = new star[200];
  for(int i = 0; i < starLight.length; i++) {
    starLight[i] = new star(); 
  }

}

void draw()
{
  background(0);
    for(int i = 0; i < starLight.length; i++) {
  starLight[i].display();  
}

    tom[0].show();
    tom[0].move(); 
  for(int i = 2; i < tom.length; i++) {
    tom[i].show();
    ((dust)tom[i]).move(); 
  }

  tom[1].show(); 
  ((jumboParticle)tom[1]).move();


}
class dust implements particle
{

float x, y, angle, radiusX, radiusY, diameter;
dust()  
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

interface particle
{
  public void show(); 
  public void move(); 
}
class planet implements particle 
{ 
  int planetX, planetY; 
planet() {
  planetX = 300; 
  planetY = 300; 
}  
  public void show() {
  fill(0, 51, 102);
  ellipse(planetX, planetY, 300, 300); 
  }
  public void move() {
    planetY = planetY + (int)(Math.random() *2); 
    if(planetY < 290) {
      planetY = planetY + (int)(Math.random()*2);
    } else if (planetY > 310) { 
      planetY = planetY - (int)(Math.random()*2); 
    }


  }
}
class jumboParticle extends dust
{
jumboParticle() { 
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
class star { 
float starX, starY, triangleWidth, triangleHeight; 
star() { 
starX = (int)(Math.random()*600); 
starY = (int)(Math.random()*600); 
triangleWidth = (int)(Math.random()*5)+2;
triangleHeight = triangleWidth*sqrt(3); 
}
void display() { 
noStroke(); 
fill(255, 255, 154); 
triangle(starX, starY, starX+triangleWidth, starY + triangleWidth*sqrt(3), starX-triangleWidth, starY + triangleWidth*sqrt(3)); 
triangle(starX, starY + triangleHeight/3 + triangleHeight, starX+triangleWidth, starY + triangleHeight/3, starX-triangleWidth, starY + triangleHeight/3);  
}

  




}

