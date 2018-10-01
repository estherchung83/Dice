
int total = 1000;
void setup()
{
  background(#E58686);
  size(900,800);
  noLoop();
  
}
void draw()
{
  int sum = 0;
  for(int y = 35; y <= 580; y+=60)
  {
    for(int x = 35; x <= 590; x+=60)
    {
      Die ex = new Die(x,y);
      ex.show();
      sum = sum + ex.num;
    }
  }
 
  if ( sum > 340)
  {
    total = total + 400;
  } else 
  {
    total = total - 650;
  }
  table();
  rule();
  fill(0);
  textSize(32);
  text("Total of Dice:",335,680);
  text(sum,335,730);
  text("Your Amount:", 50,680);
  text("$" + total, 50,730);
}
void table()
{
  fill(#BFBDBD);
  rect(40,645,230,120);
  rect(330,645,230,120);
}
void rule()
{
  String s = "Roll over a total of 340 to win $400. Roll less than the total you lose $650";
  textSize(29);
  fill(0);
  text("How Game Works:",640,60);
  textSize(22);
  text(s, 650,80,250,400);
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int dx, dy, num;
  Die(int x, int y) //constructor
  {
    num = (int)(Math.random()*6)+1;
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
