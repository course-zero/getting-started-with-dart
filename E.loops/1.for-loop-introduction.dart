import 'dart:io'; // import `stdout` object

/**
 * Dart supports C style for loop as well as python style for-in loops.
 *
 * [type 1]
 * for( init_statements, compare_statement, increment_statements ) { ... }
 *
 * [type 2]
 * for( var variable in iterator ) { ... }
 */
void main() {

  // C style for loop
  for( int i = 0; i < 5; i++ ) {
    stdout.write( "$i " ); // write without a newline
  }

  print(""); // print newline

  // python style for-in loop to loop over a list or an iterator
  var fruits = [ "Mango", "Apple", 'Banana' ];
  for( var fruit in fruits ) {
    stdout.write( "$fruit " ); // write without a newline
  }

  print(""); // print newline

}
