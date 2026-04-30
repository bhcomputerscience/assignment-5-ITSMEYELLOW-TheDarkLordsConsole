/**
 * A rocket ship that moves with the cursor in a galaxy. 
 * It's the rocket scene from Animation vs Physics
 * @author ROWAN
 * @version April 28, 2026
 */

final color BACKGROUND = 0;

Rocket rocket; 
ArrayList<Star> stars; //all the stars that have been created


void setup()
{
  size(800, 600);
  background(BACKGROUND);
  
  rocket = new Rocket(mouseX);
  stars = new ArrayList<Star>();
  
  //fills the list with randomly positioned and sized stars
  for(int index = 0; index < 12; index++)
  {
    Star newStar = new Star((int)random(-width/2, width), (int)random(25, 558), (int)random(3, 6));
    stars.add(newStar);
  }
  
}

void draw()
{
  background(BACKGROUND);
  
  showStars();
  
  //display the rocket
  rocket.display();
  rocket.move(mouseX);
  
}


void showStars()
{
  //go through the list and display and move each star
  for(int index = 0; index < stars.size(); index++)
  {
    (stars.get(index)).display();
    (stars.get(index)).move();
  }
}
