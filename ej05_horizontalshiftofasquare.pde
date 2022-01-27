//declaración variables random color
int rectX = 0;


void setup(){
  size(200,200); //ventana de 200 x 200
  background(0); //fondo negro
}

void draw(){
  rectMode(CENTER);
  rect(rectX,120,40,40); //rect 40 x 40
  rectX = rectX + 1; //incremento de la variable rectX 
  
  if (rectX < 100) {
  fill(255,0,0); // Color rojo
  } else if (rectX <= 150) {
  fill(0,255,0); // Color verde
  } else {
  fill(0,0,255); // Color azul
  }
  
  //reiniciar posición desplazamiento horizontal rect
  if(rectX>240){
    rectX=0;
  }
  
  
}
