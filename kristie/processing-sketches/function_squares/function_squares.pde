
int numRects = 4;
float[] rectX = {50, 5, 10, 100};
float[] speed = {2.5, 0.5, 0.1, 5.0};
int[] heights = {2, 3, 6, 106};

void setup() {
  size(800,800);
  noStroke();
}

void draw() {
  background(252, 251, 227);
  fill(19, 29, 63);
  for (int i=0; i<numRects; i++) {
    if (i % 2 == 0) {
      fill(44, 164, 200);
    } else {
      fill(249, 66, 10);
    }
    rect(height/heights[i], rectX[i], 100, 300);
    rectX[i] = rectX[i] + speed[i];
    if (rectX[i] > width - 300 || rectX[i] < 0) {
      speed[i] = speed[i] * -1;  
    }
  }
  
  // add frames here
  if (frameCount < 600) {
    saveFrame("f####.png");
  } else {
    exit();
  }
}