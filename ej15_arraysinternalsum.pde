//int[] a = new int[10]; // Creamos el array 
//a [0] = 2; // Asignamos el valor a la posición
//a [1] = 5; 
//a [2] = 6; 
//...

int suma = 0 ; 
int sumb = 0 ;
int[] a = {2,5,6,12,34,56,6,77,12,32};
int[] b = {12,0,86,52,4,6,6,7,22,52};

void setup() {
  size(400,400);
}

void draw() {
 
  for (int i =0; i<a.length; i++) {
    suma +=a[i];
  }
  
    for (int i =0; i<b.length; i++) {
    sumb +=b[i];
  }
  
    println("resultado suma array a: " + suma);
    println("resultado suma array b: " + sumb);
    
    noLoop();

}
