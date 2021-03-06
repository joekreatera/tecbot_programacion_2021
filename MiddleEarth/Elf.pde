public class Elf extends Creature {

  public Elf() {
    super();
    px = (int)(Math.random()*100);
    py = (int)(Math.random()*100);
    sx = (int)(Math.random()*4-2);
    sy = (int)(Math.random()*4-2);

    life = (int)(Math.random()*1000+2000);
    strength = (int)(Math.random()*30+20);
    MAX_LIFE = life;
    magic= (int)(Math.random()*100+100);
  }

  public int getForce() {
    return (int)Math.round(this.getStrength()*0.2f + this.getMagic()*0.8f );
  }
  
  public void takeItem(Item a) {
     if(a.isTaken() ){
        return;
     }
     a.doTake();
     if( a.type == Item.WEAPON ){
        strength += 10;
     } 
     if( a.type == Item.HEALER ){
         life  = Math.min(MAX_LIFE , life + (int)(MAX_LIFE*0.5f) );
     } 
     if( a.type == Item.AMULET ){
       magic += 40;
     } 
  }
}
