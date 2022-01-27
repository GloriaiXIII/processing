void setup(){
   size(200,200); 
}

void draw(){
   background(0);
   fill(255);
   beginShape();
   vertex(20,180); //inf izq
   vertex(20,20); //sup izq
   vertex(180,20); //sup der
   vertex(180,180); //inf der
   vertex(100,100); //central
   endShape();
}
