int w = 50;
float rad = 0;
PImage crate;

void setup() {
  size(800, 600, P3D);
  crate = loadImage("create.jpg");
}
void draw() {
  noStroke();
  background(200);

  translate(100,100,0);
  pushMatrix();
  translate(400, 300, 0);
  rotateY(rad);
  scale(4);
  textureMode(NORMAL);
  rad += .01;
  beginShape(TRIANGLE_STRIP);
  texture(crate);
  vertex(w, -w, 0   , 1 , 0);
  vertex(w, w, 0    , 1 , 1);
  vertex(-w, -w, 0  , 0 , 0);
  vertex(-w, w, 0   , 0 , 1);
  endShape();
 
  beginShape(TRIANGLE_STRIP);
  texture(crate);
  vertex(0, -w, w   , 1 , 0);
  vertex(0, w, w    , 1 , 1);
  vertex(0, -w, -w  , 0 , 0);
  vertex(0, w, -w   , 0 , 1);
  endShape();
  popMatrix();
  
  
  beginShape(TRIANGLE_STRIP);
  texture(crate);
  vertex(w, -w, 0   , 1 , 0);
  vertex(w, w, 0    , 1 , 1);
  vertex(-w, -w, 0  , 0 , 0);
  vertex(-w, w, 0   , 0 , 1);
  endShape();
  
}
