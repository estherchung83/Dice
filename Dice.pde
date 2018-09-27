
void setup()
{
  size(900,800);
  noLoop();
  
}
void draw()
{

  for(int y = 35; y <= 580; y+=60)
  {
    for(int x = 35; x <= 590; x+=60)
    {
      Die ex = new Die(x,y);
      ex.show();
    }
  }
}


void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int dx, dy;
  Die(int x, int y) //constructor
  {
    dx = x;
    dy = y;
  }
  void roll()
  {
 
    
  }
  void show()
  {
    fill(255,255,255);
    rect(dx, dy, 56, 56, 7);
    int num = (int)(Math.random()*6)+1;
    if (num==1)
    {
      fill(0);
      ellipse(dx+28,dy+28,9,9);
    } else if (num==2)
    {
      fill(0);
      ellipse(dx+41,dy+15,8,8);
      ellipse(dx+15,dy+41,8,8);
    } else if (num==3)
    {
      fill(0);
      ellipse(dx+41,dy+15,8,8);
      ellipse(dx+28,dy+28,8,8);
      ellipse(dx+15,dy+41,8,8);
    } else if (num==4)
    {
      fill(0);
      ellipse(dx+41,dy+15,8,8);
      ellipse(dx+41,dy+41,8,8);
      ellipse(dx+15,dy+41,8,8);
      ellipse(dx+15,dy+15,8,8);
    } else if (num==5)
    {
      fill(0);
      ellipse(dx+41,dy+15,8,8);
      ellipse(dx+41,dy+41,8,8);
      ellipse(dx+15,dy+41,8,8);
      ellipse(dx+15,dy+15,8,8);
      ellipse(dx+28,dy+28,8,8);
    } else 
    {
      fill(0);
      ellipse(dx+41,dy+15,8,8);
      ellipse(dx+41,dy+41,8,8);
      ellipse(dx+15,dy+41,8,8);
      ellipse(dx+15,dy+15,8,8);
      ellipse(dx+15,dy+28,8,8);
      ellipse(dx+41,dy+28,8,8);
    }
  }
   
  
  
}
