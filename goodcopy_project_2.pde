int x;
boolean Flashing = false; 
int flashTime = 0;  
 void setup() {
  size(600, 600);
  x = 500;
  strokeWeight(5);
}

void draw(){
  background(113,70,7);
  noStroke();
  fill(14,232,0);
  ellipse(x, 200, 15, 15);
    x = x - 5;
   if (x < 50) {
  x = 500;
}
  
  

  float dx = x - 50; 
  float dy = 200 - 200; 
  float distance = sqrt(dx * dx + dy * dy);
  if (distance < 15 / 2 + 20 / 2) {
    Flashing = true;  
    flashTime = millis();  
  }
  
  if (Flashing && millis() - flashTime > 500) {
    Flashing = false;  
  }
  fill(0,0,0);
  triangle(100,500, 150, 400, 100, 500);
  rect(100, 500, 30, 30);
  stroke(180, 177, 177);
  fill(183, 183, 183);
  triangle(450, 200, 480, 200, 480, 240);
  
  stroke(0);
  strokeWeight(30);
  line(500, 200, 500, 300);
  strokeWeight(40);
  line(500, 200, 300, 200);
  strokeWeight(2);
  fill(350);
  ellipse(50, 200, 90, 90);
  ellipse(50, 200, 50, 50);
  if (Flashing) {
    fill(0,0,0); 
  } else {
    fill(252, 0, 8);  
  }
  ellipse(50, 200, 20, 20);
}
