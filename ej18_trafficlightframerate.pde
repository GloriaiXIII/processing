int contador;  // Creamos una variable llamada contador que hará el papel del tiempo

void setup() {  // Configuración general y puesta a cero de la variable contador
 size(500,400);
 contador=0;
 frameRate(30);
 
}
void draw() {   // Color Rojo
 background(255);
 if(contador<100) {
  rect(200,50,100,300);
  fill(255,0,0);
  ellipse(250,100,50,50);  // Lámpara Roja
  fill(100);
  ellipse(250,200,50,50);
  ellipse(250,300,50,50);
 }

 if(contador>=100&&contador<300) {  // Color Amarillo
  rect(200,50,100,300);
  fill(255,255,0);  // Lámpara Amarilla
  ellipse(250,200,50,50);
  fill(100);
  ellipse(250,100,50,50);
  ellipse(250,300,50,50);
 }

 if(contador>=300) {  // Color Verde
  rect(200,50,100,300);
  fill(0,255,0);  // Lámpara Verde
  ellipse(250,300,50,50);
  fill(100);
  ellipse(250,200,50,50);
  ellipse(250,100,50,50);
 }

 if(contador>=400) {  // Retorno del valor de contador a 0
  contador=0;
 }
 contador=contador+4;
}
