// Will Comstock

class Player {
//Member Variable
int x,y,w,h,health,damage, speed;
PImage b1;




//Constructor
Player(){
//TODO: Verify and change placeholder values.
b1 = loadImage("Concept1.png");
x = 32;
y = 32;
h = 100;
w = 100;
health = 100;
damage = 10;
speed = 25;
}
//Member Methods
void display(){
//TODO: make image functional.
image(b1,x,y);
imageMode(CENTER);
//fill(33,248,99);
//ellipse(x,y,h,w);

}
//TODO: Make functions functional.
 void move() {
   if (x< 45) {x = 45;}
   if (x> 1885) {x = 1885;}
    
  }
void fire(){}


void attack(){}

}
