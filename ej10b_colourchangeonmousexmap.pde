/* mapeado map()
Control de color rojo y azul (variable 0 a 255) 
a partir de la anchura de la ventana */

void setup() {
  size(640, 360);
}

void draw() {

  float rojo = map(mouseX, 0, width, 0, 255);
  float azul = map(mouseY, 0, height, 255, 0);
  background(rojo, 0, azul);
}
