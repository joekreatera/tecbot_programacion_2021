/*

Simular una generación de 100 parejas
Los humanos pueden:
dormir
comer
pelear
morir
Al nacer cada humano cuenta con una serie de specs para poder hacer sus acciones:
1. Somnolencia
2. Hambre
3. Agresividad
4. Vida
Cuando nacen dos humanos, se crean junto con una serie de recursos. El objetivo de la simulación es saber, en promedio
cuanto tiempo estan vivas las parejas. 
Un humano solo despues de 1 dia se muere
Dos humanos sin recursos se pelean
Dos humanos con recursos pueden comer O dormir, ellos lo deciden
Un humano que no ha comido durante 5 dias se muere
Un humano que pelea con otro, puede matarlo de inmediato si el otro esta durmiendo.
Un humano que pelea con otro, puede perder si el segundo tambien decide pelear y tiene más vida
La vida que le queda a un humano que pelea tiene que ver con el valor del golpe que recibe

Determina la cantidad de dias promedio de 10 generaciones. Cada generacion cuenta en dias por separado. 
*/


Human humanA;
Human humanB;
RandomMachine random;
void setup(){
  random = new RandomMachine();
  humanA = new Human(random);
  humanB = new Human(random);
  size(640,480);
}

void draw(){
  background(200);
  humanA.render(50,50);
  humanB.render(200,50);
  
}
