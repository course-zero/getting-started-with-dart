import 'dart:io'; // import STDIO package

/**
 * Dart supports C style `for` loop
 * and python style `for-in` loop
 */
void main() {

  // C style for loop
  for( int i = 0; i < 5; i++ ) {
    stdout.write( "$i " ); // write without a newline
  }

  print(""); // print newline

  // python style for-in loop to loop over a List
  var fruits = [ "Mango", "Apple", 'Banana' ];
  for( var fruit in fruits ) {
    stdout.write( "$fruit " ); // write without a newline
  }

  print(""); // print newline

}