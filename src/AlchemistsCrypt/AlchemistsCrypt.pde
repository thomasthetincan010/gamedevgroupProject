// [Insert Name]

Upgrade u1;
Player p1;
Enemy e1;

void setup() {
  size(1920, 950);
  p1 = new Player();
  e1 = new Enemy(50, 50 );
}

void draw() {
  background(220);
  p1.display();
   p1.move();

  
  // Update enemy to chase player, then display
  e1.display();
  e1.move(p1);
  
  

  // Update enemy to chase player, then display
  
}
void keyPressed() {
  //WASD Movement
  if (key == 'w' || key == 'W') {
    p1.y = p1.y - p1.speed;
  } else if (key == 's' || key == 'S') {
    p1.y = p1.y + p1.speed;
  } else if (key == 'a' || key == 'A') {
    p1.x = p1.x - p1.speed;
  } else if (key == 'd' || key == 'D') {
    p1.x = p1.x + p1.speed;
  } 
}
