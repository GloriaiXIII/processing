/* mapeado map() */

void setup() { 
  size(640, 360);
  smooth();
}

void draw() {
  background(0);
  //color //el mouseX de 0 a width y color de 0 a 175
  float c = map(mouseX, 0, width, 0, 175); 
  //radio //el mouseX de 0 a width (derecha) de tamaño 40 a 300
  float r = map(mouseX, 0, width, 40, 300); 
  
  fill(255, c, 0);
  ellipse(width/2,height/2,r,r);   
}
