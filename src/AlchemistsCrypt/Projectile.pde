//Will Comstock

class Projectile {

  //Member Variables
  int bulletspeed;
  PImage enemybullet, pbullet;
  float x, y, vx, vy;


  //Constructor
  Projectile(float x, float y, float angle) {
    this.x = x;
    this.y = y;
    bulletspeed = 12;
    vx = cos(angle) * bulletspeed;
    vy = sin(angle) * bulletspeed;
  }



  // Member methods
  void display() {
    fill (62, 75, 230);
    ellipse (x, y, 10, 10);
  }


  void move() {
    x += vx;
    y += vy;
  }




  boolean isHit(Player p) {
    float d = dist(x, y, p.x, p.y);
    if (d<100) {
      return true;
    } else {
      return false;
    }
  }
}
