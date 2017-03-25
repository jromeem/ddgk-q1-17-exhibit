console.log('hello functions_ball_bounce!');

var rectX = 50;
var speed = 2.5;

var rectX2 = 5;
var speed2 = 0.5;

function setup() {
    var canvas = createCanvas(800, 800);
    canvas.parent("p5canvas");
}

function draw() {
    background(252,251,227);
    noStroke();
    //fill(249,66,10);
    
    fill(209, 30, 72);
    rect(height/2, rectX, 100, 300);
    fill(209, 255, 72);
    rect(height/3, rectX2, 100, 300);
    
    fill(44, 164, 200);
    //pink
    rect(height/6, rectX, 100, 300);
    rect(height/106, rectX, 100, 300);
    
    
    rectX = rectX + speed;
    if (rectX > width || rectX < 0) {
        speed = speed * -1;
    }   
    
    rectX2 = rectX2 + speed2;
    if (rectX2 > width || rectX2 < 0) {
        speed2 = speed2 * -1;
    }
}