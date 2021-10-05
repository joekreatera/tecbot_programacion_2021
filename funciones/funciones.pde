
float do_function(int vx){
  float ry = 1f/3f*vx+7; 
  return ry;
}
void setup(){
  size(800,600);
}

void draw(){
  background(0,0,0);
  float r1 = do_function(2);
  text("F(2)=" + r1,50,50);
  r1 = do_function(3);
  text("F(3)=" + r1,50,75);
  r1 = do_function(5);
  text("F(5)=" + r1,50,100); 
  r1 = do_function(6);
  text("F(6)=" + r1,50,125);  
  r1 = do_function(8);
  text("F(8)=" + r1,50,150);
  r1 = do_function(10);
  text("F(10)=" + r1,50,175);
  noLoop();
}
