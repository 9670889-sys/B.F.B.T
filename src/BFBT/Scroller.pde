// Randy Warner
class Scroller {
  // Member Variables
  float x, y, w, h;
  PImage im;
  // Constructor
  Scroller() {
  x = 50;
  y = 100;
  im = loadImage("");
  
  
  }

  // Member Method
  void display() {
    // replace rect with img
    fill(200, 7, 88);
 if (x>-70) {
      x= x-3;
    } else {
      x=920;
    }
    rect(x, y, 50, 50);
  
  }
  
}
