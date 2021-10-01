/*
Generar un escenario de un bosque
 Lleva 1 sol y 1 luna
 debe de llevar un bosque de no menos de 50 árboles
 Dbe llevar 1+ montañas
 Debe llevar 10 nubes
 */

void drawTree(int cx, int cy, int logSize) {

  fill(121, 40, 11);
  rect(cx-10, cy, 20, -logSize);
  fill(0, 131, 5);
  circle(cx-20, cy-logSize, 60 );
  circle(cx+20, cy-logSize, 60 );
  circle(cx, cy-logSize-20, 60 );
}

void drawCloud(int cx, int cy, int cloudSize){
  fill(255, 255, 255);
  circle(cx-20, cy, cloudSize );
  circle(cx+20, cy-5, cloudSize );
  circle(cx, cy+10, cloudSize );
}

void drawBigCloud(int cx, int cy, int cloudSize){
  fill(255, 255, 255);
  drawCloud(cx-60, cy-10, cloudSize );
  drawCloud(cx+60, cy+15, cloudSize );
  drawCloud(cx, cy+5, cloudSize );
}


void drawThrees(int cx, int cy) {
  drawTree(cx+70, cy-5, 80);
  drawTree(cx-70, cy-5, 80);
  drawTree(cx+40, cy-3, 70);
  drawTree(cx-30, cy-3, 90);
  drawTree(cx+5, cy, 60);
}



void setup() {
  size(640, 480);
}

void drawClouds(){
  drawFloor();
  drawBigCloud((int)cx+100,100,50+cs);
  drawBigCloud((int)cx+200,200,50-cs);
  drawBigCloud((int)cx+300,100,50+cs);
  drawBigCloud((int)cx+500,50,70-cs);
  drawBigCloud((int)cx+400,150,100+cs);
  cx += 0.1;
  cs = 20 + (int)(Math.random()*2);  
}


void drawSky(){
  fill(177,230,240);
  rect(0,0,640,480);
}

void drawFloor(){
  fill(31,62,33);
  rect(0,240,640,300);
}

float cx = -200.0f;
int cs = 20;
void draw() {
  noStroke();
  background(200);
  drawSky();
  //drawTree(320, 240, 80);
  int py = 340;
  drawClouds();
  drawThrees(320,py);
  drawThrees(320+125,py-5);
  drawThrees(320-125,py-5);
  drawThrees(320+250,py-10);
  drawThrees(320-250,py-10);
  
  noLoop();
}
