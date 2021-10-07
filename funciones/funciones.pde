
float do_function2(int vx){
  float ry = 1f/3f*vx+7;
  return ry;
}


float do_function(int vx){
  // float ry = 1f/3f*vx+7;
  
  float ry = (vx*vx/150f + (vx*vx*vx-10)/15000)*.5f;
  return ry;
}


void setup(){
  size(800,600);
}

void plotPoint(int px){
  float r1 = do_function(px);
  circle(mouseX + px,mouseY - r1,5);
}

void draw(){
  background(0,0,0);
  
  plotPoint(-10);
  plotPoint(-20);
  plotPoint(-30);
  plotPoint(-40);
  plotPoint(-50);
  plotPoint(-60);
  plotPoint(-70);
  plotPoint(-80);
  plotPoint(-90);
  plotPoint(-100);
  plotPoint(-110);
  plotPoint(-120);
  plotPoint(-130);
  plotPoint(-140);
  plotPoint(-150);
  
  plotPoint(10);
  plotPoint(20);
  plotPoint(30);
  plotPoint(40);
  plotPoint(50);
  plotPoint(60);
  plotPoint(70);
  plotPoint(80);
  plotPoint(90);
  plotPoint(100);
  plotPoint(110);
  plotPoint(120);
  plotPoint(130);
  plotPoint(140);
  plotPoint(150);
  
  //noLoop();
}
