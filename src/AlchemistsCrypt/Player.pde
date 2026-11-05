// Will Comstock

class Player {
//Member Variable
int x,y,w,h,health,damage, speed;
PImage b1;




//Constructor
Player(){
//TODO: Verify and change placeholder values.
//b1 = loadImage("Concept1.png");
x = 900;
y = 900;
h = 100;
w = 100;
health = 100;
damage = 10;
speed = 25;
}
//Member Methods
void display(){
//TODO: make image functional.
//image(b1,x,y,h,w);
ellipse(x,y,h,w);
fill(33,248,99);
}
//TODO: Make functions functional.
 void move() {
    //EDGE TELEPORT
  if (x> width+10) {
    x = -10;
  }
  if (x< -10) {
    x = width+10;
  }
  if (y > height+10) {
    y = -10;
  }
  if (y < -10) {
    y = height+10;
  }
  }
void fire(){}


void attack(){}

}
