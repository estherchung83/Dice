int x = 30;
int y = 20;
void setup()
{
  size(700,700);
  noLoop();
  
}
void draw()
{

  for(int y = 20; y <= 580; y+=55)
{
  for(int x = 30; x <= 590; x+=55)
  {
    fill(255,255,255);
    rect(x, y, 56, 56, 7);
  }
   int num = 6;
    if (num==1)
    {
      fill(0);
      ellipse(58,48,9,9);
    } else if (num==2)
    {
      fill(0);
      ellipse(71,35,8,8);
      ellipse(45,61,8,8);
    } else if (num==3)
    {
      fill(0);
      ellipse(71,35,8,8);
      ellipse(58,48,8,8);
      ellipse(45,61,8,8);
    } else if (num==4)
    {
      fill(0);
      ellipse(71,35,8,8);
      ellipse(71,61,8,8);
      ellipse(45,61,8,8);
      ellipse(45,35,8,8);
    } else if (num==5)
    {
      fill(0);
      ellipse(71,35,8,8);
      ellipse(71,61,8,8);
      ellipse(45,61,8,8);
      ellipse(45,35,8,8);
      ellipse(58,48,8,8);
    } else 
    {
      fill(0);
      ellipse(71,35,8,8);
      ellipse(71,61,8,8);
      ellipse(45,61,8,8);
      ellipse(45,35,8,8);
      ellipse(45,48,8,8);
      ellipse(71,48,8,8);
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
     for(int y = 20; y <= 580; y+=55)
  {
  for(int x = 30; x <= 590; x+=55)
  {
    fill(255,255,255);
    rect(x, y, 56, 56, 7);
  }
   
  }
  }
}
