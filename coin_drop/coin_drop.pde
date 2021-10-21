float timePassed = 0;
float py = 300;
float vy0 = -47 ;

float px = 0;
void setup() {
  size(800, 600, P3D);
}
void drawCircle(int px, int py, int r, int segments) {
  float ang_increment = 360.0f/segments;
  float ang_total = 0;
  ang_increment = ang_increment*PI/180.0f;
  beginShape(TRIANGLE_FAN);
  vertex(px, py, 0);
  for (int i=0; i <= segments; i++) {
    float cy = sin(ang_total)*r;
    float cx = cos(ang_total)*r;
    vertex(px+ cx, py + cy, 0);
    ang_total = i*ang_increment;
  }
  vertex(px+ r, py + 0, 0);
  endShape();
}

void draw() {
  //background(200);
  noStroke();
  
  timePassed = millis()/1000.0;
  float vy = vy0 + 10*timePassed;
  py = py + vy;
  px = px + 8;
  println(timePassed);
  drawCircle((int)px, (int)py, 10, 100);
}
