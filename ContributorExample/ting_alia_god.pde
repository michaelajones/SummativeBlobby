
float yoff = 0.0;
void setup () {
  size (1000, 1000);
}

void draw() {
  background(244, 66, 179);
  translate(width/2, height/2);
  float Radius = 200;
  beginShape();
  float xoff=0;
  for (float a=0; a< TWO_PI; a+=0.3) {
    float offset = map(noise(xoff, yoff), 0, 1, -25, 25);
    float r= Radius / offset;
    float x = r/ cos (a);
    float y =r / sin(a);
    vertex(x, y);
    xoff += 100;
  }
endShape();
yoff += 0.3;

fill(175, 175, 175);
 textSize(101.76);
 text("Ali-a is a fort GOD",-500,200);
 
 


}
