import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer song;
FFT fft;

void setup() {
    size(512, 200);
    // siempre comienza Minim primero!
    minim = new Minim(this);
    // especifique 512 para la longitud de los almacenamientos intermedios de muestra
    // el tamaño del búfer predeterminado es 1024
    song = minim.loadFile("piano.mp3", 512);
    song.play();
    // una FFT necesita saber cómo
    // long. los búferes de audio que analizarán son
    // y también necesita saber
    // la velocidad de muestra del audio que está analizando
    fft = new FFT(song.bufferSize(), song.sampleRate());
}

void draw(){
    background(0);
    // primero ejecuta un fft directo en uno de los búferes de la canción
    // Estoy usando el buffer de mezcla
    // pero puedes usar cualquiera que te guste
    fft.forward(song.mix);
     stroke(255, 0, 0, 128);
    // dibujamos el espectro como una serie de líneas verticales
    // multiplico el valor de getBand por 4
    // para que podamos ver mejor las líneas
    
    for(int i = 0; i < fft.specSize(); i++){
    line(i, height, i, height - fft.getBand(i)*8);
    }
    
    stroke(255);
    // dibujo la forma de onda conectando
    // valores vecinos con una línea. Yo multiplico
    // cada uno de los valores por 50
    // porque los valores en los buffers están normalizados
    // esto significa que tienen valores entre -1 y 1.
    // Si no los escalamos nuestra forma de onda
    // se verá más o menos como una línea recta.
    
    for(int i = 0; i < song.left.size() - 1; i++){
    line(i, 50 + song.left.get(i)*50, i+1, 50 + song.left.get(i+1)*50);
    line(i, 150 + song.right.get(i)*50, i+1, 150 + song.right.get(i+1)*50);
    }
}
