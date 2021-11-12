public class World{
  
  Creature o1;
  Creature o2;
  Creature o3;


  Creature e1;
  Creature e2;
  Creature e3;

  int days = 0;
  
  public World(){
    o1 = new Orc();
    o2 = new Orc();
    o3 = new Orc();
    
    e1 = new Elf();
    e2 = new Elf();
    e3 = new Elf();
  }
  
  public float getDistance(Creature a, Creature b){
    
    int dx = (a.getPx() - b.getPx())*(a.getPx() - b.getPx());
    int dy = (a.getPy() - b.getPy())*(a.getPy() - b.getPy());
    float d = (float)Math.sqrt(dx+dy);

    
    return d;
  }
  
  public void checkFights(Creature a, Creature b1, Creature b2, Creature b3){
    
    if( getDistance(a, b1) < 10 && !a.isFighting() ){    
      a.setFight(b1);
      b1.setFight(a);
    }
    
    if( getDistance(a, b2) < 10 && !a.isFighting() ){ 
      a.setFight(b1);
      b2.setFight(a);
    }
    
    if( getDistance(a, b3) < 10  && !a.isFighting() ){   
      a.setFight(b1);
      b3.setFight(a);
    }
  
  }
  
  public void render(){
    background(100);
    days++;
    
    boolean change = false;
    if( days%5 == 0){
      change= true;
    }
    
    o1.move(change);
    o1.render();
    
    o2.move(change);
    o2.render();
    
    o3.move(change);
    o3.render();
    
    e1.move(change);
    e1.render();
    
    e2.move(change);
    e2.render();
    
    e3.move(change);
    e3.render();
    
    checkFights(e1, o1,o2,o3);
    checkFights(e2, o1,o2,o3);
    checkFights(e3, o1,o2,o3);
    
    e1.fight(); e2.fight(); e3.fight();
    o1.fight(); o2.fight(); o3.fight();
  }

}
