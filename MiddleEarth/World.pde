public class World{
  
  Creature o1;
  Creature o2;
  Creature o3;


  Creature e1;
  Creature e2;
  Creature e3;


  public World(){
    o1 = new Orc();
    o2 = new Orc();
    o3 = new Orc();
    
    e1 = new Elf();
    e2 = new Elf();
    e3 = new Elf();
  }
  
  public void render(){
    background(100);
    o1.move();
    o1.render();
    
    o2.move();
    o2.render();
    
    o3.move();
    o3.render();
    
    e1.move();
    e1.render();
    
    e2.move();
    e2.render();
    
    e3.move();
    e3.render();
  }

}
