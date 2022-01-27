//ejercicio variación del tamanyo de una elípse superpuesta

//declaración de variables
  float r;
  float g;
  float b;
  float radio;

void setup() {
  size(800,800);
  background(0); /* si colocamos el background aquí se mantiene el 
  dibujo de la elipse anterior y se percibe la superposición de formas */
  }
 
void draw() {
  /* Cada vez que se ejecuta draw(), se generan valores aleatorios
  que permiten dibujar una nueva elipse */
  r = random(255); //Color rojo
  g = random(255); //Color verde
  b = random(255); // Color azul
  radio = random(400); // Diámetro de la elipse
// aplicación de las variables para dibujar una elipse
  noStroke();
  fill(r,g,b);
  ellipse(400,400,radio,radio);
  frameRate(10);
} 
