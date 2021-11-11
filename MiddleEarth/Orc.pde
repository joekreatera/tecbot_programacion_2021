public class Orc extends Creature{

  public Orc(){
    super();
    px = (int)(Math.random()*100);
    py = (int)(Math.random()*100);
    sx = (int)(Math.random()*4-2);
    sy = (int)(Math.random()*4-2); 
  }
  
  public void render(){
    fill(0,0,0);
    super.render();
    fill(255,255,255);
  }
  
  public int getForce() {
    return (int)Math.round(this.getStrength()*0.7f + this.getMagic()*0.3f );
  }
}
