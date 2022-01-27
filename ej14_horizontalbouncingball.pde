Pelota miPelota;

void setup() {
size(900,600);
smooth();
// Inicializa definiendo el objeto Pelota
miPelota = new Pelota();
}

void draw() {
  background(0);
  miPelota.mostrar();
  miPelota.mover();
  miPelota.rebotar();
}

// Define la Clase Pelota
class Pelota {
color c; // Variables de la clase.
float xpos;
float ypos;
float xspeed;

Pelota() { // Un Constructor de la clase.
c = color(255,0,0);
xpos = width/2;
ypos = height/2;
xspeed = 2;
}

// Define el Método "mostrar" de la clase Pelota
void mostrar() {
  ellipseMode(CENTER);
  stroke(0);
  fill(c);
  ellipse(xpos,ypos,80,80);
}

// Define el Método "mover" de la clase Pelota
void mover() {
  xpos = xpos + xspeed;
}

void rebotar(){
  if (xpos > width -40) {
  xspeed = -xspeed;
  }
  else if (xpos < 0 +40) {
  xspeed = -xspeed;
  }
}

}
