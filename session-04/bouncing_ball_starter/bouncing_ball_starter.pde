float x = 0;
float y = 0;

float speedx = 4;
float speedy = 2.5;
 
void setup() {
  size(640, 480);
}

void draw() {
  background(51);
  
  drawBall();
  moveBall();
  checkEdges();
}

void drawBall() {
  fill(170);
  stroke(255);
  ellipse(x, y, 30, 30);
}

void moveBall() {
  x += speedx;
  y += speedy;
}

void checkEdges() {
  if (x > width || x < 0) {
    speedx = -speedx;
  }
  if (y > height || y < 0) {
    speedy = -speedy;
  }
}
