// Ronan
class Upgrade {

  int x, y, w, h;
  PImage U1;
  char type;


  Upgrade() {
    x = width/2;
    y = height/2;
    w = 50;
    h = 250;
    type = 't';
  }

  void display() {
    fill (62, 75, 230);
    ellipse (x, y, w, h);
  }
}
