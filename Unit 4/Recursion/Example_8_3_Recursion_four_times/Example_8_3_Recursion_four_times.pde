//For every circle displayed, draw a circle half its size 
//to the left and right of that circle
void setup() {
  size(640,360);
}
 
void draw() {
  background(255);
  drawCircle(width/2,height/2,200);
}
 
void drawCircle(float x, float y, float radius) {
  ellipse(x, y, radius, radius);
  if(radius > 8) {
    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
    drawCircle(x, y + radius/2, radius/2);
    drawCircle(x, y - radius/2, radius/2);
  }
}
