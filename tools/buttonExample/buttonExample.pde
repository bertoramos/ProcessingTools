
Button b;

void setup() {
  size(200,150);
  
  b = new Button( 50,50, // x0,y0
                  80,40, // width, height
                  255, 255, 255, // background color
                  "Button", // label
                  20, // Font size
                  0, 0, 0 // Text color
                );
  b.paint();
}

void mousePressed() { // Mouse listener
  if(b.isPressed(mouseX,mouseY)) { // Button listener
    // Button action
    background(random(0,255),random(0,255),random(0,255)); // Random background color
    b.paint();
  }
}

void draw() {
  // It's necessary to mousePressed execution
}
