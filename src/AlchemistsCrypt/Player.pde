// Will Comstock

class Player {
//Member Variable
int x,y,w,h,health,damage;
PImage b1;




//Constructor
Player(){
//b1 = loadImage("Concept1.png");
x = 100;
y = 100;
h = 100;
w = 100;
health = 100;
damage = 10;
}
//Member Methods
void display(){
//image(b1,x,y,h,w);
ellipse(x,y,h,w);
fill(33,248,99);
}
void move(){}

}
