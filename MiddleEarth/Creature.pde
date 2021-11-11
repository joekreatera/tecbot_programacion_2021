public class Creature {

  int px;
  int py;
  int sx;
  int sy;
  int life;
  int strength;
  int MAX_LIFE;
  int magic;
  boolean isFighting;

  public Creature() {
    px = 0;
    py = 0;
    sx = 0;
    sy = 0;
    life = 0  ;
    strength = 0;
    MAX_LIFE= 0;
    magic = 0;
  }

  public void takeItem() {
  }
  public void fight(Creature opponent) {
    isFighting = true;
    int hit = this.getForce();
    opponent.receiveHit(hit);
  }
  public void move() {
    if(px + sx >= 100){
      if( sx > 0 ){
        sx = sx*-1;
      }
    }
    if(py + sy >= 100){
      if( sy > 0 ){
        sy = sy*-1;
      }
    }
    
    if(px + sx <= 0){
      if( sx < 0 ){
        sx = sx*-1;
      }
    }
    if(py + sy <= 0){
      if( sy < 0 ){
        sy = sy*-1;
      }
    }
    
    px = px + sx;
    py = py + sy;
  }
  public void setSpeed(int nsx, int nsy) {
  }
  public int getPx() {
    return px;
  }
  public int getPy() {
    return py;
  }
  public int getSx() {
    return sx;
  }
  public int getSy() {
    return sy;
  }
  public int getStrength() {
    return strength;
  }
  public int getMagic() {
    return magic;
  }
  public int getLife() {
    return life;
  }
  public int getForce() {
    return 0;
  }
  
  public void receiveHit(int damage){
    life = Math.min(0, life - damage);
    
  }
  
  public void render(){
    circle(px*4,py*4,10);
  }
}
