/* 

    OSCILADOR CONTROLADO CON EL RATÓN
    es un ejemplo del uso de un UGen constante para controlar la frecuencia de un Oscil.
    Puede aplicar un UGen constante en cualquier entrada de cualquier otro UGen, lo que le da
    una manera fácil de controlar interactivamente esa entrada. En este caso, al mover
    el mouse hacia la izquierda y hacia la derecha cambiamos la frecuencia del oscilador. Escucharás el
    frecuencia "de un modo escalonado" porque no cambiamos suavemente el valor, simplemente lo configuramos
    cada fotograma de refresco de la pantalla gráfica
    Para obtener más información sobre Minim y características adicionales,
    visita http://code.compartmental.net/minim/
*/

// importa las librerias necesarias para hacer sonido.
import ddf.minim.*;
import ddf.minim.ugens.*;

// crea todas las variables que se necesitarán ser accedidas en
// los métodos (setup(), draw(), stop()).
Minim minim;
AudioOutput out;
Constant freqControl;

void setup()
{
 // inicializa la ventana de dibujo
  size(512, 200, P2D);
  
  // inicializa los objetos minim y out
  minim = new Minim(this);
  out = minim.getLineOut(Minim.MONO, 2048);
    
   // hacer nuestro Oscil, que simplemente parchearemos en la salida
   // los argumentos son frecuencia, amplitud y forma de onda
  Oscil osc = new Oscil( 220.f, 0.5f, Waves.SINE );
  
   // hacer un UGen constante que comience con el mismo valor
   // que usamos para la frecuencia de osc. sin embargo,
   // vamos a cambiar este valor a lo largo del tiempo
   // usando mouseX.
  freqControl = new Constant(220.f);
  
 // parchealo directamente a la frecuencia del Oscil
  freqControl.patch( osc.frequency );
  
// y conecta el oscil a la salida
  osc.patch(out);
  
}

// draw se ejecuta de manera permanente
void draw()
{
 // establece el valor de nuestro UGen constante basado en la posición del mouse
  float freq = map(mouseX, 0, width, 220.f, 880.f);
  freqControl.setConstant( freq );
  
  // borrar la ventana en negro
  background( 0 );
 // dibujar usando un trazo blanco
  stroke( 255 );
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
