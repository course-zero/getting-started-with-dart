import 'dart:io';

/**
 * Keywords `break` and `continue` affects only current loop.
 */
void main() {

  // simple `break` and `continue`
  for( var i = 0; i < 10; i++ ) {
    stdout.write( "Parent iteration $i: " ); // always prints

    for ( var side in [ 'LEFT', 'RIGHT' ] ) {
      if( side == 'LEFT' ) {
        continue; // skip iteration of `for-in` for `LEFT`
      } else if( i >= 6 ) {
        break; // break `for-in` loop when `i` is greater than 5
      } else {
        stdout.write( "SIDE => $side | " );
      }
    }

    print( "" ); // print new line
  }

}