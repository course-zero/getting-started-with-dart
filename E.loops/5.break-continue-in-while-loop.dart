import 'dart:io';

/**
 * Like `for` loops, we can also use `break` and `continue` keywords in `while` and `do/while` loops.
 * Similar to for loops, they only affect the current loop but
 * they can be used with labels to terminate a specific loop.
 */
void main() {

  var i = 0, j = 0; // multiple variables declaration
  
  // [parent] loop
  while( i < 10 ) {
    stdout.write("PARENT i: $i | ");
    
    // [child] loop
    while( j < 5 ) {
      if( (i % 2 != 0) || (j == 2) ) {
        
        j++; // incremenrt `j` to avoid infinite loop
        continue; // skip `child` loop when `i` is odd or `j` is 2
        
      } else if( j == 4 ) {
        
        break; // break `child` loop when `j` is `4`
        
      } else {
        
        stdout.write("j:$j, ");
        
      }

      j++; // incremenrt `j`
    }

    j=0; // set `j` back to `0`
    i++; // increment `i`
    print( "" ); // print a newline
  }

}
