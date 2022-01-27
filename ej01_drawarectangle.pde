void setup() {
  size(200,200); //tamaño ventana
  background(0,0,255); //color fondo azul
}

void draw(){
  stroke(0,255,0); //contorno verde
  fill(255,0,0); //relleno rojo
  rectMode(CORNER); //tipo de posicionamiento figura
  rect(50,50,75,100); //rectángulo
}
