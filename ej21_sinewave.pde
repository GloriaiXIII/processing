/* Dibujar una Onda de tipo senoidal */
float a = 0.0;
 
void setup() { 
   size(600, 400);
}

void draw() {
  background(0);
  
  // Incrementa la velocidad angular
  a += 0.01;
  
  noStroke();
  fill(255);
  
  float angulo = a;
 
  for (int x = 0; x <= width; x += 5) {
  
    /* Calcula el valor de la ccordenada y del centro de la elipse
  en funcion del valor de seno sin(angulo)*/
  float y = map(sin(angulo), -1, 1, 0, height);
  
  /* Dibuja un circulo de radio 16 y posicion dada por los valores X e Y */
  ellipse(x, y, 16, 16);
  
  // Incremento angulo
  angulo += 0.1;
  }
}
