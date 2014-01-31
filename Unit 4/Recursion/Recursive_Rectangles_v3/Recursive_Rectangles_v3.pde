
float randWidth = random(100, 400);
float randHeight = random(100, 400);

void setup() {

  size(500, 500);


  rect(0, 0, randWidth, randHeight);
  rect(randWidth, randHeight, width-randWidth, height-randHeight);
  rect(randWidth, 0, width-randWidth, randHeight);
  rect(0, randHeight, randWidth, height-randHeight);

  strokeWeight(5);

  drawRectangle(100, 100,100,20);
  
  println(randWidth);
}

void drawRectangle(int newWTL, int newHTL, int newWTR, int newHTR) {
//top left
  rect(0, 0, randWidth, randHeight);
  rect(randWidth, randHeight, newWTL-randWidth, newHTL-randHeight);
  rect(randWidth, 0, newWTL-randWidth, randHeight);
  rect(0, randHeight, randWidth, newHTL-randHeight);

//top right
fill(0,245,1);

  rect(newWTR-randWidth, 0, newWTR-randWidth, randHeight);
  
 fill(245,0,0);
  rect(2*randWidth, 2*randHeight, newWTR-randWidth/2, newHTR-randHeight/2);
 
  fill(113,0,245);

  rect(2*randWidth, 0, newWTR-randWidth/2, randHeight/2);
  
    fill(240,245,0);

  rect(randWidth, 2*randHeight, randWidth/2, newHTR-randHeight/2);
  
  if (randWidth<newWTL) {
    //recurse
    drawRectangle(newWTL, newHTL, newWTR, newHTR);
  }
}
