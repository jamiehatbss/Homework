void setup(){
  size(300,300);

    rect(0,0,200,160);
  rect(200,0,100,80);
  rect(200,80,100,80);
  rect(200,160,100,160);
  rect(0,160,200,160);
  drawRectangle(0,0,200,160);
}

void drawRectangle(int x, int y, int w, int h){
  rect(x+10,y+10,w+10,h+10);

  if (x<300) {
    //recurse
  drawRectangle(x+10,y+10,w+10,h+10);
  }
}
