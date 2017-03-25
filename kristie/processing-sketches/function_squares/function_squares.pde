
int numRects = 4;
int[] rectX = new int[numRects];
float[] speed = new float[numRects];
color[] colors = {
  color(209, 30, 72),
  color(209, 255, 72),
  color(44, 164, 200),
  color(44, 200, 164)
};

void setup() {
  size(800, 600);
  
  for (int i=0; i<numRects; i++) { 
    rectX[i] = 300-i*60;
  }
  
  for (int i=0; i<numRects; i++) {
    speed[i] = 5.0;
  }
}

void draw() {
  background(252, 251, 227);
  noStroke();
  
  for (int i=0; i<numRects; i++) {
    fill(colors[i]);
    rect(100*i, rectX[i], 100, 300);
    //fill(209, 255, 72);
    //rect(100, rectX[1], 100, 300);
    //fill(44, 164, 200);
    //rect(200, rectX[2], 100, 300);
    //rect(300, rectX[3], 100, 300);
    //fill(44, 200, 164);
    //rect(400, rectX[4], 100, 300); 
  }

  for (int i=0; i<numRects; i++) {
    rectX[i] = int(rectX[i] + speed[i]);
    if (rectX[i] > height - 300 || rectX[i] < 0) {
      speed[i] = speed[i] * -1;
    }
  }
}