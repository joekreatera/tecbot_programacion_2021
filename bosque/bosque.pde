/*
Generar un escenario de un bosque
Lleva 1 sol y 1 luna
debe de llevar un bosque de no menos de 50 árboles
Dbe llevar 1+ montañas
Debe llevar 10 nubes
*/

void drawCircle(int x, int y, int c){
  int r = (int)(255*Math.random());
  int g = (int)(255*Math.random());
  int b = (int)(255*Math.random());

  fill(r,g,b);
  circle(x,y,c);
}



void setup(){
  size(640,480);
}

void draw(){

   drawCircle(10,10,20);
   drawCircle(100,100,60);
   drawCircle(200,80,80);
   drawCircle(100,200,70);

}
