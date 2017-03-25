
int ballX = 50;
int speed = 3;

void setup() {
  size(800, 800);
  noStroke();
}

void draw() {
  background(252, 251, 227);
  
  fill(249, 66, 10);
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

  fill(209, 30, 72);
  ellipse(ballX, 425, 50, 50);

  ballX = ballX + speed;
  if (ballX > width || ballX < 0) {
    speed = speed * -1;
  }
  
  // add frames here
  if (frameCount < 600) {
    saveFrame("f####.png");
  } else {
    exit();
  }
}