void setup() {
  size(400, 400);

  //move the origin
  translate(width/2, height);

  //thicker lines 
  strokeWeight(5);

  //make tree upright
  rotate(radians(-90));

  //start drawing tree
  drawTree(2); //with two "generations" of base, left branch, right branch
}

void drawTree(int depth) {

  if (depth > 0) {
    //draw base
    stroke(0, 0, 255); //blue
    line(0, 0, 100, 0); //draw along x-axis
    translate(100, 0);

    //draw left branch
    pushMatrix();
    rotate(radians(-45));
    stroke(255, 0, 0);
    line(0, 0, 100, 0); //draw along x-axis
    translate(100,0); //translate to end of branch before drawing next "y"
    drawTree(depth -1);
    popMatrix();

    //draw left branch
    pushMatrix();
    rotate(radians(45));
    stroke(0, 255, 0);
    line(0, 0, 100, 0); //draw along x-axis
    popMatrix();
  }
}
