void setup() {
cantor(10, 20, width-20);

}

void cantor(float x, float y, float len) {
  line(x,y,x+len,y);
 
  y += 20;
//From start to 1/3rd
//line(x,y,x+len/3,y); becomes...
  cantor(x,y,len/3);
  
//From 2/3rd to end
//line(x+len*2/3,y,x+len,y);   becomes...
  cantor(x+len*2/3,y,len/3);
}

