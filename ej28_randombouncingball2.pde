
Pelota miPelota; // Crea el objeto miPelota que pertencera a la clase Pelota

void setup() {
  size (500, 500);
  miPelota= new Pelota();
}

void draw() {
  background(255);
  miPelota.move(); // Función move de la clase Pelota
  miPelota.display(); // Función display de la clase Pelota
}

class Pelota {  // Define la clase Pelota
  // DATOS
  float xpos;  // posicion x de la pelota
  float ypos;  // posicion y de la pelotq
  float vx;  // velocidad x pelota
  float vy;  // velocidad y pelota
  float diameter;
 

  // CONSTRUCTOR // Constructor del objeto Pelota pertenecnete a la clase Pelota
  Pelota() {
    xpos=width/2;
    ypos=height/2;
    vx=random(-5, 5);
    vy=random(-5, 5); 
    diameter= 35;
   
  }
  // FUNCIONES DE LA CLASE PELOTA
  void display() { //Funcion display 
    fill(0);
    ellipse(xpos, ypos, diameter, diameter);
  }

  void move() { // Funcion mover
    xpos=xpos+vx;
    ypos=ypos+vy;
    if ((xpos>width-diameter/2)||(xpos-diameter/2<0)) {
      vx=-vx;
    }  
    if ((ypos>height-diameter/2)||(ypos-diameter/2<0)) {
      vy=-vy;
    }
  }
}
