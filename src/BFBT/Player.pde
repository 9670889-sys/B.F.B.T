// Max Oyewole
class Player {
  // Member Variables
  float x, y, w, h;
  int pnum;
  PImage p1;
  
  // Constructor
  Player(float x, float y, float w, float h, int pnum) { //pnum is player number
  this.x = x;
  this.y = x;
  this.w = w;
  this.h = h;
  this.pnum = pnum;
  p1 = loadImage("BrawlerBird1.gif");
  
  
  }

  // Member Method
  void display() {
    strokeWeight(0);
    image(p1, x, y, w, y); //recomend w=50, h=50 for gameplay
  
  }
  
}
