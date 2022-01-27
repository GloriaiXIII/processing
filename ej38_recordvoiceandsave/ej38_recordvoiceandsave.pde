/**
   * Este sketch demuestra cómo usar un AudioRecorder para grabar audio en el disco
   * e inmediatamente reprodúzcalo creando un nuevo FilePlayer usando 
   * AudioRecordingStream devuelto por el método AudioOut.
   * <p>
   * Para utilizar este sketch, debe tener conectado el microfono de su PC.
   * Presione 'r' para activar y desactivar la grabación y presione 's' para guardar en el disco. <br/>
   * El archivo grabado se colocará en la carpeta principal del boceto.
   * <p>
   * Para obtener más información sobre la librería Minim y características adicionales, 
   * visite http://code.compartmental.net/minim/
   */

import ddf.minim.*;
import ddf.minim.ugens.*;

Minim minim;

// para grabar sonido
AudioInput in;
AudioRecorder recorder;
boolean recorded;

// para reproducir
AudioOutput out;
FilePlayer player;

void setup()
{
  size(512, 200, P3D);

  minim = new Minim(this);
  
   // obtener una línea de entrada estéreo: longitud del buffer de muestra de 2048
   // la frecuencia de muestreo predeterminada es 44100, la profundidad de bits predeterminada es 16
  in = minim.getLineIn(Minim.STEREO, 2048);
  
   // crea un AudioRecorder que grabará desde adentro al nombre de archivo especificado.
   // el archivo se ubicará en la carpeta principal del boceto.
  recorder = minim.createRecorder(in, "myrecording.wav");
  
  // obtener una salida en la que podemos reproducir la grabación
  out = minim.getLineOut( Minim.STEREO );
  
  textFont(createFont("Arial", 12));
}

void draw()
{
  background(0); 
  stroke(255);
   // dibujar las formas de onda
   // los valores devueltos por left.get () y right.get () estarán entre -1 y 1,
   // entonces tenemos que escalarlos para ver la forma de onda
  for(int i = 0; i < in.left.size()-1; i++)
  {
    line(i, 50 + in.left.get(i)*50, i+1, 50 + in.left.get(i+1)*50);
    line(i, 150 + in.right.get(i)*50, i+1, 150 + in.right.get(i+1)*50);
  }
  
  if ( recorder.isRecording() )
  {
    text("Ahora grabará, presione la tecla r para detener la grabación.", 5, 15);
  }
  else if ( !recorded )
  {
    text("Presione la tecla r para comenzar a grabar.", 5, 15);
  }
  else
  {
    text("Presione la tecla s para guardar la grabación en el disco y reproducirla en el boceto.", 5, 15);
  }
}

void keyReleased()
{
  if ( !recorded && key == 'r' ) 
  {
    // para indicar que desea iniciar o detener la captura de datos de audio,
     // debe invocar startArtording () y stopRecording () en el objeto AudioRecorder.
     // Puedes iniciar y parar tantas veces como quieras, los datos de audio
     // se adjunta al final del final del archivo.
    if ( recorder.isRecording() ) 
    {
      recorder.endRecord();
      recorded = true;
    }
    else 
    {
      recorder.beginRecord();
    }
  }
  if ( recorded && key == 's' )
  {
     // hemos llenado el buffer de archivo,
     // ahora escríbelo en un archivo del tipo que especificamos en la configuración
     // en el caso de grabación en búfer,
     // esto parecerá congelar el boceto por algún tiempo, si el buffer es grande
     // en el caso de la grabación transmitida,
     // no se congelará ya que los datos ya están en el archivo y todo lo que se está haciendo
     // está cerrando el archivo.
     // save devuelve el audio grabado en un AudioRecordingStream,
     // que luego podemos jugar con un FilePlayer
    if ( player != null )
    {
        player.unpatch( out );
        player.close();
    }
    player = new FilePlayer( recorder.save() );
    player.patch( out );
    player.play();
  }
}