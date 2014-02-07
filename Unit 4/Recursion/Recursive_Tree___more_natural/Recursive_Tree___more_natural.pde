void setup() {

  size(800, 800);
  background(255);
  // origin to middle of bottom of window
  translate(width/2, height);

  // draw tree starting upright
  rotate(radians(-90));

  // thicker branches
  strokeWeight(5);

  scale(0.5,0.5);
  // start tree off...
  drawTree(5);
}

// drawTree
// Purpose: Draws a tree with a certain number of levels of recursion
//
// Parameters:     depth          How many levels to recurse
void drawTree(int depth) {

  // Exit condition for recursion
  if (depth > 0) {
    // base - 100 pixels long
    stroke(46, 25, 1); // darkest brown
    line(0, 0, 100, 0);

    // move to end of base to draw branches
    translate(100, 0);

    // draw left branch
    pushMatrix();
    rotate(radians(random(-10,-60)));
    strokeWeight(random(1,7));
    stroke(111, 62, 10); // medium brown
    line(0, 0, 100, 0); // draw branch
    translate(100, 0); // translate to end before drawing next Y
    drawTree(depth-1);
    popMatrix();

    // draw right branch
    pushMatrix();
    rotate(radians(random(10,60)));
    stroke(131, 93, 52); // lightest brown
    line(0, 0, 100, 0); // draw branch
    translate(100, 0); // translate to end before drawing next Y
    drawTree(depth-1);
    popMatrix();
  }
}
