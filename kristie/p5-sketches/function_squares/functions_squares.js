console.log('hello functions_ball_bounce!');

var rectX = 50;
var speed = 2.5;

var rectX2 = 5;
var speed2 = 0.5;

var rectX3 = 10;
var speed3 = 1;

var rectX4 = 100;
var speed4 = 5;

function setup() {
    var canvas = createCanvas(800, 800);
    canvas.parent("p5canvas");
}

function draw() {
    background(252,251,227);
    noStroke();
    //fill(249,66,10);
    
    //4blue
    fill(44, 164, 200);
    rect(height/2, rectX4, 100, 300);
    
    //3orange
    fill(249,66,10);
    rect(height/3, rectX2, 100, 300);
    
    //2blue
    fill(44, 164, 200);
    rect(height/6, rectX, 100, 300);
    
    //1orange
    fill(249,66,10);
    rect(height/106, rectX3, 100, 300);
    
    
    rectX = rectX + speed;
    if (rectX > width || rectX < 0) {
        speed = speed * -1;
    }   
    
    rectX2 = rectX2 + speed2;
    if (rectX2 > width || rectX2 < 0) {
        speed2 = speed2 * -1;
    }
    
    rectX3 = rectX3 + speed3;
    if (rectX3 > width || rectX3 < 0) {
        speed3 = speed3 * -1;
    }
    
    rectX4 = rectX4 + speed4;
    if (rectX4 > width || rectX4 < 0) {
        speed4 = speed4 * -1;
    }
}