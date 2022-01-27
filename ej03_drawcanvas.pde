void setup() {
  size(200,200); //tamaño ventana
  background(0); //color fondo negro
}

void draw(){
  //rectángulo superior izq
  stroke(0); //contorno negro
  fill(0); //relleno negro
  rectMode(CORNER); //tipo de posicionamiento figura
  rect(0,0,100,100); //rectángulo
  
  //rectángulo inf derecha
  stroke(0); //contorno negro
  fill(127); //relleno gris
  rectMode(CORNER); //tipo de posicionamiento figura
  rect(100,100,100,100); //rectángulo
  
  //rectángulos blancos
  fill(255); //relleno blanco
  noStroke(); //sin contorno
  rectMode(CORNER); //tipo de posicionamiento figura
  rect(0,100,100,100); //rectángulo

  fill(255); //relleno blanco
  noStroke(); //sin contorno
  rectMode(CORNER); //tipo de posicionamiento figura
  rect(100,0,100,100); //rectángulo
}
