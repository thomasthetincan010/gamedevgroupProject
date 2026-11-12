//r and i state where the hitbox of the buttons is, h and w state how big the hitbox is

class Button {
  PImage image;        
  int x, y, w, h, r, i;
  boolean over;
  
  Button(int x, int y, int w, int h, int r, int i, String spriteIndex) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.r = r;
    this.i = i;
    over = false;

    
    image = loadImage(spriteIndex + ".png");
  }

  void display() {
    if (image != null) {
      if (over) {
      image(image, x, y);
    } else {
      image(image, x, y);
    }
      
    } else {
      fill(255);
      rect(x, y, w, h);
    }
  }
  
  boolean clicked() {
    return (mouseX > r - w/2 && mouseX < r + w/2 && mouseY > i - h/2 && mouseY < i + h/2);
  }
  void hover() {
    if(mouseX > r - w/2 && mouseX < r + w/2 && mouseY > i - h/2 && mouseY < i + h/2) {
      over = true;
    } else {
      over = false;
    }
  }
}
