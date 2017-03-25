console.log('hello functions_ball_bounce!');

var rectX = 50;
var speed = 2.5;

var rectX2 = 5;
var speed2 = 0.5;

var rectX3 = 10;
var speed3 = 0.1;

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
    fill(19,29,63);
    rect(rectX4, height/2, 300, 10);
    
    fill(19,29,63);
    rect(rectX3, height/3, 300, 10);
    
    fill(19,29,63);
    rect(rectX2, height/4, 300, 10);
    
    fill(19,29,63);
    rect(rectX, height/6, 300, 10);
    
    
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