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
    fill(209, 30, 72); 
  } else {
    fill(0, 0, 255); 
  }
  for (int i=0; i<numBabies; i++) {
    ellipse(babies[i].x, babies[i].y, 20, 20);  
  }
}