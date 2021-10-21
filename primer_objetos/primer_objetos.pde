class Figure{
  public int x;
  public int y;
  public int side;
  
  public void grow(int scale){
    side = side * scale;
  }
}
void setup(){
  size(800,600);
  Figure quad = new Figure();
  quad.x = 100;
  quad.y = 100;
  quad.side = 40;
  println(quad.x);
  quad.x += 10;
  println(quad.x);
  quad.grow(2);
  Figure quad2 = new Figure();
  quad2.x = 100;
  quad2.y = 100;
  quad2.side = 40;
  println(quad2.x);
  quad2.x += 30;
  println(quad2.x);
  quad2.grow(3);
  println(quad.side);
  println(quad2.side);
}

void draw(){

}
