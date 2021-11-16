//global variables
float buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, yellow=#FFF064, purple=#683789 , white=#FFFFFF

void setup() {
  size (displayWidth, displayHeight);
  //Population
  buttonX = displayWidth*1/4;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*1/2;
  buttonHeight = displayHeight*1/3;
}//End setup()

void draw() {
  background(white);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  if ( mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight ) {
    buttonColour = yellow;
  } else {
    buttonColour = purple;
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, ButtonHeight);
  fill(reset);}
}//End draw()

void mousePressed() {
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+ButtonHeight) exit();
}//End mousePressed()

void keyPressed() {
}//End keyPressed()
