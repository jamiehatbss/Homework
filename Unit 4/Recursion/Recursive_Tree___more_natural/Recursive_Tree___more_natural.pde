void setup() {
  //pink leaves
  fill(247, 204, 250);

  //brown branches
  stroke(85, 55, 33);

  size(800, 800);
  background(255);
  // origin to middle of bottom of window
  translate(width/2, height-50);

  // draw tree starting upright
  rotate(radians(-80));

  // thicker branches
  strokeWeight(15);

  scale(0.5, 0.5);
  // start tree off...
  drawTree(10, 25, 100, 0);
}

// drawTree
// Purpose: Draws a tree with a certain number of levels of recursion
//
// Parameters:     depth          How many levels to recurse
void drawTree(int depth, float thickness, int x2, int y2) {

  // Exit condition for recursion
  if (depth > 0) {
    if (depth>9) {
      strokeWeight(30);
      line(0, 0, 250, 0);
      translate(250, 0);
    }


    pushMatrix();
    //randomize length

    rotate(radians(random(-10, -60)));
    strokeWeight(thickness);
    //    stroke(111, 62, 10); // medium brown
    line(0, 0, x2, y2); // draw branch
    translate(random(40, 100), 0); // translate to end before drawing next Y
    
    //pink leaves
    stroke(247, 204, 250);
    
    ellipse(x2, y2-20, 5, 6);
    ellipse(x2+10, y2, 5, 6);
    ellipse(x2-5, y2, 5, 6);
    //brown branches
    stroke(85, 55, 33);

    drawTree(depth-1, thickness*0.6, x2, y2);
    popMatrix();

    // draw right branch
    pushMatrix();
    //randomize lengths of branches

    rotate(radians(random(10, 20)));
    strokeWeight(thickness);
    //    stroke(131, 93, 52); // lightest brown
    line(0, 0, x2, y2); // draw branch
    translate(random(40, 100), 0); // translate to end before drawing next Y
    
    //PINK leaves
    stroke(247, 204, 250);

    ellipse(x2, y2, 5, 6);
    ellipse(x2+5, y2, 5, 6);
    ellipse(x2-10, y2-5, 5, 6);
    ellipse(x2-5, y2-10, 5, 6);
    ellipse(x2-5, y2-20, 5, 6);
    //brown branches
    stroke(85, 55, 33);

    drawTree(depth-1, thickness*0.6, x2, y2);
    popMatrix();


    //    // draw third branch
    //    pushMatrix();
    //    //randomize lengths of branches
    //
    //    rotate(radians(2));
    //    strokeWeight(thickness);
    //    //    stroke(131, 93, 52); // lightest brown
    //    line(0, 0, 100, 0); // draw branch
    //    translate(random(30,100), 0); // translate to end before drawing next Y
    //    drawTree(depth-1, thickness-1);
    //    popMatrix();
  }
}
