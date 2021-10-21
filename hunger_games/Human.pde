class Human{
  private int nappyness;
  private int hunger;
  private int aggressiveness;
  private int life;
  private int strength;
  
  /* constructor */
  public Human(RandomMachine machine){
    nappyness = machine.getRandomBetween(1,100);
    hunger = machine.getRandomBetween(1,100);
    aggressiveness = machine.getRandomBetween(1,100);
    life = machine.getRandomBetween(1,100);
    strength = machine.getRandomBetween(4,20);
    
  }
  
  /* this is an accessor*/
  public int getNappyness(){
    return nappyness;
  }
  public int getHunger(){
    return hunger;
  }
  public int getAggressiveness(){
    return aggressiveness;
  }
  public int getLife(){
    return life;
  }
  public int getStrength(){
    return strength;
  }
  
  public void doAction(RandomMachine machine, int foodResource, Human challenger){
    int r = machine.getRandomBetween(1,4);
    if( life < 0){
      return;
    }
    
    if ( r == 0){
      sleep();
    }
    if ( r == 1){
      eat(foodResource);
    }
    if ( r == 2){
      fight(challenger);
    }
    if ( r == 4){
      die();
    }
    
  }
  
  public void receiveHit(int s){
    life = (int)(Math.max( life - s , 0));
  }
  
  public void sleep(){
  }
  public void fight(Human opponent){
    
  }
  public void eat(int food){
    life = life + (int)(food*.10f);
  }
  public void die(){
    life = 0;
  }

  public void render(int x, int y){
      text("Nappyness: " + nappyness, x,y);
      text("Hunger: " + hunger, x,y+20);
      text("Aggressiveness: " + aggressiveness, x,y+40);
      text("Life: " + life, x,y+60);
  }
}
