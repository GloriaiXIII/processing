//Definimos una variable n que nos ayudará a dibujar la onda
float n = 0;

//y otra x para hacer que el punto avance de izquierda a derecha
float x = 0;

void setup(){
  size(659,100);
  background(0);
  stroke(255);
}

void draw(){
  point(x, height/2 + sin(n) * 40);
  n = n + 0.05;
  x = x + 1;
}
