// Contains the starting, or intial, word (axiom)
String axiom = "Ff-+fF";

// Contain the new word
String word = "";

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

  //slow down the refresh rate
  frameRate(1);

  // Create the string dictionary object
  // "Using the StringDict, class create a new StringDict object named 'rules' "
  rules = new StringDict();

  // Add rules (key-value pairs)
  //          key   value
  rules.set("F", "F-F");
  rules.set("-", "fff");
  rules.set("+", "+F+");
}

// This function runs repeatedly ( unless we stop it with noLoop() )
void draw() {

  //Repaint the background
  background(255, 255, 255); //white

  // Print text to the screen
  // Arguments:
  //   string, x, y
  text("The axiom is: " + axiom, 0, 100);

  //show what frame is being displayed
  text("Current frame is: " + frameCount, 0, 200);

  // check each character - if it matches a rule, replace it
  if (axiom.charAt(frameCount - 1) == 'F') {
    //replace
    word += rules.get("F");
  }
  else {
    //copy the character directly
    word += axiom.charAt(frameCount - 1);
  }
  
    if (axiom.charAt(frameCount - 1) == '-') {
    //replace
    word += rules.get("-");
  }
  else {
    //copy the character directly
    word += axiom.charAt(frameCount - 1);
  }
  
      if (axiom.charAt(frameCount - 1) == '+') {
    //replace
    word += rules.get("+");
  }
  else {
    //copy the character directly
    word += axiom.charAt(frameCount - 1);
  }


  //Take each character from the axiom and copy it to the new word
  // word += axiom.charAt(frameCount - 1);

  // Print the new word
  text("Current word is: " + word, 0, 300);

  //Stop before we go out of bounds, past end of string
  if (frameCount == axiom.length() ) {
    noLoop();
  }
}
