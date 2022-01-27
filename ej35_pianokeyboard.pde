/* Teclas A - L + n y m  = notas musicales
Este es un  ejemplo del uso de la clase de Frecuency  para convertir 
fácilmente la entrada del teclado en la frecuencia de un Oscil. 
Simplemente escribiendo en el teclado cambiaremos el tono. 
*/

// importa todo lo necesario para hacer sonido.
import ddf.minim.*;
import ddf.minim.ugens.*;

// crea todas las variables que necesitarán ser accedidas en
// más de un método (setup (), draw (), stop ()).
Minim minim;
AudioOutput out;

Oscil    wave;

// realizar un seguimiento de la Frecuencia actual para que podamos mostrarla 
Frequency currentFreq;
// la configuración se ejecuta una vez al comienzo

void setup()
{
// inicializa la ventana de dibujo

  size(512, 200);
  
  // inicializa los objetos minim y out
  minim = new Minim(this);
  out   = minim.getLineOut();

  currentFreq = Frequency.ofPitch( "A4" );
  wave = new Oscil( currentFreq, 0.6f, Waves.TRIANGLE );
  
  wave.patch( out );
}

// draw se ejecuta muchas veces

void draw()
{
  background(0);
  // dibujar usando un trazo de color beige
  stroke( 255, 238, 192 );
  text( "Frecuencia en Hertz: " + currentFreq.asHz(), 5, 15 );
  text( "Frecuencia como nota MIDI: " + currentFreq.asMidiNote(), 5, 30 );
  
// dibujar las formas de onda

  for( int i = 0; i < out.bufferSize() - 1; i++ )
  {
// encuentra la posición x de cada valor de buffer
    float x1  =  map( i, 0, out.bufferSize(), 0, width );
    float x2  =  map( i+1, 0, out.bufferSize(), 0, width );
// dibujar una línea desde una posición de búfer a la siguiente para ambos canales
    line( x1, 50 + out.left.get(i)*50, x2, 50 + out.left.get(i+1)*50);
    line( x1, 150 + out.right.get(i)*50, x2, 150 + out.right.get(i+1)*50);
  }  
}
// cambia la nota midi al presionar las teclas del teclado
// establecemos midiNoteIn directamente con el método setMidiNoteIn
// pero también puedes usar una línea para pasar a la siguiente nota
// parchándolo a midiNoteIn.

void keyPressed()
{
  if ( key == 'a' ) currentFreq = Frequency.ofPitch( "A4" );
  if ( key == 's' ) currentFreq = Frequency.ofPitch( "B4" );
  if ( key == 'd' ) currentFreq = Frequency.ofPitch( "C#5" );
  if ( key == 'f' ) currentFreq = Frequency.ofPitch( "D5" );
  if ( key == 'g' ) currentFreq = Frequency.ofPitch( "E5" );
  if ( key == 'h' ) currentFreq = Frequency.ofPitch( "F#5" );
  if ( key == 'j' ) currentFreq = Frequency.ofPitch( "G#5" );
  if ( key == 'k' ) currentFreq = Frequency.ofPitch( "A5" );
  if ( key == 'l' ) currentFreq = Frequency.ofPitch( "B5" );
  if ( key == 'n' ) currentFreq = Frequency.ofPitch( "C#6" );
  if ( key == 'm') currentFreq = Frequency.ofPitch( "E6" );

   // tenga en cuenta que hay otros dos métodos estáticos para construir objetos Frequency
   // currentFreq = Frequency.ofHertz (440);
   // currentFreq = Frequency.ofMidiNote (69);
  wave.setFrequency( currentFreq );
}
