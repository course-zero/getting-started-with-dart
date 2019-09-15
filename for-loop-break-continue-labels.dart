import 'dart:io';

/**
 * We can use `break LABEL` and `continue LABEL` syntax
 * to specify which loop to break or continue.
 */
void main() {

  // simple `break` and `continue`
  PARENT: for( var i = 0; i < 10; i++ ) {
    stdout.write( "Parent iteration $i: " ); // always prints

    CHILD: for ( var side in [ 'LEFT', 'RIGHT' ] ) {
      if( side == 'LEFT' ) {
        continue CHILD; // skip iteration of CHILD for `LEFT`
      } else if( i >= 6 ) {
        break PARENT; // break PARENT loop when `i` is greater than 5
      } else {
        stdout.write( "SIDE => $side | " );
      }
    }

    print( "" ); // print new line
  }

}