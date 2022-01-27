
import processing.sound.*;

AudioIn input;
Amplitude rms;

int scale=1;

void setup() {
    size(640,360);
    background(0);
        
   // Crea una entrada de audio y graba el primer canal
    input = new AudioIn(this, 0);
    
  // inicia la entrada de audio
    input.start();
    
 // crea un nuevo analizador de amplitud
    rms = new Amplitude(this);
    
    // Pasae la entrada a un analizador de volumen
    rms.input(input);
}      


void draw() {
    background(0);
    
  // ajusta el volumen de la entrada de audio
    input.amp(map(mouseY, 0, height, 0.0, 1.0));
    
     // rms.analyze () devuelve un valor entre 0 y 1. Para ajustar
     // la escala y el mapeo de una elipse escalamos de 0 a 0.5
    scale=int(map(rms.analyze(), 0, 0.5, 1, 350));
    noStroke();
    
    fill(255);
// Dibujamos una elipse acoplada al análisis de audio
    ellipse(width/2, height/2, 1*scale, 1*scale);
}
