import 'dart:io';

/**
 * Dart supports while and do-while loops.
 */
void main() {

  // while loop
  var i = 0;
  while ( i < 5 ) {
    stdout.write( "$i " );
    i++; // increment i to avoid infinite iteration
  }

  print(""); // print newline

  // do-while loop
  var j = 10;

  do {
    print('do-while: $j');
  } while( j < 10 );

}