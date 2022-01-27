//en este ejercicio varían ambos radios de la elípse

//declaración variables
  float r;
  float g;
  float b;
  float radio1;
  float radio2;

void setup() {
  size(200,200);
  }
 
void draw() {
  background(0);
  /* Cada vez que se ejecuta draw(), se generan valores aleatorios
  que permiten dibujar una nueva elipse */
  r = random(255); //Color rojo
  g = random(255); //Color verde
  b = random(255); // Color azul
  radio1 = random(100); // Diámetro de la elipse
  radio2 = random(100); // Diámetro de la elipse

// Usa los valores para dibujar una elipse
  noStroke();
  fill(r,g,b);
  ellipse(100,100,radio1,radio2);
  frameRate(10);
}
