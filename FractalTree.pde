void setup(){
  size(500,350);
  translate(250,350);
  Lines(100,0,20,-1); 
  Lines(100,0,20,1);
}

void Lines(float len,float y,int depth,int dir){
  if(depth == 0) return;
  line(0,y,0,-len);
  pushMatrix();
  translate(0,-len);
  rotate(PI/4 * dir);
    Lines(len/1.5,0,depth-1,1);
    Lines(len/1.5,0,depth-1,-1);
  popMatrix();  
}
