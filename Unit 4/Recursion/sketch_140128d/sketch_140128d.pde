void setup(){
  size(300,300);

 
  drawRectangle(300,300);
}

void drawRectangle(int w, int h){

  
 rect(0,0,w-random(1,100),h-random(1,100));
   rect(0,0,200,160);
  rect(200,0,100,80);
  rect(200,80,100,80);
  rect(200,160,100,160);
  rect(0,160,200,160);

  if (w<300) {
    //recurse
  drawRectangle(w+10, h+10);
  }
}
