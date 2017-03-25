
int numRects = 4;
float[] rectX = {50, 5, 10, 100};
float[] speed = {2.5, 0.5, 0.1, 5.0};
int[] heights = {2, 3, 4, 6};

void setup() {
  size(800,800);
  noStroke();
}

void draw() {
  background(252, 251, 227);
  fill(19, 29, 63);
  for (int i=0; i<numRects; i++) {
    rect(rectX[i], height/heights[i], 300, 10);
    rectX[i] = rectX[i] + speed[i];
    if (rectX[i] > width - 300 || rectX[i] < 0) {
      speed[i] = speed[i] * -1;  
    }
  }
  
  // add frames here
}