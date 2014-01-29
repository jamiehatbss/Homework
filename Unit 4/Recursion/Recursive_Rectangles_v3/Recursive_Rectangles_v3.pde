float randWidth = random(100, 500);
float randHeight = random(100, 500);

void setup() {

  size(500, 500);
  

   rect(0, 0, randWidth, randHeight);
  rect(randWidth, randHeight, width-randWidth, height-randHeight);
  rect(randWidth, 0, width-randWidth, randHeight);
  rect(0, randHeight, randWidth, height-randHeight);

    strokeWeight(5);

  drawRectangle(100, 100);
}

void drawRectangle(int newW, int newH) {
  
  rect(0, 0, randWidth, randHeight);
  rect(randWidth, randHeight, newW-randWidth, newH-randHeight);
  rect(randWidth, 0, newW-randWidth, randHeight);
  rect(0, randHeight, randWidth, newH-randHeight);

//  if (randWidth<150) {
//    //recurse
//    drawRectangle(newW, newH);
//  }
}
