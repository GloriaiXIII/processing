  /* Cambio de color de fondo de pantalla en 
  función de la posición del ratón mouseX */
 void setup(){
      size(300,300); //Fija tamaño de pantalla
    }
 void draw(){
      
    if (mouseX < width/3)  { 
    background(255,0,0);  // Color rojo       
     }  else if (mouseX < 2*width/3)  { 
    background(0,255,0); // Color verde     
     }  else { 
    background(0,0,255); // Color azul     
     } 
    }