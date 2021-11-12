public class Item implements Positionable{
  public static final int WEAPON = 0;
  public static final int HEALER = 1;
  public static final int AMULET = 2;
  int type;
  int px = 0;
  int py = 0;
  boolean taken;
  public Item(int itemType, int x, int y){
    type = itemType;
    px = x;
    py = y;
  }
  public int getType(){
    return type;
  }
  
  public boolean isTaken(){
    return taken;
  }
  
  
  public void doTake(){
    taken = true;
  }
  
  public int getPx() {
    return px;
  }
  public int getPy() {
    return py;
  }
  
  public void render(){
    if(taken){
      return;
    }
    
    if( type == Item.WEAPON ){
      fill(255,0,0);
    }
    if( type == Item.HEALER ){
      fill(0,0,255);
    }
    if( type == Item.AMULET ){
      fill(255,0,255);
    }
    rect(px*4-4,py*4-4,8,8);
    fill(255,255,255);
  }
}
