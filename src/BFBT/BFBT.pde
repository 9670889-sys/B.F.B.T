//Logan Funai| Birds of a Feather, Brawl Together | 10/27/2026 | Computer Programing 1
Button[] buttons = new Button[5];
Player[] birds = new Player[4];
Scroller[] backdrop = new Scroller[2];
Item[] coin = new Item[8];
Obstacle pipe;

Boolean strt, selection;
int players, lastFrame;

void setup() {
  noSmooth();
  lastFrame = 0;
  strt = false;
  selection = false;
  size(900, 500);
  birds[0] = new Player(400, 300, 50, 50, 1);
  birds[1] = new Player(400, 300, 50, 50, 1);
  birds[2] = new Player(400, 300, 50, 50, 1);
  birds[3] = new Player(400, 300, 50, 50, 1);
  backdrop[0] = new Scroller(0);
  backdrop[1] = new Scroller(900);
  pipe = new Obstacle(500, 2);
  coin[0] = new Item(900);
  coin[1] = new Item(1500);
  coin[2] = new Item(2100);
  coin[3] = new Item(2700);
  coin[4] = new Item(3600);
  coin[5] = new Item(3900);
  coin[6] = new Item(4800);
  coin[7] = new Item(5400);
  buttons[0] = new Button(450, 350, 300);
  buttons[1] = new Button(450, 240, 150);
  buttons[2] = new Button(250, 240, 0);
  buttons[3] = new Button(650, 240, 0);
  buttons[4] = new Button(450, 400, 300);
}

void mousePressed() {
  birds[0].up();
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
    coin[1].display();
    coin[1].display();
    coin[2].display();
    coin[3].display();
    coin[4].display();
    coin[5].display();
    coin[6].display();
    coin[7].display();
    birds[0].display();
    pipe.display();
    birds[0].move();
    pipe.move();
    backdrop[0].move();
    backdrop[1].move();
    coin[0].move();
    coin[1].move();
    coin[2].move();
    coin[3].move();
    coin[4].move();
    coin[5].move();
    coin[6].move();
    coin[7].move();
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
