// Max Oyewole
class Player {
  // Member Variables
  float x, y, w, h;
  float yvel, grav;
  int pnum;
  PImage p1;

  // Constructor
  Player(float x, float y, float w, float h, int pnum) { //pnum is player number
    this.w = w;
    this.h = h;
    this.pnum = pnum;
    this.x = x;
    this.y = y;
    grav = 1;
    p1 = loadImage("BrawlerBird1.gif");
  }

  // Member Method
  void display() {
    strokeWeight(0);
    image(p1, x, y, w, h); //recomend w=50, h=50 for gameplay
  }

  int deltaTime() {
    int lastFrame;
    lastFrame = 0;

    int delta = millis() - lastFrame;
    lastFrame = millis();
    return delta;
  }

  void move() {

    float deltaTime = ((float)deltaTime())/1000.0;

    //change velocity and position and cap speed

    if (yvel > 10) {
      yvel = 10;
    } else {
      yvel += deltaTime*grav;
    }
    y += yvel;
  }
}
