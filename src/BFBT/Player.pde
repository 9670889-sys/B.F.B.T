// Max Oyewole
class Player {
  // Member Variables
  float x, y, w, h;
  float yvel, grav;
  int pnum;
  PImage b1, b1f;

  // Constructor
  Player(float x, float y, float w, float h, int pnum) { //pnum is player number
    this.w = w;
    this.h = h;
    this.pnum = pnum;
    this.x = x;
    this.y = y;
    grav = .1;
    b1 = loadImage("BrawlerBird1.gif");
    b1f = loadImage("BrawlerBird1Flap.gif");
  }

  // Member Method
  void display() {
    strokeWeight(0);
    if (pnum == 1) {
      if (yvel < 0) {
        image(b1f, x, y, w, h);
      } else {
        image(b1, x, y, w, h);
      }
    }
  }

  void move() {

    float deltaTime = ((float)deltaTime())/1000.0;

    //change velocity and position and cap speed
    if (mousePressed) {
      yvel = -5;
      grav = 0;
    } else {
      if (yvel > 10) {
        yvel = 10;
      } else {
        yvel += deltaTime*grav;
      }
    }
    y += yvel;
  }
  
  //boolean isHit() {
    
  //}
}
