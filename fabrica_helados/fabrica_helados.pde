int ch_q = 3;
int fr_q = 3;
int lm_q = 3;
int zr_q = 3;

float ball_price = 15;

int validate_flavour(int f, int fav, int q) {
  if ( fav == f ) {
    if ( q > 0) {
      return 1;
    }
  }
  return -1;
}

int choose(int fav) {

  int ch = validate_flavour(0, fav, ch_q);
  int fr = validate_flavour(1, fav, fr_q);
  int lm = validate_flavour(2, fav, lm_q);
  int zr = validate_flavour(3, fav, zr_q);

  if (ch == 1) {
    ch_q--;
    return 1;
  }

  if (fr == 1) {
    fr_q--;
    return 1;
  }

  if (lm == 1) {
    lm_q--;
    return 1;
  }

  if (zr == 1) {
    zr_q--;
    return 1;
  }

  if ( ch == -1 && fr == -1 && lm == -1 && zr == -1 ) {
    if ( ch_q > 0 ) {
      ch_q--;
      return 1;
    }
    if ( fr_q > 0 ) {
      fr_q--;
      return 1;
    }
    if ( lm_q > 0 ) {
      lm_q--;
      return 1;
    }
    if ( zr_q > 0 ) {
      zr_q--;
      return 1;
    }
  }

  return 0;
}

float client() {
  // Ch=0 , Fr=1 , Lm=2, Zr=3
  int r = (int)(3.999f*Math.random());
  float money = (float)Math.random()*100;

  float ic_p = ball_price*1;
  float prob_ic_ball_1 = 1 - Math.max(0, 1 - (Math.abs(ic_p - money))/ic_p);
  ic_p = ball_price*2;
  float prob_ic_ball_2 = 1 - Math.max(0, 1 - (Math.abs(ic_p - money))/ic_p);
  ic_p = ball_price*3;
  float prob_ic_ball_3 = 1 - Math.max(0, 1 - (Math.abs(ic_p - money))/ic_p);

  if ( prob_ic_ball_3 > Math.random() ) {
    int b1 = choose(r);
    int b2 = choose(r);
    int b3 = choose(r);
    return b1*ball_price + b2*ball_price + b3*ball_price;
    
  } else if ( prob_ic_ball_2 > Math.random() ) {
    int b1 = choose(r);
    int b2 = choose(r);
    return b1*ball_price + b2*ball_price;
    
  } else if (prob_ic_ball_1 > Math.random()) {
    int b1 = choose(r);
    return b1*ball_price;
  } else {
    print("NO COMPRA");
  }

  return 0.0f;
}
void setup() {
  size(800, 600);
}

void draw() {

  float total = 0;


  total = total + client();
  print("\nC : " + total);
  total = total + client();
  print("\nC : " + total);
  total = total + client();
  print("\nC : " + total);
  total = total + client();
  print("\nC : " + total);
  total = total + client();
  print("\nC : " + total);
  total = total + client();
  print("\nC : " + total);
  total = total + client();
  print("\nC : " + total);
  total = total + client();
  print("\nC : " + total);
  total = total + client();
  print("\nC : " + total);
  total = total + client();
  print("\nCuenta: " + total);
  noLoop();
}
