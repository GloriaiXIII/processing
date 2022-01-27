// Ejemplo generación de valores aleatorios. Basado en el libro
// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

float r;
float g;
float b;
float a;

float diam;
float x;
float y;

void setup() {
  size(640,360);
  background(255);
}

void draw() {
  /* Cada vez que se ejecuta draw(), se generan valores aleatorios 
  que pemiten dibujar una mueva elipse */
  r = random(255); //Color rojo
  g = random(255); //Color verde
  b = random(255); // Color azul
  a = random(255); // Opacidad del color
  diam = random(20); // Diámetro de la elipse
  x = random(width); //Coordenada X del centro de la elipse
  y = random(height); //Coordenada Y del centro de la elipse
  // Usa los valores para dibujar una elipse
  noStroke();
  fill(r,g,b,a);
  ellipse(x,y,diam,diam);
}