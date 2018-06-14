// Michael Lam
// June 14, 2018
// Coding Challenge 36: Blobby

// Changes
// - Blob follows mouse
// - Added fill colour
// - Increased noise range (creates larger movements)
// - Reduced number of vertices

// Declaring variables
float yoff = 0;

// Initial setup
void setup() {
  size(400, 400);
}

// Runs code continuously
void draw() {
  background(0);
  translate(mouseX, mouseY);
  float radius = 150;
  beginShape();
  float xoff = 0;
  for (float i = 0; i < TWO_PI; i += 0.02) {
    float offset = map(noise(xoff, yoff), 0, 1, -50, 50);
    float r = radius + offset;
    float x = r * cos(i);
    float y = r * sin(i);
    fill(174, 73, 123);
    vertex(x, y);
    xoff += 0.1;
  }
  endShape();
  yoff += 0.1;
}
