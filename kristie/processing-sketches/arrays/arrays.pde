int numBabies = 50;
PVector[] babies = new PVector[numBabies];

void setup() {
  size(800,800);
  for (int i=0; i<numBabies; i++) {
    babies[i] = new PVector(random(800), random(800)); 
  }
  noStroke();
}

void draw() {
  background(252, 251, 227);
  int isPink = int(random(2));
  if (isPink == 1) {
    fill(243,197,48); 
  } else {
    fill(249,66,10); 
  }
  for (int i=0; i<numBabies; i++) {
    ellipse(babies[i].x, babies[i].y, 20, 20);  
  }

  // add frames here
  if (frameCount < 600) {
    saveFrame("f####.png");
  } else {
    exit();
  }
}