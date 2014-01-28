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
  fill(random(0,360));

  rect(x/random(0,300),y/random(0,2),w/random(0,30),h/random(0,10));

  if (x<300) {
    //recurse
  drawRectangle(x+1,y+1,w+1,h+1);
  }
}
