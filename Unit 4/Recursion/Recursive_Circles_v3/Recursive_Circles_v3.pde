void setup() {
  size(800, 800);

  background(255);


  drawCircle1(200, height/2, height/2);
  drawCircle2(200, height/2, height/2);
  drawCircle3(200, height/2, height/2);
  drawCircle4(200, height/2, height/2);
  
     ellipse(width/2, height/2, 220, 220);

}


//top left corner
void drawCircle1(float radius, float x, float y) {
  //new ellipse - smaller
  ellipse(x-20, y-20, radius-20, radius-20);

  if (radius>20) {
    //recurse
    drawCircle1(radius-20, x-20, y-20);
  }
}

//top right
void drawCircle2(float radius, float x, float y) {


  //new ellipse - smaller
  ellipse(x+20, y-20, radius-20, radius-20);

  if (radius>20) {
    //recurse
    drawCircle2(radius-20, x+20, y-20);
  }
}

//bottom left
void drawCircle3(float radius, float x, float y) {

  //new ellipse - smaller
  ellipse(x-20, y+20, radius-20, radius-20);

  if (radius>20) {
    //recurse
    drawCircle3(radius-20, x-20, y+20);
  }
}

//bottom right
void drawCircle4(float radius, float x, float y) {

  //new ellipse - smaller
  ellipse(x+20, y+20, radius-20, radius-20);

  if (radius>20) {
    //recurse
    drawCircle4(radius-20, x+20, y+20);
  }
}


