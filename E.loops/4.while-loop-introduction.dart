import 'dart:io';

/**
 * Dart supports `while` and `do/while` loops in the same syntax format of the JavaScript.
 * 
 * [while]
 * while (condition) { statements; }
 *
 * [do/while]
 * do{ statements; } while( condition );
 *
 * In case of `while` loops, `condition` is first evaluated and then `statements` are executed.
 * But in case of `do/while` loop, `statements` inside `do` block is first executed and then `condition` is evaluated.
 */
void main() {

  // simple `while` loop
  var i = 0;
  while ( i < 5 ) {
    stdout.write( "$i " );
    i++; // increment i to avoid infinite iteration
  }

  print(""); // print newline

  // simple `do/while` loop
  var j = 10;

  do {
    print('do-while: $j');
  } while( j < 10 );

}
