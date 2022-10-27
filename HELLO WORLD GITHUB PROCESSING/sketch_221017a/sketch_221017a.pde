//Global Variables
int appWidth, appHeight;
float centerWidth, centerHeight, xStart, yStart, widthRect, heightRect;
color black=#000000, white=#FFFFFF, purple=#FA00F6, yellow=#F8FC64;
color yellowNightMode=#F8FC00, purpleNightMode=#FA0096;
float thick, thin;
//
void setup() {
  //Declare Display Geometry: square, landscape, portrait
  size(700, 400); //Use size for debugging
  //fullScreen(); //Use fullScreen for easy deployment
  appWidth = width;
  appHeight = height;
  //
  //Concatenation
  println("\t\t\tWidth="+width, "\tHeight="+height); //key variables
  println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
  //
  //Ternary Operator
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  //String orientation = ( appWidth >= appHeight ) ? ls : p;
  //println (DO, orientation);
  if ( appWidth < appHeight ) { //Declare Landscape Mode
    println(instruct);
  } else {
    //Fit CANVAS into Display Monitor
    if ( appWidth > displayWidth ) appWidth = 0; //CANVAS-width will not fit
    if ( appHeight > displayHeight ) appHeight = 0; //CANVAS-height will not fit
    if ( appWidth != 0 && appHeight != 0 ) {
      print("Display Geoemtry is Good to Go.");
    } else {
      println("STOP, is broken");
    }
  }
  //
  //If ORIENTATION is wrong ... feedback to change it
  //if ( orientation==p ) println(instruct);
  //
  //Population
  centerWidth = appWidth * 1/2;
  centerHeight = appHeight * 1/2;
  xStart = centerWidth - ( appWidth * 1/4 ) ;
  yStart = centerHeight - ( appHeight * 1/4 ) ;;
  widthRect = appWidth * 1/2;
  heightRect = appHeight * 1/2;
  thick = appWidth * 1/70;
  thin =  appWidth * 1/140;
} //End setup
//
void draw() {
  background(225); //Gray Scale 0-255
  //random(a, b)
  background( color( random(0, 255), random(255), random(255) ) ); //color(r,g,b), Casting 
  //Night Mode
  background(black);
  //
  strokeWeight(thick); //noStroke()
  stroke(yellow);//yellowNightMode
  fill(purple);//purpleNightmode
  rect(xStart, yStart, widthRect, heightRect);
  fill(white);// Reset default
  stroke(black);//Reset default
  strokeWeight(1);//Reset default
  //
    fill(255,255,0);
 ellipse(100, 100, 150, 150);
 fill(255);
 ellipse(75, 85, 30, 20);
ellipse(125, 85, 30, 20);
 fill(0);
ellipse(75, 85, 10, 10);
ellipse(125, 85, 10, 10);
fill(255, 0, 0);
arc(100, 125, 80, 50, 0, 3.14);
line(60, 125, 140, 125);
fill(0);
rect(100, 200,10, 20, 28);
rect(200, 200,10, 20, 28);

} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End Main Program
