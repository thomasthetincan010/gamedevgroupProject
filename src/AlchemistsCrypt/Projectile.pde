class Projectile {

  //Member Variables
  int bulletspeed, x, y;
  PImage enemybullet, pbullet;


  //Constructor
  Projectile(int x, int y) {
    this.x = x;
    this.y = y;
    bulletspeed = 12;
    enemybullet = loadImage("Enemybullet1.png");
  }



  // Member methods
}
