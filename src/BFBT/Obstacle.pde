// Xavier Probasco
class Obstacle {
  //Member Variables
  int x,y;
  boolean top;
  PImage im;
  //constructor
  Obstacle(int x, int y, boolean top) {
    this.x=x;
    this.y=y;
    this.top=top;
    im=loadImage("Pillar.png");
  }
  //Member Methods
  void display() {
  fill (200, 30, 170);
  image(im, x ,y);
  }
  void move() {
    x=x-3;
    if(x<=-60 && top==true){
      x=900;
      y=int(random(0,30));
    } else if(x<=-60 && top==false) {
      x=900;
      y=int(random(270, 300));
    }
  }
}
