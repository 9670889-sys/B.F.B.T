// Xander Warner
class Scroller {
  // Member Variables
  float x, y, w, h;
  PImage im;
  // Constructor
  Scroller() {
    x = 50;
    y = 100;
    im = loadImage("BFBT-Background.png");
  }

  // Member Method
  void display() {
    // replace rect with img
    image(im, 0, 0);
  }
  void move() {
    if (x>-70) {
      x= x-3;
    } else {
      x=920;
    }
  }
}
