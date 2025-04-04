int x;
boolean isFlashing = false; // Flag to track if the red dot should flash
int flashTime = 0;  // Timer for flashing effect

void setup() {
  size(600, 600);
  x = 500;
  strokeWeight(5);
}

void draw(){
  background(255);
  
  // Draw black ellipse (moving)
  noStroke();
  fill(0, 0, 0);
  ellipse(x, 200, 15, 15);
  
  // Move black ellipse
  x = x - 5;
  
  // Reset position of black ellipse when it goes off screen
  if (x < 50) {
    x = 500;
  }
  
  // Check if the black ellipse touches the red dot
  float dx = x - 50; // Horizontal distance between black ellipse and red dot
  float dy = 200 - 200; // Vertical distance (both are at y=200)
  float distance = sqrt(dx * dx + dy * dy);
  
  // If the distance between the centers is less than the sum of the radii, they are touching
  if (distance < 15 / 2 + 20 / 2) {
    isFlashing = true;  // Set flashing state to true
    flashTime = millis();  // Start timing the flash
  }
  
  // Flash effect: Toggle color every 500 milliseconds
  if (isFlashing && millis() - flashTime > 500) {
    isFlashing = false;  // Stop flashing after 500 milliseconds
  }
  
  // Draw the triangle and lines
  stroke(180, 177, 177);
  fill(183, 183, 183);
  triangle(450, 200, 480, 200, 480, 240);
  
  stroke(0);
  strokeWeight(30);
  line(500, 200, 500, 300);
  strokeWeight(40);
  line(500, 200, 300, 200);
  
  // Draw circles (sun)
  strokeWeight(2);
  fill(350);
  ellipse(50, 200, 90, 90);
  ellipse(50, 200, 50, 50);
  
  // Flash red dot when touched
  if (isFlashing) {
    fill(0,0,0); 
  } else {
    fill(252, 0, 8);  // Normal red color
  }
  
  // Draw the red dot
  ellipse(50, 200, 20, 20);
}
