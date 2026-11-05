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
   p1.update();
  p1.display();
  
  // Update enemy to chase player, then display
  e1.chase(p1);
  e1.display();
  

  // Update enemy to chase player, then display
  
}
