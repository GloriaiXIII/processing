/* 
Array de pelotas
 */

Pelota[] miPelota = new Pelota[10]; // Define el array de objetos "Pelota"

void setup() { // Crea los 10 objetos Pelota
  size (800, 800);
  for (int i=0; i< miPelota.length; i++) {
    miPelota[i]= new Pelota(width/miPelota.length*i);
  }
}

void draw() {
  background(255);
  for (int i=0; i< miPelota.length; i++) {
    miPelota[i].move(); // Mueve la Pelota
    miPelota[i].crecer(); // Hace crecer en tamaño la pelota
    miPelota[i].display(); // Muestra la pelota
  }
}

class Pelota {
  // DATOS 
  float xpos;  // posicion x de la pelota
  float ypos;  // posicion y de la pelotq
  float vx;  // velocidad x pelota
  float vy;  // velocidad y pelota
  float diameter; // diametro de la pelota
 

  // CONSTRUCTOR
  Pelota(float xposTemp) {
    xpos=xposTemp;
    ypos=height/2;
    vx=random(-5, 5);
    vy=random(-5, 5); 
    diameter= random (10, 30);
   
  }
  // FUNCIONES
  // dibuja la pelota
  void display() {

    fill(0);
    ellipse(xpos, ypos, diameter, diameter);
  }
// mueve la pelota
  void move() {
    xpos=xpos+vx;
    ypos=ypos+vy;
    if (( xpos>width-diameter/2)||(xpos-diameter/2<0)) {
      vx=-vx;
    }  
    if ((ypos>height-diameter/2)||(ypos-diameter/2<0)) {
      vy=-vy;
    }
  }
// crece
  void crecer() {
    diameter=diameter+0.1;
  }
}
