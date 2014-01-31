float angle = 0.0;

void setup() {
  size(600, 600);
  
  background(0,0,0);
}

void draw() {
  angle +=1;

  translate(width/2, height/2);
  
    rotate(angle);

  drawCircle(height/2, 0);
}

void drawCircle(float radius, float x) {
    
  //new ellipse - smaller
  ellipse(x+15, height/2, radius-20, radius-20);

  if (radius>20) {
    //recurse
    drawCircle(radius-20, x+15);
  }
}


