/*
* Holds all info for our moving stars
*/

class Star
{
  private int x, y;
  private int size;
  
  private final int SPEED = 12;
  private final color WHITE = 255;
  
  public Star(int xPos, int yPos, int bigness)
  {
    x = xPos;
    y = yPos;
    size = bigness;
    
  }
  
 
  public void display()
  {
    noStroke();
    fill(WHITE);
    
    circle(x, y, size);
  }
  
  //moves the stars
  public void move()
  {
    x += SPEED;
    loopBack();
  }
  
  
  //makes the stars repeat
  private void loopBack()
  {
    if(x >= width+(width/4))
    {
      x = -width/4;
    }
  }
  
  
} //end of class - NO CODE PAST HERE
