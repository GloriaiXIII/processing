// variables internas de tiempo

int d = day();    // Dia 1 - 31
int m = month();  // Mes 1 - 12
int y = year();   // Año
size(200,300);// Tamaño Pantalla
background(0); // Fondo negro de antalla
textSize(32); // Tamaño del texto
fill(255,0,0); // Color del texto
String s = String.valueOf(d); // S recoje el dia
text("Dia "+s, 10, 50);//Imprime el dia
s = String.valueOf(m); // S recoge el mes
text("Mes "+s, 10, 100); //Imprime el mes
s = String.valueOf(y); // S recoge el año
text("Año "+s, 10, 150); // Imprime el año
