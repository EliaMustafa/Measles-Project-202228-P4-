//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, FaceRadius, xCenter, smallerDimension;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
float xMeasle, yMeasle, measleDiameter;
float xLeftEarTip, yLeftEarTip, xLeftEarBase, yleftEarBase, xLeftEarOtherBase, yLeftEarOtherBase;
float xRightEarTip, yRightEarTip, xRighttEarBase, yRightEarBase, xRightEarOtherBase, yRightEarOtherBase;
color resetWhite=#FFFFFF, red=#FF0000, blue=#000000, resetDefaultInk=#FFFFFF;//blue2596be
color backgroundColor;
Boolean nightMode=false;
String title = "Sir cat is sick. Click to make him feel better";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
int titlesize;
//
void setup()
{
  //CANVAS will will be added to later
  size(800, 600); //Landscape
  //
  //Population
  xCenter = width/2;
  float yCenter = height/2;
  xFace = xCenter;
  yFace = yCenter;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLeftEye = xCenter - smallerDimension*1/4;
  yLeftEye = yCenter - smallerDimension*1/8;
  xRightEye = xCenter + smallerDimension*1/4;
  yRightEye = yCenter - smallerDimension*1/8;
  eyeDiameter = smallerDimension*1/8;
  xNoseBridge = xCenter;
  yNoseBridge = yCenter - smallerDimension*1/16;
  xLeftNostril = xCenter - smallerDimension*1/10;
  yLeftNostril = yCenter + smallerDimension*1/10;
  xRightNostril = xCenter + smallerDimension*1/10;
  yRightNostril = yCenter + smallerDimension*1/10;
  xLeftMouth = xLeftEye;
  yLeftMouth = yCenter + smallerDimension*1/4;
  xRightMouth = xRightEye;
  yRightMouth = yLeftMouth;
  FaceRadius = smallerDimension/2;
  xLeftEarTip = xCenter - width*4/10;
  yLeftEarTip = 0;
  xLeftEarBase = xCenter - width*7/20;
  yleftEarBase = yCenter - height*3/20;
  xLeftEarOtherBase = xCenter - width*1/10;
  yLeftEarOtherBase = 20;
  xRightEarTip = xCenter + width*4/10;
  yRightEarTip = 0;
  xRighttEarBase = xCenter + width*7/20;
  yRightEarBase = yCenter - height*3/20;
  xRightEarOtherBase = xCenter + width*1/10;
  yRightEarOtherBase = 20;
  titleX = width*1/5;
  titleY = height*9/10;
  titleWidth = width*3/5;
  titleHeight = height*1/10;
  //
  backgroundColor = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
  background( backgroundColor );
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
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
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  triangle(xLeftEarTip, yLeftEarTip, xLeftEarBase, yleftEarBase, xLeftEarOtherBase, yLeftEarOtherBase);
  triangle(xRightEarTip, yRightEarTip, xRighttEarBase, yRightEarBase, xRightEarOtherBase, yRightEarOtherBase);
  //
  fill(blue);
 textAlign(CENTER, CENTER);
 //Values: [ LEFT, CENTER, RIGHT ] & [ TOP, CENTER, BOTTOM, BASELINE]
 titlesize = 20;
 textFont(titleFont, titlesize);
 text(title, titleX, titleY, titleWidth, titleHeight);
 fill(resetDefaultInk);
  //
  xMeasle = random(xCenter-FaceRadius, xCenter+FaceRadius);
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
  if ( mouseButton == LEFT ) { //Night Mode FALSE
    backgroundColor = color( random(255), random(255), random(255) ) ; 
    background( backgroundColor );
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }//End Left Mouse Button
  //
  if ( mouseButton == RIGHT ) { //Night Mode TRUE
    backgroundColor = color( random(255), random(255), 0 );
    background( backgroundColor );
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  }//End Right Mouse Button
  //
  //Note: Mouse WHEEL is also available
  //if ( mouseButton == WHEEL ) {}//End Mouse WHEEL
  //
  /* For any button
   if ( nightMode == false ) { //NightMode Switch
   nightMode = true;
   } else {
   nightMode = false;
   } //End nightMode switch
   //
   backgroundColour = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
   background( backgroundColour );
   ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
   */
  //
}//End mousePressed
//
//End MAIN Program
