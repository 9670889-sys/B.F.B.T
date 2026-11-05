// Xavier Probasco
class Obstacle {
  //Member Variables
  int x,y;
  PImage im;
  //constructor
  Obstacle(int x) {
    this.x=x;
    y=int(random(300));
    im=loadImage("Pillar.png");
  }
  //Member Methods
  void display() {
  fill (200, 30, 170);
  image(im, x ,y);
  }
  void move() {
    x=x-2;
    if(x<=-60){
      x=500;
    }
  }
}
