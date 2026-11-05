//Logan Funai
class Button{
  // Member Variables
  int x,y;
  boolean b, visible;

// Constructor
Button() {
   x = 125;
   y = 125;
}

//Member Method
void display() {
   rect(x,y,50,50);
   fill(0);
   if(visible){
   text("Button",x+9,y+25);
   }
}
void move(){
     fill(200,0,0);
   if(b){
     x = x+1;
     y = y+1;
     if(x>400){
       b=false;
     }
   } else {
     x= x-1;
     y= y-1;
     if(x<100){
       b=true;
     }
   }
}
}
