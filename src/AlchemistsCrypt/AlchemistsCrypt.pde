// [Jonah White]

UI ui;
Boolean start, W, A, S, D;
char screen = 'M';
Button[] buttons = new Button[4];
Button btnPlay, btnSettings, btnCredits, btnBack, btnPause, btnMainMenu;
Upgrade u1;
Player p1;
Enemy e1;
ArrayList<Projectile> projectiles = new ArrayList<Projectile>();
Timer eDist;

void setup() {

  size(1920, 950);
  start = false;
  D= false;
  A= false;
  S= false;
  W= false;

  btnPlay = new Button(200, 350, 400, 150, 400, 421, "a");
  btnSettings = new Button (265, 550, 250, 50, 390, 570, "a");
  btnBack = new Button(300, 785, 200, 75, 400, 820, "a");
  btnCredits = new Button (280, 650, 200, 50, 385, 680, "a");
  btnPause = new Button (10, 10, 80, 80, 50, 50, "a");
  btnMainMenu = new Button (245, 525, 300, 60, 395, 555, "a");

  p1 = new Player();
  e1 = new Enemy(50, 50);
  ui = new UI();
  eDist = new Timer(5000);
  eDist.start();

  // Initialize the single upgrade card in the center of the screen
  u1 = new Upgrade(width / 2, height / 2);
}

void draw() {
  switch(screen) {
  case 'M':
    startscreen();
    break;
  case 'S':
    //settingscreen();
    break;
  case 'P':
    levelDraw();
    break;

  case 'L':
    //pausescreen();
    break;
  case 'D':
    //deathscreen();
  }
}

void startscreen() {
  //Main menu
  background(#010031);
  //image(background, 0, 0);
  //image(title, 150, 70);
  fill(#080027);
  textAlign(CENTER, CENTER);
  textMode(CENTER);
  textSize(70);
  btnPlay.display();
  btnSettings.display();
  btnCredits.display();
  btnSettings.hover();
  btnCredits.hover();
  btnPlay.hover();
}

void mousePressed() {
  switch(screen) {
  case 'M':
    if (btnPlay.clicked()) {
      screen = 'P';
      break;
    } else if (btnSettings.clicked()) {
      screen = 'S';
      break;
    } else if (btnCredits.clicked()) {
      screen = 'C';
      break;
    }
  case 'S':
    if (btnBack.clicked()) {
      screen = 'M';
      break;
    }
  case 'C':
    if (btnBack.clicked()) {
      screen = 'M';
      break;
    }
  case 'P':
    if (btnPause.clicked()) {
      screen = 'R';
      break;
    }
  case 'R':
    if (btnMainMenu.clicked()) {
      screen = 'M';
      break;
    }
    println("screen:" + screen);
  }
}
void levelDraw() {
  background(200);
  p1.display();
  p1.move();
  e1.display();
  ui.display();
  e1.move(p1);
  u1.display();
  //Smooth Movement
  if ( W==true ) {
    p1.y = p1.y - p1.speed;
  }
  if ( S==true ) {
    p1.y = p1.y + p1.speed;
  }
  if ( A==true ) {
    p1.x = p1.x - p1.speed;
  }
  if ( D==true ) {
    p1.x = p1.x + p1.speed;
  }
  
  
  if (eDist.isFinished()) {
    float angle = atan2(p1.y - e1.y, p1.x - e1.x);
    projectiles.add(new Projectile(e1.x, e1.y, angle));
    eDist.start();
  }
  for (int i =0; i < projectiles.size(); i++) {
    Projectile p = projectiles.get(i);
    p.display();
    p.move();
  }
  
}

void keyPressed() {
  // WASD Movement
  if (key == 'w' || key == 'W') {
    W = true;
  } else if (key == 's' || key == 'S') {
    S = true;
  } else if (key == 'a' || key == 'A') {
    A = true;
  } else if (key == 'd' || key == 'D') {
    D = true;
  }
}
void keyReleased() {
  if (key == 'w' || key == 'W') {
    W = false;
  } else if (key == 's' || key == 'S') {
    S = false;
  } else if (key == 'a' || key == 'A') {
    A = false;
  } else if (key == 'd' || key == 'D') {
    D = false;
  }
}

void mouseClicked() {
  // it checks if clicked or not
  u1.checkClick();
  if ( mouseButton == LEFT) {
  }
  if (mouseButton == RIGHT) {
  }
}
