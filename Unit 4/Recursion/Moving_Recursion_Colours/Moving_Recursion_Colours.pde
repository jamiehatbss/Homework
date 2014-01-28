float angle = 0.0;

void setup() {
  size(600, 600);
  
  background(0,0,0);
  
    //color mode
  colorMode(HSB, 360, 100, 100, 100);

}

void draw() {
  angle +=1;

  translate(width/2, height/2);
  
    rotate(angle);

  drawCircle(height/2, 0);
}

void drawCircle(float radius, float x) {
    if (frameCount % 2 == 0) {
    fill(303, 98, 99, 25); //pink
  }
  if (frameCount % 3 == 0) {
    fill(119, 98, 99, 25); //green
  }
  if (frameCount % 4 == 0) {
    fill(175, 98, 99, 25); //blue
  }
  if (frameCount % 5 == 0) {
    fill(61, 98, 99, 25); //yellow
  }
  
  //new ellipse - smaller
  ellipse(x+15, height/2, radius-20, radius-20);

  if (radius>20) {
    //recurse
    drawCircle(radius-20, x+15);
  }
}

