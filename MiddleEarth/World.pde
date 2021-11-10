public class World{
  
  Creature o1;

  public World(){
    o1 = new Orc();
  }
  
  public void render(){
    background(100);
    o1.move();
    o1.render();
  }

}
