// Conversión de coordenadas
// Circulo que gira
float r; //Radio
float angulo;// Angulo de giro

void setup() {
  size(640, 360);
  
  // Inicializa valores
  r = height * 0.45;
  angulo=0;
 }
  
void draw() {
  background(0);
  frameRate(50);
  translate(width/2, height/2);
  
  // Convierte coordenadas polares a cartesianas
  float x = r * cos(angulo);
  float y = r * sin(angulo);
  
  // Dibuja el círculo con las coordenadas cartesianas
  ellipseMode(CENTER);
  stroke(255);
  line(0,0,x,y);
  fill(255);
  noStroke();
  ellipse(x, y, 32, 32);
  angulo=angulo+0.01;
}
