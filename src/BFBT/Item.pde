// Xander Warner
class Item {
  // Member Variables
  float x, y, w, h;
  PImage im;

  // Constructor
  Item(int x) {
    this.x = x;
    y = random(450);
    w = 600;
    h = 600;
    im = loadImage("Coins.png");
  }

  // Member Methods
  void display() {
    image(im, x, y, w, h);
  }

  void move() {
    if (x > -6000) {
      x = x - 3;
    } else {
      x = 920;
    }
  }
}
