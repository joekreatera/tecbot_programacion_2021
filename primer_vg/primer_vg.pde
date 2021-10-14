// comentario de 1 linea
int px = 100;
int py = 100;
int vx = 1;
int vy = 1;
/*
Comentario de varias lineas
*/
void setup(){
  size(640,480);
}

void draw(){
  
  // background(128);
  py = py + vy;
  px = px + vx;
  circle(px,py,50);
  
  
  if(py >= 470) {
    vy = vy * -1;
  }
  
  if( px >= 600){
    vx = vx * -1;
  }
  
  
  if(py <= 30) {
    vy = vy * -1;
  }
  
  if( px <= 30){
    vx = vx * -1;
  }
  
}
