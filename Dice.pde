Die di;
void setup()
{
  noLoop();
  size(200, 200);
  di=new Die(100, 100);
}
void draw()
{
  //your code here
  background(0);
for(int x = 0; x<=200;x+=20)
  for (int y=0;y<=200;y+=20)
  {
    di=new Die(x, y);
    di.show();
    di.roll();
  }
   
  
 
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int mx; 
  int my; 
  int dots;
  Die(int x, int y) //constructor

  {

    mx=x;
    my=y;
    dots=0;
  }
  void roll()
  {
    //your code here
    
    if (Math.random()<.16) {
      fill(255, 0, 0);
      ellipse(mx, my, 5, 5);
    }
    
    else if (Math.random()<.32) {
      fill(255, 0, 0);
      ellipse(mx, my, 5, 5);
      ellipse(mx+5, my, 5, 5);
      
    }
     else if
     (Math.random()<.48) {
      fill(255, 0, 0);
      ellipse(mx, my, 5, 5);
      ellipse(mx+5, my, 5, 5);
      ellipse(mx, my+5, 5, 5);
    }
    else if
     (Math.random()<.64) {
      fill(255, 0, 0);
      ellipse(mx, my, 5, 5);
      ellipse(mx+5, my, 5, 5);
      ellipse(mx, my+5, 5, 5);
      ellipse(mx+5, my+5, 5, 5);
   
    }
     else if
     (Math.random()<.80) {
      fill(255, 0, 0);
      ellipse(mx, my, 5, 5);
      ellipse(mx+5, my, 5, 5);
      ellipse(mx, my+5, 5, 5);
      ellipse(mx+5, my+5, 5, 5);
      ellipse(mx, my+10, 5, 5);
   
    }
    else if
     (Math.random()<.96) {
      fill(255, 0, 0);
      ellipse(mx, my, 5, 5);
      ellipse(mx+5, my, 5, 5);
      ellipse(mx, my+5, 5, 5);
      ellipse(mx+5, my+5, 5, 5);
      ellipse(mx, my+10, 5, 5);
      ellipse(mx+5, my+10, 5, 5);
      
    }
    
  }
  void show()
  {
    //your code here
    fill(255, 255, 255);
    rect(mx-8, my-8, 20, 20);
  }
}


