   int n = 5;

void setup(){
   size(200,200);
   print (n+"! = "+factorial(n));
}

void draw(){
  fill (0);
  textSize(26);
  text (n+"! = "+factorial(n),10,50);
}
 
  int factorial(int n){
   if (n == 0){
      return 1;
   } 
   else {
      return n*factorial(n - 1);
   }
}
