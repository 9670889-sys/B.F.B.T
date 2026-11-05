// Xander Warner
class Item {
  // Member Variables
  float x, y, w, h;
  PImage im;

  // Constructor
  Item() {
    x = 50;
    y = 50;
    if (x>-70) {
      x= x-3;
    } else {
      x=920;
    }
    im = loadImage("Coin.png");
  }

  // Member Method
  void display() {
    // replace rect with img
    fill(200, 7, 88);
    image(im, x, y);
  }
  void move() {
     if (x>-70) {
      x= x-3;
    } else {
      x=920;
    }
  }
}
