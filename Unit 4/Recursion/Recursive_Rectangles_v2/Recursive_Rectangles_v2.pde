void setup() {
  size(300, 300);



  drawRectangle(0, 0, 200, 160);

  rect(275, 150, 125, 350);
  rect(0, 0, 275, 150);
  rect(0, 150, 275, 150);
  rect(0, 275, 400-275, 150);
}

void drawRectangle(int randWidth, int randHeight) {
  fill(random(0, 360));

  rect(randWidth, randHeight, width-randWidth, height-randHeight);
  rect(randWidth-randWidth, randHeight-randHeight, randWidth, randHeight);
  rect(randWidth-randWidth, randHeight, randWidth, randHeight);
  rect(randWidth-randWidth, randWidth, width-randWidth, randHeight);
  if (x<300) {
    //recurse
    drawRectangle(randWidth, randHeight);
  }
}

