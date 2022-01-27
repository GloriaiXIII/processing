// Simulación de movimiento en el eje "z"

float r = 8;

void setup() {
  size(200, 200);
}

void draw() {
  background(0);

  // Dibuja un rectángulo en el centro de la ventana
  stroke(0);
  fill(175);
  rectMode(CENTER); // Dibuja en el centro dela ventana
  rect(width/2, height/2, r, r);

  // Incrementa el tamaño del rectangulo
  r++ ;

  // Se vuelve a hacer pequeño el rectángulo
  if (r > width) {
    r = 0;
  }
}