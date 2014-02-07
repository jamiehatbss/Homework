void setup() {

  size(500, 500);

  strokeWeight(5);

  drawRectangle(width, height, 0, 0);
}

void drawRectangle(float newWidth, float newHeight, float originX, float originY) {

  float randWidth = random(newWidth/5, newHeight/5*4);
  float randHeight = random(newWidth/5, newHeight/5*4);

  //top left
  rect(originX, originY, randWidth, randHeight);
  rect(randWidth, randHeight, newWidth-randWidth, newHeight-randHeight);
  rect(randWidth, originY, newWidth-randWidth, randHeight);
  rect(originX, randHeight, randWidth, newHeight-randHeight);

  if (randWidth>25) {
    //recurse
    drawRectangle(randWidth, randHeight);
  }
}
