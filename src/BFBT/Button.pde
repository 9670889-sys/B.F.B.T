//Logan Funai
class Button{
  // Member Variables
  int x,y;

// Constructor
Button() {
   x = 125;
   y = 125;
}

//Member Method
void display() {
   fill(200,0,0);
   rect(x,y,50,50);
}
}
