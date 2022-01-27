// Generador de numeros alatorios

float[] aleatorios; //variable aleatorios como array

void setup() {
  aleatorios=new float[10]; //designacion de datos a la variab
 
}

void draw() {
  /*Llena de la matriz aleatorios con 10 valores tipo
  float aleatorios */
  for (int x = 0; x < 10; x ++ ) {
    aleatorios[x]=random(1,10);
  }
  println("Matriz de numeros aleatorios");
  println(aleatorios); // Imprime la matriz
  
  println("Matriz de Parte Entera de numeros aleatorios");
  println(int(aleatorios)); // Imprime la mtriz trasnformada en enteros
  noLoop();// Evita el bucle draw
}