void setup(){
  size(300, 300);
}

void draw(){
  background(0);
  noStroke();
  smooth();
  
  int radius = 100;
  for (int deg = 0; deg < 360; deg += 30) {
    float angle = radians(deg);
    float x = 150 + (cos(angle) * radius);
    float y = 150 + (sin(angle) * radius);
  
  fill(255,0,0);
  ellipse(x, y, 16, 16);
  
 
  }
   noLoop();
  
}
