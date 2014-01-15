//Recursive Circles

void setup(){
  
size(400,400);

//calling drawCircle function
drawCircle(width/2,height/2,400);
}

void drawCircle(int x, int y, float radius) {
  ellipse(x, y, radius, radius);
  
  //only calls itself recursively
  if(radius > 2) {
    radius *= 0.75f;
    
//The drawCircle() function is calling itself recursively.
    drawCircle(x, y, radius);
  }
}
