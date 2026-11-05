class Upgrade {
  int x, y, w, h;
  PImage u1;
  char type;
  String name;
  String description;
  // int goldCost; (MAYBE)

  Upgrade(int posX, int posY) {
    x = posX;
    y = posY;
    w = 120;
    h = 160;

    // u1 = loadImage("insertimagehere.png"); NOT AN ACTUAL IMAGE THIS IS A PLACEHOLDER
    float uValue = random(3);
    if (uValue > 2.0) {
      type = 'a';
      name = "Upgrade A";
      description = "This is Upgrade A";
    } else if (uValue > 1.0) {
      type = 'b';
      name = "Upgrade B";
      description = "This is Upgrade B";
    } else {
      type = 'c';
      name = "Upgrade C";
      description = "This is Upgrade C";
    }
  }
  // NOTE TO SELF REPLACE THE PLACEHOLDERS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  // If code somehow breaks I can see why, some parts were directly copied from my SpaceGame

  void display() {
    rectMode(CENTER);

    boolean isHovered = (mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - h/2 && mouseY < y + h/2);

    if (isHovered) {
      fill(80, 95, 255);
      stroke(255, 215, 0);
      strokeWeight(3);
    } else {
      fill(62, 75, 210);
      stroke(40, 50, 180);
      strokeWeight(2);
    }

    rect(x, y, w, h, 10);
    noStroke();

    fill(255);
    textAlign(CENTER, CENTER);
    textSize(14);
    text(name, x, y - h/4); // Title


    if (u1 != null) {
      imageMode(CENTER);
      image(u1, x, y, 50, 50);
    } else {
      fill(255, 100);
      ellipse(x, y, 40, 40);
    }

    if (isHovered) {
      int boxW = 180;
      int boxH = 90;
      int boxX = mouseX + 15; // maybe not 15
      int boxY = mouseY + 15;

      if (boxX + boxW > width) {
        boxX = mouseX - boxW - 15;
      }

      fill(20, 20, 30, 240);
      stroke(150);
      strokeWeight(1);
      rectMode(CORNER);
      rect(boxX, boxY, boxW, boxH, 5);

      fill(255, 215, 0);
      textAlign(LEFT, TOP);
      textSize(12);
      text(name.toUpperCase(), boxX + 10, boxY + 10);

      fill(220);
      textSize(11);
      text(description, boxX + 10, boxY + 28);

      noStroke();
    }
  }
}
