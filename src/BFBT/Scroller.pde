// Xander Warner
class Scroller {
  // Member Variables
  float x, y, w, h;
  PImage im;
  // Constructor
  Scroller(int x) {
    this.x = x;
    y = 100;
    im = loadImage("BFBT-Background.png");
  }

  // Member Method
  void display() {
    // replace rect with img
    image(im, x, 0);
  }
  void move() {
    if (x>-900) {
      x= x-3;
    } else {
      x=890;
    }
  }
}
