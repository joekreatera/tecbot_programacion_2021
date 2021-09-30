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
  rect(50,50,640-50-50,480-50-50);
  fill(255,255,2550);
  textSize(20);
  text("Bienvenido al Restaurante del Tio Marco",100,80);
  
  text("................... \t\t\t Entradas",100,100);
  text("$40. Tacos de lechuga",100,120);
  text("$50. Nachos",100,140);
  text("................... \t\t\t Sopas",100,160);
  text("$30 Sopa de pasta",100,180);
  text("$35 Arroz con huevo",100,200);
  text("................... \t\t\t Plato Fuerte",100,220);
  text("$50 Carne de cerdo",100,240);
  text("$75 Arrachera",100,260);
  text("................... \t\t\t Postres",100,280);
  text("$15 Duraznos con crema",100,300);
  text("$10 Gelatina",100,320);
  
  text("Cualquier consumo incluye 10 pesos más de servicio",100,360);
  fill(255,0,0);
  text("Cuenta total",100,400);
}

void draw(){
  
  //JOptionPane.showMessageDialog(null,"Hello there");
  //JOptionPane.showMessageDialog(null,"Hello there 2");
  
  int entrada = Integer.parseInt( JOptionPane.showInputDialog("Para la entrada 0) Tacos de lechuga, 1) Nachos") );
  int sopa = Integer.parseInt( JOptionPane.showInputDialog("Para la Sopa 0) Sopa de pasta, 1) Arroz con huevo") );
  int plato = Integer.parseInt( JOptionPane.showInputDialog("Para el Plato fuerte 0) Carne de cerdo, 1) Arrachera") );
  int postre = Integer.parseInt( JOptionPane.showInputDialog("Para el postre 0) Gelatina , 1) Duraznos con crema ") );
  
  int total = 130+entrada*10  +5*sopa +  15*plato + 5*postre;
 
  text("$" + total, 250,400);
  
  noLoop();
}
