public class World {

  Creature o1;
  Creature o2;
  Creature o3;


  Creature e1;
  Creature e2;
  Creature e3;


  Item i1;
  Item i2;
  Item i3;
  Item i4;
  Item i5;
  Item i6;

  int days = 0;

  public World() {
    o1 = new Orc();
    o2 = new Orc();
    o3 = new Orc();

    e1 = new Elf();
    e2 = new Elf();
    e3 = new Elf();

    i1 = new Item(Item.AMULET, (int)(Math.random()*100), (int)(Math.random()*100) );
    i2 = new Item(Item.WEAPON, (int)(Math.random()*100), (int)(Math.random()*100) );
    i3 = new Item(Item.WEAPON, (int)(Math.random()*100), (int)(Math.random()*100) );
    i4 = new Item(Item.WEAPON, (int)(Math.random()*100), (int)(Math.random()*100) );
    i5 = new Item(Item.WEAPON, (int)(Math.random()*100), (int)(Math.random()*100) );
    i6 = new Item(Item.HEALER, (int)(Math.random()*100), (int)(Math.random()*100) );
  }


  public float getDistance(Positionable a, Positionable b) {

    int dx = (a.getPx() - b.getPx())*(a.getPx() - b.getPx());
    int dy = (a.getPy() - b.getPy())*(a.getPy() - b.getPy());
    float d = (float)Math.sqrt(dx+dy);
    return d;
  }


  public void checkItems(Creature a, Item b1, Item b2, Item b3, Item b4, Item b5, Item b6) {

    if ( getDistance(a, b1) < 10 ) {
      a.takeItem(b1);
    }
    if ( getDistance(a, b2) < 10 ) {
      a.takeItem(b2);
    }
    if ( getDistance(a, b3) < 10 ) {
      a.takeItem(b3);
    }
    if ( getDistance(a, b4) < 10 ) {
      a.takeItem(b4);
    }
    if ( getDistance(a, b5) < 10 ) {
      a.takeItem(b5);
    }
    if ( getDistance(a, b6) < 10 ) {
      a.takeItem(b6);
    }
  }

  public void checkFights(Creature a, Creature b1, Creature b2, Creature b3) {

    if ( getDistance(a, b1) < 10 && !a.isFighting() ) {
      a.setFight(b1);
      b1.setFight(a);
    }

    if ( getDistance(a, b2) < 10 && !a.isFighting() ) {
      a.setFight(b1);
      b2.setFight(a);
    }

    if ( getDistance(a, b3) < 10  && !a.isFighting() ) {
      a.setFight(b1);
      b3.setFight(a);
    }
  }

  public void render() {
    background(100);
    days++;

    boolean change = false;
    if ( days%5 == 0) {
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

    checkFights(e1, o1, o2, o3);
    checkFights(e2, o1, o2, o3);
    checkFights(e3, o1, o2, o3);



    checkItems(e1, i1,i2,i3,i4,i5,i6);
    checkItems(e2, i1,i2,i3,i4,i5,i6);
    checkItems(e3, i1,i2,i3,i4,i5,i6);
    checkItems(o1, i1,i2,i3,i4,i5,i6);
    checkItems(o2, i1,i2,i3,i4,i5,i6);
    checkItems(o3, i1,i2,i3,i4,i5,i6);
    
    e1.fight();
    e2.fight();
    e3.fight();
    o1.fight();
    o2.fight();
    o3.fight();


    i1.render();
    i2.render();
    i3.render();
    i4.render();
    i5.render();
    i6.render();
  }
}
