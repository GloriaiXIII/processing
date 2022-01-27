/* RECORRER SONIDO
  * Presione 'f' para omitir en 1000 milisegundos. <br />
  * Presione 'r' para omitir en -1000 milisegundos.
*/

import ddf.minim.*;

Minim minim;
AudioPlayer navegar;

void setup()
{
  size(512, 200, P3D);

  minim = new Minim(this);
  navegar = minim.loadFile("navegar1.mp3", 2048);
  navegar.loop(); // Se ejecuta continuamente el fichero de audio
}

void draw()
{
  background(0);
  
  stroke(255);
  
  for(int i = 0; i < navegar.bufferSize() - 1; i++)
  {
    // Se representa el sonido sobre dos lineas rectas horizontales
    line(i, 50  + navegar.left.get(i)*50,  i+1, 50  + navegar.left.get(i+1)*50);
    line(i, 150 + navegar.right.get(i)*50, i+1, 150 + navegar.right.get(i+1)*50);
  }
  
  float posx = map(navegar.position(), 0, navegar.length(), 0, width);
  stroke(0,200,0);
  line(posx, 0, posx, height);
  stroke(255);
  text("Presione f para saltar hacia adelante y r para saltar hacia atrás", 10, 20);
}

void keyPressed()
{
  if ( key == 'f' )
  {
   // saltar adelante 1 segundo (1000 milisegundos)
    navegar.skip(1000);
  }
  if ( key == 'r' )
  {
    // saltar hacia atrás 1 segundo (1000 milisegundos)
    navegar.skip(-1000);
  }
}