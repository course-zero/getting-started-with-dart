import 'dart:io';

/**
 * We can instruct `continue` and `break` keywords to terminat a specific loop,
 * by providing label of the loop we want continue or break.
 *
 * `LABEL: for( ...` syntax assigns the `LABEL` label to the for loop.
 * To continue, we use `continue LABEL;` and to break, we use `break LABEL;` syntax;
 */
void main() {
  
  // [PARENT] for loop
  PARENT: for( var i = 0; i < 10; i++ ) {
    stdout.write( "Parent iteration $i: " ); // always prints
    
    // [CHILD] for-in loop
    CHILD: for ( var side in [ 'LEFT', 'RIGHT' ] ) {
      if( side == 'LEFT' ) {
        continue CHILD; // skip iteration of the `CHILD` loop when `side` is `LEFT`
      } else if( i >= 6 ) {
        break PARENT; // terminate `PARENT` loop when `i` is greater than or equal to `6`
      } else {
        stdout.write( "SIDE => $side | " );
      }
    }

    print( "" ); // print new line
  }

}
