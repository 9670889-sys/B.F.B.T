// Xavier Probasco
class Obstacle {
  //Member Variables
  int x,y;
  PImage im;
  //constructor
  Obstacle(int x, int y) {
    this.x=x;
    this.y=y;
    im=loadImage("Pillar.png");
  }
  //Member Methods
  void display() {
  fill (200, 30, 170);
  image(im, x ,y);
  }
  void move() {
    x=x-3;
    if(x<=-60){
      x=500;
    }
  }
}
