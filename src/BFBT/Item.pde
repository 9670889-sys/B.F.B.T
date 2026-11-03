// Xander Warner
class Item {
  // Member Variables
  float x, y, w, h;
  PImage im;
  
  // Constructor
  Item() {
  x = 50;
  y = 50;
  im = loadImage("");
  
  
  }

  // Member Method
  void display() {
    // replace rect with img
    fill(200, 7, 88);
    rect(x, y, 50, 50);
  
  }
  
}
