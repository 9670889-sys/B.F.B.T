// Max Oyewole
class Player {
  // Member Variables
  float x, y, w, h;
  PImage p1;
  
  // Constructor
  Player() {
  x = 100;
  y = 50;
  p1 = loadImage("BrawlerBird1.gif");
  
  
  }

  // Member Method
  void display() {
    // replace rect with img
    fill(200, 7, 88);
    image(p1, x, y);
  
  }
  
}
