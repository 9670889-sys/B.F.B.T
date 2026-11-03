// Xavier Probasco
class Obstacle {
  //Member Variables
  int x,y;
  p1 PImage;
  //constructor
  Obstacle() {
    x=100;
    y=100;
    p1=loadImage("");
  }
  //Member Methods
  void display() {
  fill (200, 30, 170)
  rect(x,y,50,50)
  //replace rect with image
  }
}
