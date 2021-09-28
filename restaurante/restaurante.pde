import javax.swing.JOptionPane;
/*
Restaurante (comida corrida):

mostrar un menu: 
1. entradas
  Tacos de lechuga (40)
  Nachos (50)
2. sopas
  Sopa de pasta (30)
  Arroz con huevo (35)
3. plato fuerte
  Carne de cerdo (50)
  Arrachera( 75)
4. postres
  duraznos con crema (15)
  gelatina(10)
  
solo por pedir, tu cuenta ya debe ir en 10 pesos. 
No se puede usar condicionales
Se deben mostrar los platillos en la pantalla
Se deben pedir las respuiestas del usuario con JOptionPane

Se debe mostrar la cuenta final en PANTALLA SIN JOtionPane en color ROJO-.
*/

void setup(){
  size(640,480);
  
  fill(0,0,0);
  rect(50,50,200,200);
  fill(255,255,2550);
  textSize(20);
  text("Hello",100,100);
}

void draw(){
  
  JOptionPane.showMessageDialog(null,"Hello there");
  JOptionPane.showMessageDialog(null,"Hello there 2");
  text("Hey!", 100,150);
  noLoop();
}
