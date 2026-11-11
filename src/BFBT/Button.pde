//Logan Funai
class Button {
  // Member Variables
  int x, y, clr, w;
  boolean b, hover, pressable;
  String text;

  // Constructor
  Button(int x, int y, int w)  {
    this.x = x; //450
    this.y = y; //350
    this.w = w;
    hover= false;
    b = true;
  }

  //Member Method
  void display(boolean pressable,  String text) {
    if (hover && pressable) {
      fill(128);
    } else {
      fill(clr, 210-clr, clr+45);
    }
    strokeWeight(4);
    rect(x, y, 100+w, 100);
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
    hover = (mouseX < (x+50+(w/2)) && mouseX > x-(50+(w/2)) && mouseY > y-50 && mouseY < y+50);
  }
}
