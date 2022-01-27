// Declaración e inicialización de variables.
int circleX = 0;
int circleY = 100;
int circleWH = 50; // declaración tamaño

void setup() {
  size(200,200);
  }
  
void draw() {
  background(0);
  fill(255,0,0);// Color rojo de fondo
  stroke(0);//Espesor de linea de contorno
  // Dibuja circulo de posición circleX y circleY
  ellipseMode(CENTER);
  ellipse(circleX,circleY,circleWH,circleWH);
  circleX = circleX + 2; // Incremento de la variable
  circleWH = circleWH + 1; // Incremento de la variable
  
  // Reinicio posición
    if (circleX>300) {
    circleX=0;
    }
   
   if (circleX<=0) {
    circleWH=50;
    }
    
  }
