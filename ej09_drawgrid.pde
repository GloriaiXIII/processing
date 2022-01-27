// Hacer una cuadrícula en la ventana gráfica
int coordenadaX=0; // Coordenada X
int coordenadaY=0; // Coordenada Y
size(300,300); // Tamaño de pantalla
background(0);
stroke(255,255,0);
while (coordenadaX<=width) {
  while(coordenadaY<=height) {
  line(0,coordenadaY,width,coordenadaY); //Lineas horizontales
  coordenadaY+=20;
  }
 line(coordenadaX,0,coordenadaX,height); //Lineas verticales
  coordenadaX+=20;
}
