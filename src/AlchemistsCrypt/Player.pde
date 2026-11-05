// Will Comstock

class Player {
//Member Variable
int x,y,w,h,health,damage, speed;
PImage b1;




//Constructor
Player(){
//TODO: Verify and change placeholder values.
//b1 = loadImage("Concept1.png");
x = 1000;
y = 1000;
h = 100;
w = 100;
health = 100;
damage = 10;
speed = 10;
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
    // Simple keyboard movement for the player
    if (keyPressed) {
      if (keyCode == UP) y -= speed;
      if (keyCode == DOWN) y += speed;
      if (keyCode == LEFT) x -= speed;
      if (keyCode == RIGHT) x += speed;
    }
  }

void fire(){}


void attack(){}

}
