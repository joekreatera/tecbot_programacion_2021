class Human {
  private int nappyness;
  private int hunger;
  private int aggressiveness;
  private int life;
  private int strength;
  private int state = -1;
  /* constructor */
  public Human(RandomMachine machine) {
    nappyness = machine.getRandomBetween(1, 100);
    hunger = machine.getRandomBetween(1, 100);
    aggressiveness = machine.getRandomBetween(1, 100);
    life = machine.getRandomBetween(70, 100);
    strength = machine.getRandomBetween(4, 20);
  }

  /* this is an accessor*/
  public int getNappyness() {
    return nappyness;
  }
  public int getHunger() {
    return hunger;
  }
  public int getAggressiveness() {
    return aggressiveness;
  }
  public int getLife() {
    return life;
  }
  public int getStrength() {
    return strength;
  }

  public int getPriorityAction(RandomMachine machine) {

    if ( aggressiveness > nappyness && aggressiveness > hunger) {
      int p = 100-machine.getRandomBetween(0, 100);
      if ( aggressiveness > p) {
        return 2;
      } else {
        if ( nappyness > hunger) {
          int p1 = 100 - machine.getRandomBetween(0, 100);
          if ( nappyness > p) {
            return 0;
          } else {
            int p2 = 100 - machine.getRandomBetween(0, 100);
            if ( hunger > p) {
              return 1;
            } else {
              return 3;
            }
          }
        } else {
          int p1 = 100 - machine.getRandomBetween(0, 100);
          if ( hunger > p) {
            return 1;
          } else {
            int p2 = 100 - machine.getRandomBetween(0, 100);
            if ( nappyness > p) {
              return 0;
            } else {
              return 3;
            }
          }
        }
      }
    }

    return 3;
  }

  public void doAction(RandomMachine machine, int foodResource, Human challenger) {
    int r = machine.getRandomBetween(0, 3);
    if ( life <= 0) {
      state = 4;
      return;
    }

    if (state != 2  && r == 0) {
      sleep();
    }
    if (state != 2 && r == 1) {
      eat(foodResource);
    }
    if (state == 2 ||  r == 2) {
      if ( !challenger.isDead() ) {
        fight(challenger);
        r=2;
      } else {
        r = -1;
      }
    }
    if ( r == 4) {
      die();
    }
    state = r;
  }

  public boolean isDead() {
    return (life <= 0);
  }

  public void receiveHit(int s) {
    life = (int)(Math.max( life - s, 0));
  }

  public void sleep() {
  }
  public void fight(Human opponent) {
    opponent.receiveHit( getStrength() );
  }

  public void eat(int food) {
    life = life + (int)(food*.10f);
  }
  public void die() {
    life = 0;
  }

  public void render(int x, int y) {

    fill(255, 255, 255);

    if ( state == 0) {
      fill(0, 0, 255);
    }

    if ( state == 1) {
      fill(240, 188, 15);
    }

    if ( state == 2) {
      fill(255, 0, 0);
    }

    if ( life <= 0) {
      fill(0, 0, 0);
    }

    text("Nappyness: " + nappyness, x, y);
    text("Hunger: " + hunger, x, y+20);
    text("Aggressiveness: " + aggressiveness, x, y+40);
    text("Life: " + life, x, y+60);
  }
}
