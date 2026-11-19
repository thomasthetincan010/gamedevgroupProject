// Will Comstock

class Player {
  //Member Variable
  int x, y, x1, y1, w, h, health, damage, speed;
  PImage b1, b2;
  boolean Hit;
  Timer inv, emy;



  //Constructor
  Player() {
    //TODO: Verify and change placeholder values.
    b1 = loadImage("Player.png");
    b2 = loadImage("Player.png");
    x = 32;
    y = 32;
    x1 = x;
    y1 = y;
    h = 100;
    w = 100;
    health = 100;
    damage = 10;
    speed = 5;
    Hit = false;
    inv = new Timer(3000);
    inv.start();
    emy = new Timer(1000);
    emy.start();
  }
  //Member Methods
  void display() {
    //TODO: make image functional.
    image(b1, x, y);
    imageMode(CENTER);
    
    if (emy.isFinished()) {

      x1 = x;
      y1 = y;
      emy.start();
    }
    if ( Hit == true && inv.isFinished()) {
      inv.start();

      Hit = false;
    }
  }
  //TODO: Make functions functional.
  void move() {
    if (x< 45) {
      x = 45;
    }
    if (x> 1885) {
      x = 1885;
    }
    if (y < 60) {
      y = 60;
    }
    if (y > 800) {
      y = 800;
    }
  }
  void fire() {
  }


  void attack() {
  }
}
