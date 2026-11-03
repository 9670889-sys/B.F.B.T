//Logan Funai| Birds of a Feather, Brawl Together | 10/27/2026 | Computer Programing 1
Button[] Buttons = new Button[4];
Player p1;
Scroller backdrop;
Item coin;
Obstacle pipe;

float v;

void setup() {
  size(900,500);
  p1 = new Player();
  backdrop = new Scroller();
  coin = new Item();
  pipe = new Obstacle();
  Buttons[0] = new Button();
  Buttons[1] = new Button();
  Buttons[2] = new Button();
  Buttons[3] = new Button();
}



void draw() {
  background(128);
  coin.display();
  p1.display();
  Buttons[0].display();
  pipe.display();
  backdrop.display();

}
