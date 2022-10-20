//Global Variables
int appWidth, appHeight;
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
} //End setup
//
void draw() {
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

} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} 
//End mousePressed
//
// End Main Program
