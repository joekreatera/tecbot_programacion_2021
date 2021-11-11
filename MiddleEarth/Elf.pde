public class Elf extends Creature{

  public Elf(){
    super();
    px = (int)(Math.random()*100);
    py = (int)(Math.random()*100);
    sx = (int)(Math.random()*4-2);
    sy = (int)(Math.random()*4-2); 
  }
  
  public int getForce() {
    return (int)Math.round(this.getStrength()*0.2f + this.getMagic()*0.8f );
  }
}
