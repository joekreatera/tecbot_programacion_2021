int ch_q = 3;
int fr_q = 3;
int lm_q = 3;
int zr_q = 3;

float ball_price = 15;

float client(){
  // Ch=0 , Fr=1 , Lm=2, Zr=3
  int r = (int)(3.999f*Math.random());
  float money = (float)Math.random()*100;
  
  float ic_p = ball_price*1;
  float prob_ic_ball_1 = 1 - Math.max(0, 1 - (Math.abs(ic_p - money))/ic_p);
  ic_p = ball_price*2;
  float prob_ic_ball_2 = 1 - Math.max(0, 1 - (Math.abs(ic_p - money))/ic_p);
  ic_p = ball_price*3;
  float prob_ic_ball_3 = 1 - Math.max(0, 1 - (Math.abs(ic_p - money))/ic_p);
  
  print("--------------- \n");
  print("Money" + money+"\n");
  print(prob_ic_ball_1+"\n");
  print(prob_ic_ball_2+"\n");
  print(prob_ic_ball_3+"\n");
  print("\n");
  
  // >, <, >=, <=, == , != 
  if( prob_ic_ball_3 > Math.random() ){
    print("compra 3 ");
  }else if( prob_ic_ball_2 > Math.random() ){
  print("compra 2 ");
  }else if(prob_ic_ball_1 > Math.random()){
  print("compra 1 ");
  }else{
  print("NO COMPRA");
  
  }
  
  return 0.0f;
}
void setup(){
  size(800,600);
}

void draw(){
  
  float total = 0;

  
  total = total + client();
  total = total + client();
  total = total + client();
  total = total + client();
  total = total + client();
  total = total + client();
  total = total + client();
  total = total + client();
  total = total + client();
  total = total + client();
  print("Cuenta: " + total);
  noLoop();
}
