void setup(){
  size(600,600);
}

void draw(){
for (int i = 0; i < 600; i = i+25) {
    stroke(100);
    strokeWeight(1.7);
    noFill();
    ellipse(300, 300, i, i);
  }
}
