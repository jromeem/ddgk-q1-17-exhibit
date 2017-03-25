
int ballX = 50;
int speed = 3;

void setup() {
  size(800, 800);
}

void draw() {
  background(252, 251, 227);
  noStroke();
  fill(44, 164, 200);
  ellipse(ballX, 425, 50, 50);
  ellipse(50, 275, 50, 50);
  ellipse(125, 275, 50, 50);
  ellipse(200, 275, 50, 50);
  ellipse(275, 275, 50, 50);
  ellipse(50, 350, 50, 50);
  ellipse(125, 350, 50, 50);
  ellipse(200, 350, 50, 50);
  ellipse(275, 350, 50, 50);
  ellipse(50, 425, 50, 50);
  ellipse(125, 425, 50, 50);
  ellipse(200, 425, 50, 50);
  ellipse(275, 425, 50, 50);
  ellipse(50, 500, 50, 50);
  ellipse(125, 500, 50, 50);
  ellipse(200, 500, 50, 50);
  ellipse(275, 500, 50, 50);

  ballX = ballX + speed;
  if (ballX > width || ballX < 0) {
    speed = speed * -1;
  }
}