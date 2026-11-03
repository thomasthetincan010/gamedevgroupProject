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
  //  u1 = loadImage("insertimagehere.png");  PLACEHOLDER NOT AN ACTUAL IMAGE

float uValue = random(3);
    if (pValue > 2.0) {
      type = 'a'; // Upgrade A
    } else if (uValue > 1.0) {
      type = 'b'; // Upgrade B
    } else {
      type = 'c'; // Upgrade C
// TO DO: REPLACE PLACEHOLDERS!!!!!!
    }
  }

  void display() {
    imageMode(CENTER);
    fill (62, 75, 230);
    ellipse (x, y, w, h);
//  if (r1 != null) {
//      image(r1, x, y, size, size);
    }
  }
