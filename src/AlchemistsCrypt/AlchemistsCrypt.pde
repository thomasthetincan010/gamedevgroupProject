// [Insert Name]
Upgrade u1;
Player p1;
Enemy e1;

void setup() {
  size(1920, 950);

  // Initialize the player and enemy
  p1 = new Player();
  e1 = new Enemy(50, 50);

  // Initialize the upgrade card in the center of the screen
  u1 = new Upgrade(width / 2, height / 2);
}

void draw() {
  background(20);

  u1.display();
  p1.move();
  p1.display();
  e1.move(p1);
  e1.display();
}
