  float angulo = 0; 

void setup(){
  size(200,200,P3D);
}

void draw(){
  background(0);
  frameRate(200);
  
  fill(255);
  translate(width/2, height/2);
  rotateY(angulo);
  rectMode(CENTER);
  rect(0,0,100,100);
  
  angulo = angulo + radians(0.02) ; //incremento
} 
