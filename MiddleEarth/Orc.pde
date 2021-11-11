public class Orc extends Creature {

  public Orc() {
    super();
    px = (int)(Math.random()*100);
    py = (int)(Math.random()*100);
    sx = (int)(Math.random()*4-2);
    sy = (int)(Math.random()*4-2);

    life = (int)(Math.random()*1500+1000);
    strength = (int)(Math.random()*90+50);
    MAX_LIFE = life;
    magic= (int)(Math.random()*9+1);
  }

  public void render() {
    
    if( getLife() < 0 ) {
      return;
    }
    
    fill(0, 0, 0);
    super.render();
    fill(255, 255, 255);
  }

  public int getForce() {
    return (int)Math.round(this.getStrength()*0.7f + this.getMagic()*0.3f );
  }
}
