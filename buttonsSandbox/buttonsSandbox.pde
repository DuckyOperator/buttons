//global variables
float buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, blue=#0F146F, red=#8B1919, white=#FFFFFF, reset=white;

void setup() {
  fullScreen ();
  //Population
  buttonX = displayWidth*1/4;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*1/2;
  buttonHeight = displayHeight*1/3;
}//End setup()

void draw() {
  background(white);
  //printin(mouseX, mouseY);
  if ( mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight ) {
    buttonColour = red;
  } else {
    buttonColour = blue;
    fill(buttonColour);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    fill(reset);
  }
}//End draw()

void mousePressed() {
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight) exit();
}//End mousePressed()

void keyPressed() {
}//End keyPressed()
