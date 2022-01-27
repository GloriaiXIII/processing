import processing.sound.*; // Importamos librería

SinOsc seno;
float freq=400;
float amp=0.5;
float pos;

void setup() {
    size(640, 360);
    background(0);
    // Crea e inicia el oscilador sinusoidal..
    seno = new SinOsc(this);
    // Inicia el oscilador sinusoidal.
    seno.play();
}

void draw() {
    // Mapeaa mouseY de 0.0 a 1.0 para el valor de la amplitud
    amp=map(mouseY, 0, height, 1.0, 0.0);
    seno.amp(amp);
    // Mapea mouseX de 20Hz a 1000Hz para el valor de la frecuencia
    freq=map(mouseX, 0, width, 80.0, 1000.0);
    seno.freq(freq);
    // Asigna mouseX de -1.0 a 1.0 de izquierda a derecha
    pos=map(mouseX, 0, width, -1.0, 1.0);
    seno.pan(pos);
}
