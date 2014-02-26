// Contains the starting, or intial, word (axiom)
String axiom = "F+F";

// Will contain all the rules that apply for this L-system
StringDict rules; 

// This function runs once.
void setup() {
  
  // Create the canvas
  size(800, 600);
  
  // White background
  background(255, 255, 255);
  
  // Black text
  fill(0, 0, 0);
  
  // Set text size
  textSize(24);
  
  // Print text to the screen
  // Arguments:
  //   string, x, y
  text("The axiom is: " + axiom, 0, 100);
  
}

// This function runs repeatedly ( unless we stop it with noLoop() )
void draw() {
  
}
