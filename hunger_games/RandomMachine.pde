public class RandomMachine{

   public int getRandomBetween(int a , int b){
     int r = a + (int)(Math.random()*(b-a+0.999999f));
     return r;
   }

}
