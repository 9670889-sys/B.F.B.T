// Max Oyewole

class Player {
  // Member Variables
  float x, y, w, h;
  float yvel, grav;
  int pnum, health flapTime;
  PImage b1, b1f, b2, b2f, b3, b3f, b4f;

  // Constructor
  Player(float x, float y, float w, float h, int pnum) { //pnum is player number
    this.w = w;
    this.h = h;
    this.pnum = pnum;
    this.x = x;
    this.y = y;
    yvel = .5;
    grav = 5;
    health = 1;
    flapTime = 0;
    b1 = loadImage("BrawlerBird1.gif");
    b1f = loadImage("BrawlerBird1Flap.gif");
    b2 = loadImage("BrawlerBird2.gif");
    b2f = loadImage("BrawlerBird2Flap.png");
    b3 = loadImage("BrawlerBird3.png");
    b3f = loadImage("BrawlerBird3Flap.png");
    b4f = loadImage("BrawlerBird4Flap.png");
  }

  // Member Method
  void display() {
    strokeWeight(0);
    //pushMatrix();
    if (pnum == 1) {
      if (yvel < 0) {
        image(b1f, x, y, w, h);
      } else {
        image(b1, x, y, w, h);
      }
    } else if (pnum == 2) {
      if (yvel < 0) {
        image(b2f, x, y, w, h);
      } else {
        image(b2, x, y, w, h);
      }
    } else if (pnum == 3) {
      if (yvel < 0) {
        image(b3f, x, y, w, h);
      } else {
        image(b3, x, y, w, h);
      }
    } else if (pnum == 4) {
      if (yvel < 0) {
        image(b4f, x, y, w, h);
      } else {
        image(b4f, x, y, w, h);
      }
    }
    //popMatrix();
  }

  void move() {

    float deltaTime = ((float)deltaTime())/1000.0;

    //change velocity and position and cap speed
    if (yvel > 5) {
      yvel = 5;
    } else if (y >= height - h/2) {
      y = height - h/2;
    }
    yvel += deltaTime*grav;
    y += yvel;
  }

  void up() {
    if (strt && health == 1) {
      yvel = -3;
    }
  }

  boolean isHit(Obstacle o) {
    if (abs(x - o.x) == w/2 + o.w/2 || abs(y - o.y) == h/2 + o.h/2 || y >= height - h/2) {
      health = 0;
      return true;
    } else {
      return false;
    }
  }
}
