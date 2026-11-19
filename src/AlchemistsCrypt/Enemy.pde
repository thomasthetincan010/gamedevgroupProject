// Ronan Krejci

class Enemy {
  //Member Variable
  int x, y, w, h, health, damage, speed;
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
    imageMode(CENTER);

    e1 = loadImage("Player.png");
  }
  void display() {
    image (e1, x, y);
    //fill (62, 75, 230);
    //ellipse (x, y, w, h);
  }

  void move(Player p) {
    if (x < p.x1) {
      x += speed;
    }
    if (x > p.x1) {
      x -= speed;
    }
    if (y < p.y1) {
      y += speed;
    }
    if (y > p.y1) {
      y -= speed;
    }
  }

  void attack(Player p, UI u) {
    float d = dist(x, y, p.x, p.y);
    if (d < 60) {
      println(p.Hit);
      if ( p.Hit == false) {

        u.Health = u.Health - 1;
        p.Hit=true;
      }
    }
  }
  void fire() {
  }
}
