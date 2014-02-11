float randomLength;
void setup() {

  size(800, 800);
  background(255);
  // origin to middle of bottom of window
  translate(width/2, height-50);

  // draw tree starting upright
  rotate(radians(-80));

  // thicker branches
  strokeWeight(15);

  scale(0.3, 0.3);
  // start tree off...
  drawTree(10, 9);
}

// drawTree
// Purpose: Draws a tree with a certain number of levels of recursion
//
// Parameters:     depth          How many levels to recurse
void drawTree(int depth, float thickness) {

  // Exit condition for recursion
  if (depth > 0) {
    // base - 100 pixels long
    stroke(46, 25, 1); // darkest brown
    line(0, 0, 100, 0);

    // move to end of base to draw branches
    translate(100, 0);

    // draw left branch


    pushMatrix();
    //randomize length
    randomLength= random(20, 100);

    rotate(radians(random(-10, -60)));
    strokeWeight(thickness);
    //    stroke(111, 62, 10); // medium brown
    line(0, 0, randomLength, 0); // draw branch
    translate(randomLength, 0); // translate to end before drawing next Y
    drawTree(depth-1, thickness-1);
    popMatrix();

    // draw right branch
    pushMatrix();
    //randomize lengths of branches
    randomLength= random(20, 100);

    rotate(radians(random(5, 20)));
    strokeWeight(thickness);
    //    stroke(131, 93, 52); // lightest brown
    line(0, 0, randomLength, 0); // draw branch
    translate(randomLength, 0); // translate to end before drawing next Y
    drawTree(depth-1, thickness-1);
    popMatrix();
    
    
     // draw third branch
    pushMatrix();
    //randomize lengths of branches
    randomLength= random(20, 100);

    rotate(radians(random(5, 20)));
    strokeWeight(thickness);
    //    stroke(131, 93, 52); // lightest brown
    line(0, 0, randomLength, 0); // draw branch
    translate(randomLength, 0); // translate to end before drawing next Y
    drawTree(depth-1, thickness-1);
    popMatrix();
  }
}
