float divisor = 4;
void setup(){
  size(750,650);
  drawTree();
}

void Lines(float len,float y,int depth,int dir){
  if(depth == 0) return;
  line(0,y,0,-len);
  pushMatrix();
  translate(0,-len);
  rotate(PI/divisor * dir);
    Lines(len/1.5,0,depth-1,1);
    Lines(len/1.5,0,depth-1,-1);
  popMatrix();  
  return;
}

void draw(){
}

void drawTree(){
  background(130);
  translate(375,650);
  Lines(200,0,15,-1); 
  Lines(200,0,15,1); 
}

void keyPressed(){
    if(key == 'w'){
      divisor+=0.1;
    } else if(key == 's'){
      divisor-=0.1;
    }
    drawTree();  
}
