// Ronan

class Enemy {
//Member Variable
int x,y,w,h,health,damage;
PImage e1;
char type;

Enemy() {
  x = width/2;
  y = height/2;
  w = 50;
  h = 50;
  health = 100;
  damage = 10;
  type = 't';
}
void display() {
    fill (62, 75, 230);
    ellipse (x, y, w, h);
  }
}
