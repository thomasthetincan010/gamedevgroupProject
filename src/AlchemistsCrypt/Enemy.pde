// Ronan Krejci

class Enemy {
//Member Variable
int x,y,w,h,health,damage,speed;
PImage e1;
char type;

Enemy(int x, int y) {
  this.x = x;
  this.y = y;
  w = 50;
  h = 50;
  health = 100;
  damage = 10;
  type = 't';
  speed = 3;
  e1 = loadImage("Rustedorb2.png");
}
void display() {
  image (e1,x,y);
    //fill (62, 75, 230);
    //ellipse (x, y, w, h);
  }

 void move(Player p) {
    if (x < p.x) {x += speed;}
    if (x > p.x) {x -= speed;}
    if (y < p.y) {y += speed;}
    if (y > p.y) {y -= speed;}
 }
void attack(Player p) {
  // not tested because player dosent have health yet
  float d = dist(x, y, p.x, p.y);
  if (d < 100){
    p.health = p.health - 10;
  }
}
void fire() {}
}
