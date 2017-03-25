
int numRects = 7;
int[] rectX = new int[numRects];
float[] speed = new float[numRects];
color[] colors = {
  color(209, 30, 72),
  color(209, 255, 72),
  color(44, 164, 200),
  color(44, 200, 164),
  color(30, 72, 209),
  color(209, 30, 72),
  color(209, 255, 72),
};

void setup() {
  size(800, 800);
  
  for (int i=0; i<numRects; i++) { 
    rectX[i] = constrain(300-i*60, 0, height);
  }
  
  for (int i=0; i<numRects; i++) {
    speed[i] = 5.0;
  }
  
  noStroke();
}

void draw() {
  background(252, 251, 227);
  
  
  for (int i=0; i<numRects; i++) {
    fill(colors[i]);
    rect(100*i, rectX[i], 100, 300);
  }

  for (int i=0; i<numRects; i++) {
    rectX[i] = int(rectX[i] + speed[i]);
    if (rectX[i] > height - 300 || rectX[i] < 0) {
      speed[i] = speed[i] * -1;
    }
  }
}