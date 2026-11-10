//Logan Funai
class Button {
  // Member Variables
  int x, y, clr;
  boolean b, visible;

  // Constructor
  Button() {
    x = 125;
    y = 125;
  }

  //Member Method
  void display() {
    fill(clr, 210-clr, clr+45);
    rect(x, y, 50, 50);
    fill(0);
    if (visible) {
      text("Button", x+9, y+25);
    }
  }
  void move() {
    if (b) {
      clr = clr+1;
      if (clr>140) {
        b=false;
      }
    } else {
      clr= clr-1;
      if (clr<20) {
        b=true;
      }
    }
  }
}
