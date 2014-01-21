void setup() {
  size(600, 600);

  background(255);

  drawCircle1(height/2, 200, height/2);
  drawCircle2(height/2, 400, height/2);
  drawCircle3(height/2, 0, height);
  drawCircle4(height/2, width, height);
}


//top left corner
void drawCircle1(float radius, float x, float y) {
  //new ellipse - smaller
  ellipse(x-13, y-20, radius-20, radius-20);

  if (radius>20) {
    //recurse
    drawCircle1(radius-20, x-13, y-20);
  }
}

//top right
void drawCircle2(float radius, float x, float y) {


  //new ellipse - smaller
  ellipse(x+13, y-20, radius-20, radius-20);

  if (radius>20) {
    //recurse
    drawCircle2(radius-20, x+13, y-20);
  }
}

//bottom left
void drawCircle3(float radius, float x, float y) {

  //new ellipse - smaller
  ellipse(x+15, y-20, radius-20, radius-20);

  if (radius>20) {
    //recurse
    drawCircle3(radius-20, x+15, y-20);
  }
}

//bottom right
void drawCircle4(float radius, float x, float y) {

  //new ellipse - smaller
  ellipse(x-15, y-20, radius-20, radius-20);

  if (radius>20) {
    //recurse
    drawCircle4(radius-20, x-15, y-20);
  }
}


