//Logan Funai
class Button {
  // Member Variables
  int x, y, clr, w;
  boolean b, overit, pressable;
  String text;
  PImage im;

  // Constructor
  Button(int x, int y, int w) {
    this.x = x; //450
    this.y = y; //350
    this.w = w;
    overit= false;
    b = true;
    im = loadImage("Buttonoutline.png");
  }

  //Member Method
  void display(boolean pressable, String text) {
    if (overit && pressable) {
      fill(128);
    } else {
      fill(clr, 210-clr, clr+45);
    }
    strokeWeight(4);
    rect(x, y, 100+w, 100);
    image(im, x-50, y-50, 100, 100);
    if(w > 161) {
    image(im, x-150, y-50, 100, 100);
    image(im, x+50, y-50, 100, 100);
    }
    fill(0);
    textSize(40);
    textAlign(CENTER);
    strokeWeight(2);
    text(text, x, y+15);
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
    overit = (mouseX < (x+50+(w/2)) && mouseX > x-(50+(w/2)) && mouseY > y-50 && mouseY < y+50);
  }
}
