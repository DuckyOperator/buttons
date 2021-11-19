//global variables
float buttonX, buttonY, buttonWidth, buttonHeight;
int titleX, titleY, titleWidth, titleHeight;
String title = "what do you call a bear with no teeth? a gummy bear";
PFont titleFont;
color purple=#792379, white=#FFFFFF;
color buttonColour, blue=#0F146F, red=#8B1919, reset=white;

void setup() {
  fullScreen ();
  //Population
  buttonX = displayWidth*1/4;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*1/2;
  buttonHeight = displayHeight*1/3;
  titleX = displayWidth*1/4;
  titleY = displayHeight*1/3;
  titleWidth = displayWidth*1/2;
  titleHeight = displayHeight*1/3;
}//End setup()

void draw() {
  background(white);
  //printin(mouseX, mouseY);
    titleFont = createFont ("Bahnschrift", 69);
    rect(titleX, titleY, titleWidth, titleHeight);
    fill(purple);
    textAlign(CENTER, CENTER);
    textFont(titleFont, 33);
    fill(white);
      if ( mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight ) {
    buttonColour = red;
  } else {
    buttonColour = blue;
    fill(buttonColour);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    fill(reset);
    text(title, titleX, titleY, titleWidth, titleHeight);
  }
}//End draw()

void mousePressed() {
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight) exit();
}//End mousePressed()

void keyPressed() {
}//End keyPressed()
