//Will Comstock

class Projectile{
  
  //Member Variables
  int bulletspeed;
  PImage enemybullet, pbullet;
  float x,y,vx,vy;
  
  
  //Constructor
  Projectile(float x, float y, float angle) {
  this.x = x;
  this.y = y;
  bulletspeed = 12;
 enemybullet = loadImage("Enemybullet1.png");
  vx = cos(angle) * bulletspeed;
  vy = sin(angle) * bulletspeed;
  }
  
  
  
  // Member methods
  void display(){
    //fill (62, 75, 230);
    //ellipse (x, y, 10,10);
    image(enemybullet,x,y);
  }
  
  
  void move(){
    x += vx;
    y += vy;
  }
  
  
  
  
  
}
