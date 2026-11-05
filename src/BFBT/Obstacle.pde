// Xavier Probasco
class Obstacle {
  //Member Variables
  int x,y;
  PImage im;
  //constructor
  Obstacle() {
    x=200;
    y=200;
    im=loadImage("");
  }
  //Member Methods
  void display() {
  fill (200, 30, 170);
  rect(x,y,50,50);
  //replace rect with image
  }
}
