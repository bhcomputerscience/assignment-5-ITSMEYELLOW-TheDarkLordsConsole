/*
* Holds all info for our rocket with Second on it that follows the cursor
*/

class Rocket
{
  private int x;
  
  private final color GREY = 100;
  private final color DARK_GREY = 80;
  private final color ORANGE = #ff6600;
  private final color OUTER_FLAME = 200;
  private final color INNER_FLAME = 160;
  
  public Rocket(int xPos)
  {
    x = xPos;
  }
  
  public void display()
  {
    //setup for the rocket
    noStroke();
    fill(GREY);
    
    //the rocket 
    ellipse(x+80, 400, 100, 40); //body
    rect(x+110, 390, 20, 20); //tail end
    fill(DARK_GREY);
    triangle(x+22, 400, x+52, 422, x+52, 378); //nose cone
    triangle(x+100, 384, x+130, 395, x+135, 375); //top fin
    triangle(x+100, 416, x+130, 405, x+135, 425); //bottom fin
    
    //setup for rocket flame
    fill(OUTER_FLAME);
    
    //rocket flame
    circle(x+145, 400, 20);
    triangle(x+145, 390, x+145, 410, x+180, 400);
    
    //setup for the inside of the rocket flame
    fill(INNER_FLAME);
    
    //inside of the rocket flame
    circle(x+145, 400, 10);
    triangle(x+145, 395, x+145, 405, x+165, 400);
    
    //setup for Second on the rocket
    noFill();
    stroke(ORANGE);
    strokeWeight(4);
    
    //Second
    circle(x+70, 350, 20); //Second's head
    line(x+73, 360, x+85, 380); //torso
    line(x+85, 380, x+75, 395); //upper leg
    line(x+75, 395, x+81, 410); //lower leg
    line(x+73, 360, x+68, 386); //arm
    line(x+73, 360, x+64, 382); //other arm (the one in the back)
    
    //setup for Second's hat
    noStroke();
    fill(DARK_GREY);
    
    //Second's hat
    ellipse(x+70, 342, 40, 10); //brim of the hat
    ellipse(x+66, 337, 12, 20); //front bump
    ellipse(x+74, 337, 15, 20); //back bump
  }
  
  
  public void move(int xPos)
  {
    if(xPos != x)
    {
      x = xPos;
    }
  }
  
  
} //end of class - NO CODE PAST HERE
