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
    if(x<=-130 && top==true){
      x=900;
      y=int(random(-100,-60));
    } else if(x<=-130 && top==false) {
      x=900;
      y=int(random(280, 330));
    }
  }
}
