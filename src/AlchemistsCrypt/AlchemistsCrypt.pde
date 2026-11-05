// [Insert Name]

Upgrade[] upgrades;
Player p1;
Enemy e1;

void setup() {
  size(1920, 950);
  p1 = new Player();
  e1 = new Enemy(50, 50);
  
  // Set up 3 upgrade cards side-by-side in the center of the screen
  upgrades = new Upgrade[3];
  int cardSpacing = 160; 
  int startX = width / 2 - cardSpacing;
  
  for (int i = 0; i < upgrades.length; i++) {
    upgrades[i] = new Upgrade(startX + (i * cardSpacing), height / 2);
  }
}

void draw() {
  background(20); // Clear the frame so hover effects don't trail
  
  p1.move();
  p1.display();
  
  e1.move(p1);
  e1.display();
  
  // Display the upgrade shop cards
  for (Upgrade u : upgrades) {
    u.display();
  }
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
