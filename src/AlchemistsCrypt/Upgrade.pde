// Thomas Li
class Upgrade {
  int x, y, w, h;
  PImage icon;
  char type;
  String name;
  String description;
  boolean isClicked = false;

  Upgrade(int posX, int posY) {
    x = posX;
    y = posY;
    w = 120;
    h = 160;

    float uValue = random(3);
    if (uValue > 2.0) {
      type = 'a';
      name = "Upgrade A";
      description = "This is Upgrade A. Gives Health.";
        icon = loadImage("Upgradea.png");
    } else if (uValue > 1.0) {
      type = 'b';
      name = "Upgrade B";
      description = "This is Upgrade B. No idea what it does.";
      //  icon = loadImage("Upgradeb.png");
    } else {
      type = 'c';
      name = "Upgrade C";
      description = "This is Upgrade C. Also no idea what this does.";
      //  icon = loadImage("Upgradec.png");
    }
  }
  // MEMBER METHODS:
  void display() {
    if (isClicked) return;

    pushStyle();

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
    text(name, x, y - h/4);

    fill(255, 100);
    ellipse(x, y, 55, 55);
    if (icon != null) {
      imageMode(CENTER);
      image(icon, x, y, 40, 40);
    }




    if (isHovered) {
      int boxW = 180;
      int boxH = 90;
      int boxX = mouseX + 15;
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
      text(name.toUpperCase(), boxX + 8, boxY + 10);

      fill(220);
      textSize(11);
      text(description, boxX + 8, boxY + 25);
    }

    popStyle();
  }

  void checkClick() {
    if (!isClicked && mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - h/2 && mouseY < y + h/2) {
      isClicked = true;
      applyUpgradeEffect();
    }
  }

  void applyUpgradeEffect() {
    println("Picked up " + name + " (Type: " + type + ")");
  }
}
