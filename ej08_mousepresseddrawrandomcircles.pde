boolean mousePressed; //declaración variable
float radio; 

void setup(){
  size(400,400);
  stroke(1);
  background(100);
}

void draw(){
}

//definición función
void dibujaCirculo(){
  fill(255,0,0);
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY,radio,radio);
  radio = random(0,100); // Diámetro de la elipse
}

//
void mousePressed(){
  if (mouseButton == LEFT){
    dibujaCirculo();}
}
    
