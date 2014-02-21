// Key to use for Caesar shift
int shift = 0;   

// This runs once
void setup() {

  // Create canvas
  size(800, 600);

  // No automatic looping / drawing
  noLoop();
}

// This runs forever (normally) but in this sketch runs
// whenever redraw() is called
void draw() {
}

// This responds to key presses
void keyPressed() {

  // Ciphertext to be examined
  String cipherText = "YbWmW`cdYX]U ";
  println("cipherText is: " + cipherText);

  // When the right arrow key is pressed, increment the shift and display
  // decryption based on this key.
  if (key == CODED) {
    if (keyCode == RIGHT) {
      shift += 1;
      println("Shifting left through alphabet by: " + shift); 
      println("New text: ");
      println(decrypt(cipherText, shift));
    }

    if (keyCode == LEFT) {
      shift -= 1;
      println("Shifting left through alphabet by: " + shift); 
      println("New text: ");
      println(decrypt(cipherText, shift));
    }
  }
}

// decrypt
//
// Purpose: Uses a Caesar shift to attempt to decrypt the given phrase
//
// Parameters:    scrambled    String containing the ciphertext / scrambled text
//                shiftBy      How much to shift the value of each character by
//
// Returns:       The possibly unscrambled text
String decrypt(String scrambled, int shiftBy) {

  String unscrambled = "";

  // Create new string that may contain unscrambled text
  for (int i = 0; i < scrambled.length(); i++) {

    // Build the string (with shifted characters)
    unscrambled += char(int(scrambled.charAt(i) - shiftBy));
  }

  return unscrambled;
}
