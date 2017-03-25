console.log('hello arrays!');

var numBabies = 50;
var babies = Array(numBabies);

function setup() {
  var canvas = createCanvas(800, 800);
  canvas.parent("p5canvas");

  for (var i = 0; i < numBabies; i++) {
    babies[i] = createVector(random(800), random(800));
  }
  console.log(babies);
  noStroke();
}

function draw() {
  background(252, 251, 227);
    
    var isPink = int(random(2));
    
    if (isPink == 1) {
        fill(209, 30, 72);
    } else {
        // ornage ?
        fill(255, 0, 0);
    }

  for (var i = 0; i < numBabies; i++) {
    //fill(random(0,255),66,10);
    ellipse(babies[i].x, babies[i].y, 20, 20);
  }
}
