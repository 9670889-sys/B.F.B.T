//Logan Funai
class Button{
  // Member Variables
  int x,y;
  boolean b; 

// Constructor
Button() {
   x = 125;
   y = 125;
}

//Member Method
void display() {
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
   rect(x,y,50,50);
}
}
