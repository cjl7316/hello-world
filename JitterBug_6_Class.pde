class JitterBug {
 float x;
 float y;
 float x1;
 float y1;
 float x2;
 float y2;
 float x3;
 float y3;

 int diameter;
 float speed = 2.5;
 JitterBug(float tempX, float tempY, int tempDiameter) {
 x = tempX;
 y = tempY;
 diameter = tempDiameter;
 }
 JitterBug(float tempX1, float tempY1, float tempX2, float tempY2, float tempX3, float tempY3) {
 x1 = tempX1;
 y1 = tempY1;
 x2 = tempX2;
 y2 = tempY2;
 x3 = tempX3;
 y3 = tempY3;
 }
 void move() {
 x += random(-speed, speed);
 y += random(-speed, speed);
  x1 += random(-speed, speed);
 y1 += random(-speed, speed);
  x2 += random(-speed, speed);
 y2 += random(-speed, speed);
 x3 += random(-speed, speed);
 y3 += random(-speed, speed);
 }
 void display() {
 ellipse(x, y, diameter, diameter);
 }
 void display1() {
   
 triangle(x1, y1, x2, y2, x3, y3);
 }
 void setColor(){
  fill(255,0,0);
 }
 void setSize(){
   diameter=diameter-1;
 }
}