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
  speed = 5;
}
void display() {
    fill (62, 75, 230);
    ellipse (x, y, w, h);
  }

 void chase(Player p) {
    // Option A: Using basic coordinate comparison
    if (x < p.x) {x += speed;}
    if (x > p.x) {x -= speed;}
    if (y < p.y) {y += speed;}
    if (y > p.y) {y -= speed;}
 }
void attack() {}
void fire() {}
}
