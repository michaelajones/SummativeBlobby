var yoff = 0.0;

function setup() {
  createCanvas(800, 800);
}

function draw() {
  noStroke();
  fill(123, 16, 196);
  background(252, 239, 117);

  translate(width / 2, height / 2);

  var radius = 300;

  beginShape();
  var xoff = 0;
  for (var a = 0; a < TWO_PI; a += 0.0009) {
    var offset = map(noise(xoff, yoff), 0, 1, -200, 50);
    var r = radius + offset;
    var x = r * cos(a);
    var y = r * sin(a);
    vertex(x, y);
    xoff += 0.1;
    //ellipse(x, y, 4, 4);
  }
  endShape();

  yoff += 0.01;
}
