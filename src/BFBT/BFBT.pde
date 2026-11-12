//Logan Funai| Birds of a Feather, Brawl Together | 10/27/2026 | Computer Programing 1
Button[] Buttons = new Button[5];
Player p1;
Scroller backdrop;
Item coin;
Obstacle pipe;

Boolean strt, selection;
int players;

void setup() {
  strt = false;
  selection = false;
  size(900, 500);
  p1 = new Player(400, 300, 50, 50, 1);
  backdrop = new Scroller();
  coin = new Item();
  pipe = new Obstacle(500, 2);
  Buttons[0] = new Button(450, 350, 300);
  Buttons[1] = new Button(450, 240, 150);
  Buttons[2] = new Button(250, 240, 0);
  Buttons[3] = new Button(650, 240, 0);
  Buttons[4] = new Button(450, 400, 300);
}

void mouseReleased() {
  if (Buttons[0].hover) {
    selection=true;
  }
  if (Buttons[2].hover) {
    players = players-1;
  } else if (Buttons[3].hover) {
    players = players+1;
  } else if (Buttons[4].hover) {
    strt = true;
  }
}

void draw() {
  fill(0);
  rectMode(CENTER);
  textAlign(CENTER);
  if (strt) {
    background(128);
    backdrop.display();
    coin.display();
    p1.display();
    pipe.display();
    p1.move();
    pipe.move();
    coin.move();
    backdrop.move();
  } else if (selection == false) {
    background(50, 170, 50);
    textSize(80);
    strokeWeight(8);
    text("Birds of a Feather", 450, 70);
    fill(Buttons[0].clr+45, Buttons[0].clr, 210-Buttons[0].clr);
    textSize(110);
    text("BRAWL TOGETHER", 450, 200);
    strokeWeight(1);
    Buttons[0].display(true, "Start");
    Buttons[0].move();
  } else {
    background(225, 120, 30);
    textSize(110);
    text("PLAYERS", 450, 100);
    if (players<1) {
      players = players+1;
    } else if (players>4) {
      players = players-1;
    }
    Buttons[1].display(false, str(players));
    Buttons[2].display(true, "-");
    Buttons[3].display(true, "+");
    Buttons[4].display(true, "Start");
    for (int i = 1; i<Buttons.length; i++) {
      Buttons[i].move();
    }
  }
}

  int deltaTime() {
    int lastFrame;
    lastFrame = 0;

    int delta = millis() - lastFrame;
    lastFrame = millis();
    return delta;
  }
