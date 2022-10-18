//Global Variable
int appWidth, appHeight;
//
//Declare Display Geometry; square, landscape, portrait
size(300, 600); //fullScreen()
appWidth= width;
appHeight= height;
println("\t\t\twidth="+width, "\tHeight="+height); //key variables
println("Display Monitor:", "\twidth="+displayWidth,"&hieght"+displayHeight);
//
//Fit CANVAS into Display Monitor
if (width > displayWidth) appWidth = 0; ; // CANVAS-width will not fit
if ( height > displayHeight ) appHeight = 0; ; // CANVAS-height will not fit
if ( appWidth != 0 && appHeight != 0) print("Display Geometry is Good to Go.");
if ( appWidth == 0 || appHeight == 0 ) println("STOP ITS BROKEN");
String ls="Landscape or Square", p= "Portrait", DO="Display Orientation", instruct="Bru, turn your phone";
String orientation = (width > height) ? ls : p;
println (DO, orientation);
//
