int x;
int y;
boolean Flashing = false;
int flashTime = 0;
void setup() {
  size(600, 600);
  x = 500;
  y = 120;
  strokeWeight(5);
}

void draw() {
  background(113, 70, 7);
  noStroke();
  fill(14, 232, 0);
  ellipse(x, 200, 15, 15);
  fill(183, 183, 183);
  triangle(450, 200, 480, 200, 480, 240);

  
  x = x - 5;
  if (x < 50) {
    x = 500;
  }
  
  
  fill(0, 0, 0);
  triangle(y, 530, y+50, 520, y, 499);
  y = y + 3;
  if (y > 800) {
 y = 0;
  }
  rect(y, 500, 30, 30);
  fill(255, 255, 255);
  ellipse(y+30, 510, 10, 10);
  stroke(30);
  line(y, 520, y-25, 520);
  stroke(180, 177, 177);
  

  
  


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
  //fill(0, 0, 0);
  //triangle(120, 530, 150, 520, 120, 499);
  //rect(100, 500, 30, 30);
  //fill(255, 255, 255);
  //ellipse(130, 510, 10, 10);
  //stroke(30);
  //line(100, 520, 75, 520);
  //stroke(180, 177, 177);
  //fill(183, 183, 183);
  //triangle(450, 200, 480, 200, 480, 240);

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
    fill(0, 0, 0);
  } else {
    fill(252, 0, 8);
  }
  ellipse(50, 200, 20, 20);
}
