// Thomas
class Upgrade {

  int x, y, w, h;
  PImage u1;
  char type;


  Upgrade() {
    x = width/2;
    y = height/2;
    w = 50;
    h = 250;
    u1 = loadImage("insertimagehere.png");

float pValue = random(3);
    if (pValue > 2.0) {
      type = 'h'; 
    } else if (pValue > 1.0) {
      type = 't'; 
    } else {
      type = 's'; 
    }
  }
}

  void display() {
    fill (62, 75, 230);
    ellipse (x, y, w, h);
  }
}
