//Jonah White
class UI {

  int Health;
  PImage Heart, empty;
  UI() {
    Heart = loadImage("Heart.png");
    empty = loadImage("empty.png");
    Health = 5;
  }
  void display() {
    imageMode(CENTER);

    if (start = true) {
      Healthbar();
    }
  }

  void Healthbar() {
    if (Health >= 1) {
      image(Heart, 100, 70);
    } else {
      image(empty, 100, 70);
    }
    if (Health >= 2) {
      image(Heart, 200, 70);
    } else {
      image(empty, 200, 70);
    }
    if (Health >= 3) {
      image(Heart, 300, 70);
    } else {
      image(empty, 300, 70);
    }
    if (Health >= 4) {
      image(Heart, 400, 70);
    } else {
      image(empty, 400, 70);
    }
    if (Health >= 5) {
      image(Heart, 500, 70);
    } else {
      image(empty, 500, 70);
    }
    if (Health == 0) {
      screen = 'D';
    }
  }
}
