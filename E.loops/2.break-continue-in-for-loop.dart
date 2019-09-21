import 'dart:io';

/**
 * We can skip an interation using `continue` keyword,
 * or terminate the loop using `break` keyword.
 
 * If we have nested loops,
 * `break` and `continue` will only affect the current loop.
 */
void main() {
  
  // [parent]
  for( var i = 0; i < 10; i++ ) {
    stdout.write( "Parent iteration $i: " ); // always prints for each iteration of `parent` loop
    
    // [child]
    for ( var side in [ 'LEFT', 'RIGHT' ] ) {
      if( side == 'LEFT' ) {
        continue; // skip iteration of `child` loop when `side` is `LEFT`
      } else if( i >= 6 ) {
        break; // break `child` loop when `i` is greater than or equal to 6
      } else {
        stdout.write( "SIDE => $side | " );
      }
    }

    print( "" ); // print new line
  }

}
