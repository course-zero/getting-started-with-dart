import 'dart:io';

/**
 * Dart supports `break` and `continue` keywords to affect only
 * current loop. However, we can use labels with them just like
 * in `for` loops to affect labelled loops.
 */
void main() {

  var i = 0, j = 0; // multiple variable declaration

  while( i < 10 ) {
    stdout.write("PARENT i: $i | ");
    
    while( j < 5 ) {
      if( (i % 2 != 0) || (j == 2) ) {
        j++; // incremenrt `j` to avoid infinite loop
        continue; // skip PARENT loop when `i` is odd or `j` is 2
      } else if( j == 4 ) {
        break; // break CHILD loop when `j` is `4`
      } else {
        stdout.write("j:$j, ");
      }

      j++; // incremenrt `j`
    }

    j=0; // set j back to 0
    i++; // incremenrt i
    print( "" ); // print newline
  }

}