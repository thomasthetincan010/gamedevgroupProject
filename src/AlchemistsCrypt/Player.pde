class Player {
  //Member Variables
  int x, y, score;
  PImage player;

  //Constructer
  Player(int x, int y) {
    this.x = x;
    this.y = y;
    score=0;
    player = loadImage("person.png");
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    image(player, x, y);
  }

  void move(char dir) {
    if (dir == 'w'  || dir == 'W') {
      y = y - 10;
    } else if (dir == 's' || dir == 'S') {
      y = y + 10;
    } else if (dir == 'a' || dir == 'A') {
      x = x - 10;
    } else if (dir == 'd' || dir == 'D') {
      x = x + 10;
    }
    //EDGE TELEPORT
  if (x> width+10) {
    x = -10;
  }
  if (x< -10) {
    x = width+10;
  }
  if (y > height+10) {
    y = -10;
  }
  if (y < -10) {
    y = height+10;
  }
  }
}
