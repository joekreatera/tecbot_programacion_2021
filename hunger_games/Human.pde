class Human{
  private int nappyness;
  private int hunger;
  private int aggressiveness;
  private int life;
  
  /* constructor */
  public Human(RandomMachine machine){
    nappyness = machine.getRandomBetween(1,100);
    hunger = machine.getRandomBetween(1,100);
    aggressiveness = machine.getRandomBetween(1,100);
    life = machine.getRandomBetween(1,100);
    
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

  public void render(int x, int y){
      text("Nappyness: " + nappyness, x,y);
      text("Hunger: " + hunger, x,y+20);
      text("Aggressiveness: " + aggressiveness, x,y+40);
      text("Life: " + life, x,y+60);
  }
}
