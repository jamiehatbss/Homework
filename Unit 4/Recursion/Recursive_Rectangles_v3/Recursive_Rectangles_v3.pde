float randWidth = random(1, 200);
float randHeight = random(1, 200);

void setup() {
  size(500, 500);

  rect(0, 0, randWidth, randHeight);
  rect(randWidth, randHeight, width-randWidth, height-randHeight);
  rect(randWidth, 0, width-randWidth, randHeight);
  rect(0, randHeight, randWidth, height-randHeight);
}

//void drawRectangle(int randWidth, int randHeight) {
//  fill(random(0, 360));
//
//
//  if (x<300) {
//    //recurse
//    drawRectangle(randWidth, randHeight);
//  }
//}

