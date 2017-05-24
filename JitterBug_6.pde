JitterBug jit;
JitterBug bug;
JitterBug beetle;
void setup() {
 size(480, 120);
 smooth();
 jit = new JitterBug(width * 0.33, height/2, 50);
 bug = new JitterBug(width * 0.66, height/2, 10);
 beetle = new JitterBug(width * 0.75, height/3, 10);
}
void draw() {
 jit.move();
 jit.display();
 bug.move();
 bug.display();
 beetle.move();
 beetle.display1();
 beetle.setColor();
 bug.setSize();
}