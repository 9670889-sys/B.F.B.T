//Logan Funai| Birds of a Feather, Brawl Together | 10/27/2026 | Computer Programing 1
Button[] buttons = new Button[5];
Player[] birds = new Player[4];
Scroller[] backdrop = new Scroller[2];
Item[] coin = new Item[4];
Obstacle[] top = new Obstacle[3];
Obstacle[] bottom = new Obstacle[3];

Boolean strt, selection, player1up, player2up, player3up, player4up, p1dies, p2dies, p3dies, p4dies;
int players, lastFrame, health;
float ObsDist1, ObsDist2, ObsDist3;

void setup() {
  noSmooth();
  health = 1;
  player1up = false;
  player2up = false;
  player3up = false;
  player4up = false;
  lastFrame = 0;
  strt = false;
  selection = false;
  size(900, 500);
  birds[0] = new Player(400, 300, 50, 50, 1);
  birds[1] = new Player(400, 300, 50, 50, 2);
  birds[2] = new Player(400, 300, 50, 50, 3);
  birds[3] = new Player(400, 300, 50, 50, 4);
  backdrop[0] = new Scroller(0);
  backdrop[1] = new Scroller(900);
  top[0] = new Obstacle(250, int(random(-100, -60)), true);
  top[1] = new Obstacle(575, int(random(-100, -60)), true);
  top[2] = new Obstacle(900, int(random(-100, -60)), true);
  bottom[0] = new Obstacle(250, int(random(280, 330)), false);
  bottom[1] = new Obstacle(575, int(random(280, 330)), false);
  bottom[2] = new Obstacle(900, int(random(280, 330)), false);
  coin[0] = new Item(900);
  coin[1] = new Item(1500);
  coin[2] = new Item(1900);
  coin[3] = new Item(2700);
  buttons[0] = new Button(450, 350, 300);
  buttons[1] = new Button(450, 240, 150);
  buttons[2] = new Button(250, 240, 0);
  buttons[3] = new Button(650, 240, 0);
  buttons[4] = new Button(450, 400, 300);
  ObsDist1=dist(top[0].x, top[0].y+300, bottom[0].x, bottom[0].y);
  ObsDist2=dist(top[1].x, top[1].y+300, bottom[1].x, bottom[1].y);
  ObsDist3=dist(top[2].x, top[2].y+300, bottom[2].x, bottom[2].y);
}

void mousePressed() {
  birds[0].up();
}

void keyPressed() {
  if (keyCode == 32) {
    birds[0].up();
  }
}

void mouseReleased() {
  if (buttons[0].overit) {
    selection=true;
  }
  if (buttons[2].overit) {
    players = players-1;
  } else if (buttons[3].overit) {
    players = players+1;
  } else if (buttons[4].overit) {
    strt = true;
    player1up= true;
  }
}

void draw() {
  fill(0);
  rectMode(CENTER);
  textAlign(CENTER);
  if (strt) {
    background(128);
    backdrop[0].display();
    backdrop[1].display();
   ObsDist1=dist(top[0].x, top[0].y+300, bottom[0].x, bottom[0].y);
    ObsDist2=dist(top[1].x, top[1].y+300, bottom[1].x, bottom[1].y);
    ObsDist3=dist(top[2].x, top[2].y+300, bottom[2].x, bottom[2].y);
    if (ObsDist1<=60) {
      top[0].y-=5;
      bottom[0].y+=5;
      if (ObsDist2>=80) {
        top[1].y+=5;
        bottom[1].y-=5;
      }
    } else if (ObsDist1>=80) {
      top[0].y+=5;
      bottom[0].y-=5;
      if (ObsDist1<=60) {
        top[2].y-=5;
        bottom[2].y+=5;
      }
    } if (ObsDist2<=60) {
        top[1].y-=5;
        bottom[1].y+=5;
        if (ObsDist2>=80) {
          top[1].y+=5;
          bottom[1].y-=5;
        }
      } else if (ObsDist2>=80) {
        top[1].y+=5;
        bottom[1].y-=5;
        if (ObsDist2<=60) {
          top[2].y-=5;
          bottom[2].y+=5;
        }
      }
      if (ObsDist3<=60) {
        top[2].y-=5;
        bottom[2].y+=5;
        if (ObsDist3>=80) {
          top[2].y+=5;
          bottom[2].y-=5;
        }
      } else if (ObsDist3>=80) {
        top[2].y+=5;
        bottom[2].y-=5;
        if (ObsDist3<=60) {
          top[2].y-=5;
          bottom[2].y+=5;
        }
      }
        println(ObsDist1);
        println(ObsDist2);
        println(ObsDist3);
    top[0].display();
    top[1].display();
    top[2].display();
    bottom[0].display();
    bottom[1].display();
    bottom[2].display();
    top[0].move();
    top[1].move();
    top[2].move();
    bottom[0].move();
    bottom[1].move();
    bottom[2].move();
    backdrop[0].move();
    backdrop[1].move();
    for (int i = 0; i<coin.length; i++) {
      coin[i].display();
      coin[i].move();
    }
    if (player1up) {
      birds[0].move();
      birds[0].display();
    }
    if (player2up) {
      birds[1].move();
      birds[1].display();
    }
    if (player3up) {
      birds[2].move();
      birds[2].display();
    }
    if (player4up) {
      birds[3].move();
      birds[3].display();
    }
    fill(40,200,0);
    strokeWeight(0);
    rect(0, 490, 5000, 20);
    strokeWeight(1);
  } else if (selection == false) {
    background(50, 170, 50);
    textSize(80);
    strokeWeight(8);
    text("Birds of a Feather", 450, 70);
    fill(buttons[0].clr+45, buttons[0].clr, 210-buttons[0].clr);
    textSize(110);
    text("BRAWL TOGETHER", 450, 200);
    strokeWeight(1);
    buttons[0].display(true, "Start");
    buttons[0].pressCheck();
  } else {
    background(225, 120, 30);
    textSize(110);
    text("PLAYERS", 450, 100);
    if (players<1) {
      players = players+1;
    } else if (players>4) {
      players = players-1;
    }
    buttons[1].display(false, str(players));
    buttons[2].display(true, "-");
    buttons[3].display(true, "+");
    buttons[4].display(true, "Start");
    for (int i = 1; i<buttons.length; i++) {
      buttons[i].pressCheck();
    }
  }
}

int deltaTime() {

  int delta = millis() - lastFrame;
  lastFrame = millis();
  return delta;
}
