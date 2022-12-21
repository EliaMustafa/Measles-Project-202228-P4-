//Global Variables

float xLeftEye, yLeftEye, xRightEye, RightEyey, eyeDiameter;
float NoseBridgeX, NoseBridgeY, LeftNostrilX, yLeftNostril, xRightNostril, yRightNostril;
float FaceX, yFace, FacewidthDiameter, heightDiameterFace, FaceRadius, CenterX, smallerDimension;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
String title = "GOAT ELIA";
Boolean nightMode=false;
float xLeftEarTip, yLeftEarTip, xLeftEarBase, yleftEarBase, xLeftEarOtherBase, yLeftEarOtherBase;
float xRightEarTip, yRightEarTip, xRighttEarBase, yRightEarBase, xRightEarOtherBase, RightEarOtherBasey;
color resetWhite=#FFFFFF, red=#FF0000, blue=#000000, resetDefaultInk=#FFFFFF;//blue2596be
color backgroundColor;
float xMeasle, yMeasle, measleDiameter;
PFont titleFont;
int titlesize;
float titleX, titleY, titleWidth, titleHeight;
//
void setup()
{
  //CANVAS will will be added to later
  size(800, 600); //Landscape
  //
  //Population
  CenterX = width/2;
  float yCenter = height/2;
  FaceX = CenterX;
  yFace = yCenter;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  xRighttEarBase = CenterX + width*7/20;
  yRightEarBase = yCenter - height*3/20;
  xRightEarOtherBase = CenterX + width*1/10;
  RightEarOtherBasey = 20;
  titleX = width*1/5;
  titleY = height*9/10;
  titleWidth = width*3/5;
  titleHeight = height*1/10;
  yLeftNostril = yCenter + smallerDimension*1/10;
  xRightNostril = CenterX + smallerDimension*1/10;
  yRightNostril = yCenter + smallerDimension*1/10;
  xLeftMouth = xLeftEye;
  yLeftMouth = yCenter + smallerDimension*1/4;
  xRightMouth = xRightEye;
  yRightMouth = yLeftMouth;
  FaceRadius = smallerDimension/2;
  xLeftEarTip = CenterX - width*4/10;
    FacewidthDiameter = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLeftEye = CenterX - smallerDimension*1/4;
  yLeftEye = yCenter - smallerDimension*1/8;
  xRightEye = CenterX + smallerDimension*1/4;
  RightEyey = yCenter - smallerDimension*1/8;
  eyeDiameter = smallerDimension*1/8;
  NoseBridgeX = CenterX;
  NoseBridgeY = yCenter - smallerDimension*1/16;
  LeftNostrilX = CenterX - smallerDimension*1/10;
  yLeftEarTip = 0;
  xLeftEarBase = CenterX - width*7/20;
  yleftEarBase = yCenter - height*3/20;
  xLeftEarOtherBase = CenterX - width*1/10;
  yLeftEarOtherBase = 20;
  xRightEarTip = CenterX + width*4/10;
  yRightEarTip = 0;
  //
  backgroundColor = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
  background( backgroundColor );
  ellipse(FaceX, yFace, FacewidthDiameter, heightDiameterFace);
  //
  titleFont = createFont("SansSerif.plain", 55); //Verify the font exists in Processing.JAVA
 //
 rect(titleX, titleY, titleWidth, titleHeight);
  //
}//End setup
//
void draw()
{
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse(xRightEye, RightEyey, eyeDiameter, eyeDiameter);
   triangle(xLeftEarTip, yLeftEarTip, xLeftEarBase, yleftEarBase, xLeftEarOtherBase, yLeftEarOtherBase);
  triangle(xRightEarTip, yRightEarTip, xRighttEarBase, yRightEarBase, xRightEarOtherBase, RightEarOtherBasey);
  triangle(NoseBridgeX, NoseBridgeY, LeftNostrilX, yLeftNostril, xRightNostril, yRightNostril);
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  //
  fill(blue);
 textAlign(CENTER, CENTER);
  textFont(titleFont, titlesize);
 text(title, titleX, titleY, titleWidth, titleHeight);
 fill(resetDefaultInk);
 //Values: [ LEFT, CENTER, RIGHT ] & [ TOP, CENTER, BOTTOM, BASELINE]
 titlesize = 20;
  //
  xMeasle = random(CenterX-FaceRadius, CenterX+FaceRadius);
  yMeasle = random(smallerDimension);
  fill(red);
  noStroke();
  measleDiameter = random(smallerDimension*1/75, smallerDimension*1/25);//smallerDimension*1/50;
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1); //reset default
  fill(resetWhite);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
    //Technically, there are 4 ways to code a mouse button press
  //
   if ( mouseButton == RIGHT ) { //Night Mode TRUE
    backgroundColor = color( random(255), random(255), 0 );
    background( backgroundColor );
    ellipse(FaceX, yFace, FacewidthDiameter, heightDiameterFace);
  }
  if ( mouseButton == LEFT ) { //Night Mode FALSE
    backgroundColor = color( random(255), random(255), random(255) ) ; 
    background( backgroundColor );
    ellipse(FaceX, yFace, FacewidthDiameter, heightDiameterFace);
  }//End Left Mouse Button
  //
}//End mousePressed
//
//End MAIN Program
