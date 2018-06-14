/****************************
  Blobby Coding Challenge
  Koby W.
  June 14 2018
*****************************/

float yoff = 0.0;

float circley = 0;

void setup() {
  size(400, 400);
  
}

void draw() {
 
  background(random(255),circley,250);

  translate(width/2, height/2);

  float radius = 150;

  beginShape();
  float xoff = 0;
  for (float a = 0; a < TWO_PI; a += 0.04 ) { // # of vert
    float offset = map(noise(xoff, yoff), 0, 1, -25, 25);
    float r = radius + offset;
    float x = r *  cos(a);
    float y = r * sin(a);
    vertex(x, y);
    xoff += 0.1; // how fluid the blob moves
    //ellipse
     
  }
  endShape();
  fill(66, 143, 244);
  yoff += 0.2; // speed of the blob
  circley += 10;
  
  if (circley > 400){
    circley = -200;
  }   
    
  ellipse(170,circley,20,20);
  ellipse(-170,circley,20,20);
  
}